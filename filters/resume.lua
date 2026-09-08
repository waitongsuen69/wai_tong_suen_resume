local function has_class(element, class_name)
  for _, class in ipairs(element.classes) do
    if class == class_name then
      return true
    end
  end
  return false
end

local function text_inlines(value)
  return pandoc.Inlines({ pandoc.Str(value or "") })
end

local function latex_text(value)
  local document = pandoc.Pandoc({ pandoc.Plain(text_inlines(value)) })
  return pandoc.write(document, "latex"):gsub("%s+$", "")
end

local function html_entry_header(element)
  local organization = element.attributes.organization or ""
  local dates = element.attributes.dates or ""
  local role = element.attributes.role or ""
  local details = element.attributes.details or ""

  local primary_row = pandoc.Div({
    pandoc.Para({ pandoc.Strong(text_inlines(organization)) }),
    pandoc.Para({ pandoc.Strong(text_inlines(dates)) }),
  }, pandoc.Attr("", { "entry-row", "entry-primary" }))

  local secondary_row = pandoc.Div({
    pandoc.Para({ pandoc.Emph(text_inlines(role)) }),
    pandoc.Para(text_inlines(details)),
  }, pandoc.Attr("", { "entry-row", "entry-secondary" }))

  return pandoc.Div({ primary_row, secondary_row }, pandoc.Attr("", { "entry-header" }))
end

local function latex_entry_header(element)
  local organization = latex_text(element.attributes.organization or "")
  local dates = latex_text(element.attributes.dates or "")
  local role = latex_text(element.attributes.role or "")
  local details = latex_text(element.attributes.details or "")

  local table_source = table.concat({
    "\\begin{tabular*}{\\textwidth}{@{}l@{\\extracolsep{\\fill}}r@{}}",
    "\\textbf{" .. organization .. "} & \\textbf{" .. dates .. "} \\\\",
    "\\textit{" .. role .. "} & " .. details .. " \\\\",
    "\\end{tabular*}\\par\\smallskip",
  }, "\n")

  return pandoc.RawBlock("latex", table_source)
end

function Div(element)
  if has_class(element, "page-break") then
    if FORMAT:match("latex") then
      return pandoc.RawBlock("latex", "\\newpage")
    end
    return {}
  end

  if not has_class(element, "resume-entry") then
    return nil
  end

  if FORMAT:match("latex") then
    local blocks = { latex_entry_header(element) }
    for _, block in ipairs(element.content) do
      table.insert(blocks, block)
    end
    table.insert(blocks, pandoc.RawBlock("latex", "\\vspace{0.75em}"))
    return blocks
  end

  if FORMAT:match("html") then
    local blocks = { html_entry_header(element) }
    for _, block in ipairs(element.content) do
      table.insert(blocks, block)
    end
    return pandoc.Div(blocks, pandoc.Attr("", { "resume-entry" }))
  end

  return element
end
