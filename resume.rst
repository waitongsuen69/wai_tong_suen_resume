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

Contributing to confidential projects involving virtual platform modeling and system-level simulation for next-generation SoCs. Focused on SystemC/C++ model development, infrastructure modernization, and multi-architecture integration, delivering production-ready simulation components under strict NDA guidelines.

Accomplishments:

- Designed and integrated SystemC-based IP and interconnect models for complex SoC platforms across automotive and embedded domains.
- Enhanced simulation infrastructure by upgrading internal modeling frameworks and improving compatibility with modern compiler and verification environments.
- Led multi-core synchronization and code cleanup efforts to improve performance consistency, determinism, and maintainability.
- Automated build, validation, and deployment workflows within CI/CD environments to ensure consistent multi-platform releases.
- Migrated and standardized legacy modeling repositories to new version-control and dependency-management systems.
- Authored technical documentation and architecture diagrams for internal model reference and knowledge transfer.
- Collaborated cross-functionally with hardware modeling, verification, and EDA tool teams to enhance simulation fidelity and modeling reuse.
- Operated under strict NDA constraints, ensuring all deliverables adhered to Cadence's IP protection and data confidentiality standards.


AKC Code Next
--------------

**Full-Stack Engineer (Freelance)** *(July 2025 – Present)*

Led end-to-end development of a usage-limits & subscription control platform, owning backend APIs, data modeling, and the admin front-end. Built reliable request validation and guardrails for numeric/edge cases, simplified complex group/plan policies into clear, testable logic, and aligned the API–UI contract to accelerate team delivery. Drove collaboration hygiene (ticket scoping, branch strategy, PR flow) to reduce merge conflicts and make changes safer to ship. Operated across design, implementation, testing, and deployment readiness with pragmatic documentation for teammates.

Accomplishments:

- Designed and shipped REST APIs in Go (Gin): Built endpoints for subscription groups, usage-limit rules, and user-group access with consistent request/response schemas and error semantics.
- Hardened validation & safety: Implemented strict JSON binding and custom validators; added guardrails for numeric overflows (e.g., int64 boundaries) and type mismatches to cut malformed-request failures.
- Modeled data for clarity & performance: Structured MySQL schemas for subscriptions/limits/user groups; tuned indexes/queries for predictable latency and easy reasoning.
- Encoded business policies cleanly: Implemented windowed counters, enforcement paths, and safe defaults with edge-case handling (limits, groups, and exceptions).
- Built the admin front-end (SPA): Implemented forms, lists, filtering, pagination, and client-side validation; integrated with new APIs and stabilized the API-UI contract.

Australian Semiconductor Technology Company
-------------------------------------------

**Graduate Software Engineer** *(Mar 2023 – Jun 2025)*

Contributed to the design, integration, and validation of virtual hardware models within a proprietary SystemC-based simulation platform. Worked across multiple SoC architectures to ensure accurate functional behavior, register-level fidelity, and compatibility with evolving internal toolchains.

Accomplishments:

- Integrated and verified over one hundred reusable IP and subsystem models (communication, memory, security, and timing modules) within the company's virtual platform environment.
- Developed register-accurate behavioral models and implemented functional enhancements improving simulation stability and performance.
- Migrated legacy model repositories to a modern Git-based infrastructure, standardizing dependency management and build configuration.
- Upgraded internal models to align with the latest register-framework standards, including code-coverage validation and regression testing.
- Implemented numerous enhancement and maintenance tasks addressing model correctness, coverage gaps, and backward-compatibility issues.
- Supported cross-platform toolchain integration for Linux and Windows builds, resolving compiler and environment inconsistencies.
- Collaborated with senior modeling engineers to refactor deprecated APIs, improve framework reusability, and document modeling conventions.
- Contributed to internal documentation and process automation, accelerating integration turnaround for new IP deliverables.

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

----

EDUCATION
=========

**University of Adelaide, Bachelor of Computer Science** *(2020 – 2023)*

GPA 5.5

----

LANGUAGE
========

.. list-table::
   :widths: 33 33 34
   :header-rows: 0
   :class: borderless

   * - **English**

       Proficient
     - **Mandarin**

       Native
     - **Cantonese**

       Native proficiency
 
  
----

REFERENCES
==========

.. list-table::
   :widths: 50 50
   :header-rows: 0
   :class: borderless

   * - **Matthew Davey**

       Software Engineer Director / Cadence

       **Email:** Available on Request

     - **Akide Liu**

       Founder / AKC Code Next

       **Email:** Available on Request


