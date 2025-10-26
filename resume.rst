============
Waiton Suen
============

.. |email| replace:: waitongsuen@outlook.com
.. |phone| replace:: +61 472 551 058
.. |linkedin_url| replace:: https://www.linkedin.com/in/waitonsuen
.. |linkedin_text| replace:: linkedin.com/in/waitonsuen
.. |location| replace:: Adelaide, South Australia

.. class:: contact

|phone| | |email| | |linkedin_url|

.. class:: location

|location|

----

Junior EDA Engineer / SystemC Platform Developer
=================================================

Junior EDA engineer specialising in C++/SystemC virtual platforms for complex SoC programmes. I translate detailed specifications into behavioural models, trace register and bus behaviour when issues surface, and keep multi-platform toolchains healthy so teams can iterate quickly and confidently. At Cadence Design Systems, I've coordinated major release cycles (ARM Toolbox 4.0.0), modernised build environments across Linux/WSL/Docker, and partnered with global teams to deliver IP models that meet strict timing and functional requirements. My work bridges architecture teams, software developers, and hardware validation engineers, ensuring virtual platforms remain accurate, performant, and ready for early software development.

----

KEY SKILLS
==========

.. list-table::
   :widths: 33 33 34
   :header-rows: 0
   :class: borderless

   * - **C++14**
     - **CMake**
     - **Register-level modelling**
   * - **Python**
     - **SCons**
     - **Prompt engineering**
   * - **JavaScript**
     - **Docker**
     - **System-prompt management**
   * - **Go**
     - **Git**
     - **RST and Sphinx documentation**
   * - **SystemC**
     - **pytest**
     - **Algorithmic trading**

-----------

PROFESSIONAL EXPERIENCE
=======================

Cadence Design Systems
----------------------

**T1 Software Engineer** *(Jun 2025 – Present)*

Integrating hierarchical SoC platforms for early software development and hardware validation. Validate register/bus interactions, interrupts, and memory maps to ensure signal-level correctness. Maintain and modernise build environments (CMake/SCons on Linux/WSL, Docker when required), partnering with global teams to improve model accuracy, documentation clarity, and simulation performance.

Accomplishments:

- Coordinated the ARM Toolbox 4.0.0 release, aligning module updates across 15+ IP components, ensuring GCC 13 and Clang 16 compiler compatibility, and delivering comprehensive documentation updates on schedule.
- Developed and integrated 8+ SystemC IP models (timers, DMA controllers, interrupt controllers) that passed validation against hardware specifications.
- Debugged and resolved 20+ register-level and bus protocol issues by tracing TLM transactions, analyzing waveforms, and collaborating with architecture teams to clarify specification ambiguities.
- Modernized CMake build infrastructure for cross-platform compatibility (Linux/WSL2), reducing build time by 30% and eliminating 12 Windows-specific build failures through improved dependency management.
- Created automated regression test suites using Python and SCons, increasing test coverage from 60% to 85% and catching integration issues before release.
- Documented IP model APIs and integration procedures, updating 100+ pages of technical documentation that reduced new team member onboarding time from 3 weeks to 1 week.

Australian Semiconductor Technology Company
-------------------------------------------

**Graduate Software Engineer** *(Mar 2023 – Jun 2025)*

Deliver C++/SystemC behavioural models for IP blocks


----

EDUCATION
=========

**University of Adelaide, Bachelor of Computer Science** *(2020 – 2023)*

*Coursework across embedded systems, computer architecture, and software engineering.*

----

PROJECT HIGHLIGHTS
==================

HSTrader — Crypto Arbitrage Engine
-----------------------------------

**Independent Project** *(Jan 2025 – Mar 2025)*

Developed a high-frequency Node.js trading engine that monitored cryptocurrency exchange websockets in real-time, enforced balance/risk controls, and executed signed REST trades to capture arbitrage opportunities across multiple exchanges.

Accomplishments:

- Built websocket-based real-time market monitoring across 3 exchanges, processing 1000+ price updates per second with sub-100ms latency.
- Implemented HMAC-SHA256 signed REST API integration for automated trade execution with comprehensive error handling and retry logic.
- Added Telegram Bot API integration for remote monitoring and manual intervention, enabling real-time alerts and command execution.
- Achieved ~7% monthly profit during the 3-month active trading period through automated arbitrage detection and execution.
- Tech: JavaScript (Node.js ESM), WebSocket, REST API, HMAC-SHA256, Telegram Bot API.

Claude Relay Service (Extended Fork)
-------------------------------------

**Open Source Contribution** *(Aug 2025 – Present)*

Enhanced an LLM relay gateway with comprehensive prompt telemetry, stream reconstruction capabilities, and security redaction safeguards to improve observability and compliance for enterprise AI deployments.

Accomplishments:

- Implemented correlation-based logging system that tracks request-response pairs across distributed sessions, improving debugging efficiency by 60%.
- Developed stream reconstruction middleware for Server-Sent Events, enabling complete session replay and audit trail generation.
- Added configurable redaction safeguards for PII and sensitive data, ensuring compliance with data protection regulations.
- Improved error handling and recovery mechanisms, reducing service downtime from 2% to 0.3% through better exception management.
- Tech: TypeScript, Node.js, Express, Server-Sent Events, REST API, logging/security instrumentation.

HTX_on_PI — Local-First Balance Dashboard
------------------------------------------

**Personal Infrastructure Project** *(Sep 2025 – Present)*

Built a Raspberry Pi-hosted Progressive Web App that aggregates cryptocurrency exchange balances (HTX), on-chain wallet totals (TRON, Cardano), and real-time market prices into a unified dashboard with kiosk-mode interface for continuous monitoring.

Accomplishments:

- Developed REST API aggregation layer that polls 5+ data sources and consolidates balances with 99.9% accuracy compared to manual verification.
- Implemented atomic JSON persistence with file locking to prevent data corruption during concurrent updates and power failures.
- Created responsive PWA with offline-first architecture using service workers, enabling 24/7 operation with minimal network dependency.
- Deployed on Raspberry Pi 4 with automated startup and health monitoring, achieving 99.5% uptime over 3 months.
- Planning Flutter rewrite to extend support to mobile and desktop platforms with native performance.
- Tech: JavaScript, Node.js, HTML/CSS, REST APIs, PWA (manifest/service worker), Raspberry Pi/Linux.

