# Sources for Context Web DESIGN.md

This document explains how I made the determinations in the adjacent `DESIGN.md`. It follows the same section order so that provenance can be maintained without turning the design specification into a research report.

## Overview

I determined the character of Context Web by inspecting the authenticated production application on July 14, 2026, at both wide desktop and 390-pixel narrow layouts. The W01–W24 ledger covers pre-authentication, Home, Timeline, record and annotation flows, sharing, library tables, settings, modals, narrow navigation, loading, and representative interaction states. The captures and route notes are in `fulcra-aesthetic-phase-3.1-web-capture.md`, `fulcra-aesthetic-capture-matrix.md`, and `screenshots/web-app/`.

I used `fulcradynamics/portal` at commit `7a997bc64d6ae64bafa4933fa068eeae4ec751bf` to identify the persistent shell, route tree, responsive rules, tokens, and component families behind the rendered application. The exact currently deployed commit remains unverified, so the live app established present composition while source established exact declarations.

I kept `authz-interface` and `pool-dashboard-web` outside the core system because the user identified them as special-purpose designs for the Auth0 popup and pool dashboards. Their newer Svelte, Tailwind, DaisyUI, and Font Awesome stacks are therefore documented as exception families rather than treated as Portal-wide decisions.

## Colors

I determined the exact base values from `tmp/source-checkouts/portal/tailwind.config.cjs`: `#16161D`, `#222227`, `#38383A`, `#333333`, `#8A8A8E`, `#56D6B7`, `#7B61FF`, `#9C88FF`, `#007AFF`, `#34C759`, `#FF3B30`, and `#FFCC00`. I then counted usage and generated the relevant utilities in the isolated Tailwind harness documented by `tmp/token-extracts/web/phase-0.3-tailwind-and-fontawesome.md`.

I determined semantic roles by matching those source uses to the live routes. Mint appears on ordinary actions, links, current-period data, and inactive navigation. Violet appears on selected navigation, checked controls, tags, and bounded paired emphasis. Blue appears on previous-period and informational treatments. Black and the three charcoal values carry the canvas, panels, raised states, and borders.

I determined the chart exceptions from the D3 and LayerCake components. Net calories use lime, purple, and magenta; sleep uses a Viridis-derived stage palette; current-versus-previous comparison normally uses mint and blue. This is why the specification rejects a universal two-color chart rule.

I excluded unused declarations and the malformed `fulcra-teal-10` value after a source-usage scan found no production role. The user's correction PR fixes the literal but does not by itself establish a semantic use, so the value does not appear in the final DESIGN.md.

## Typography

I determined the family and available weights from the Google Fonts request in `src/app.html`, which loads Rubik roman and italic from 300 through 900, and from the global Rubik assignment in `src/app.css`.

I determined the role sizes by scanning Tailwind classes and checking representative rendered components. Twelve and fourteen pixels dominate labels, axes, controls, tables, and support text. Sixteen pixels carries general body and form content. Eighteen through twenty-four pixels carries feature and page titles. Thirty pixels occurs rarely and did not justify a routine application-title token.

I determined the restrained weight rule from the global DaisyUI button override and local component usage: ordinary buttons are not generically bold, while selected headings and settings labels add medium or semibold emphasis deliberately.

The inspected code contains a no-op `monospaced` class and no reliable tabular-number utility. The final specification therefore makes aligned numerals a deliberate rule rather than falsely describing the existing class as functional. It reserves true monospace for technical content.

## Layout

I determined the 72-pixel desktop rail and the 640-pixel shell switch from `src/routes/(app)/+layout.svelte`, `src/components/side-nav-bar.svelte`, and the live narrow drawer. The Tailwind configuration established the 640, 768, 1024, and 1280-pixel breakpoint baseline.

I determined the spacing scale from the Tailwind basis and repeated utility usage. The half-pixel divider was confirmed in generated CSS and live component relationships. The 1280-pixel Home container, 860-pixel minimum Timeline instrument, 192-pixel label region, and roughly 160-pixel trend region came from route and component source, then were checked against the wide and narrow production layouts.

The narrow captures established that Home stacks, Timeline summaries become a carousel, controls recompose, and large metric selection becomes a bottom sheet. They also established that the detailed Timeline scrolls horizontally instead of collapsing its aligned time structure. Tablet and orientation behavior remain less completely observed than the desktop and 390-pixel cases.

## Elevation & Depth

I determined the intentionally flat hierarchy from the rendered application, `src/app.css`, Tailwind usage, and DaisyUI overrides. Ordinary cards, tables, navigation, and controls rely on black-to-charcoal tonal steps and borders instead of generic shadows.

I determined modal and tooltip separation from the live overlays and the backdrop, blur, opacity, and z-index declarations in source. DaisyUI and third-party components contribute structural depth in some places, but I treated those as framework boundaries rather than Fulcra tokens.

I took the scrollbar dimensions and colors directly from `src/app.css`: a 15-pixel track, `#222227` thumb, 14-pixel thumb radius, and 3-pixel black border. I kept it as a desktop integration detail instead of generalizing its radius to cards or controls.

## Shapes

I determined the radius hierarchy by counting utility usage and inspecting component contexts. Eight pixels is the dominant control and card radius, twelve pixels serves contextual cards and sections, sixteen pixels often comes from the DaisyUI box default, and full radius serves pills, badges, circular triggers, and chart marks.

I determined the half-pixel divider from the custom utility, the 3-pixel active rail indicator from `side-nav-link.svelte`, and the hexagonal profile treatment from the production shell. The repeated pattern is rounded rectangles for content and controls, circles for compact icon actions, and the hexagon for identity or profile context.

## Components

I determined the component inventory from the Portal route tree, Svelte component tree, live capture matrix, and `fulcra-aesthetic-component-state-matrix.md`. The rules cover shell navigation, buttons, cards, Timeline controls and rows, charts, tables, forms, dialogs, loading and empty states, icons, and third-party surfaces.

I used source for exact values and live routes for visible composition. The Timeline chart code supplied line widths, point behavior, dash patterns, grid and axis colors, and coordinated hover behavior. The library and sharing routes supplied table and pagination anatomy. The selector and settings routes supplied form, modal, sheet, disabled, and destructive behavior.

I identified Font Awesome SVG 6.6 as the main icon system through imports and render-site counts. Pro Solid is dominant and Pro Thin is secondary. Colors generally follow `currentColor`, so the specification makes icon color semantic rather than assigning a separate palette.

I determined loading behavior from the large Home modules after they resolved in production: stable panel geometry with restrained mint ring spinners. I found additional empty, permission-error, retry, toast, selected, indeterminate, destructive, and subscription implementations in source. Offline and reduced-motion behavior are normative additions because they were not established by the live pass.

## Do's and Don'ts

I wrote the do's and don'ts by converting repeated production behavior into reviewable rules: sparse navigation, short route nouns, mint action, violet selection, horizontal preservation of the dense Timeline, quiet tonal depth, explicit units, and local chart semantics.

I wrote the prohibitions to stop framework debt or isolated implementation details from becoming canon. The evidence did not support washing panels in gradients, replacing the dense Timeline with generic cards, copying extreme z-index literals, calling no-op classes tokens, allowing icon-only controls to remain unnamed, or using the Auth0 and pool-dashboard exception systems as the Portal default.

Keyboard order, focus containment and return, chart summaries, icon-only names, browser zoom, tablet layouts, and controlled edge states remain recorded in `fulcra-aesthetic-findings-summary-gap-backlog.md`. The final DESIGN.md states the desired behavior directly rather than embedding that audit history.

