---
version: alpha
name: Context Web
description: Design system for the authenticated Context web application, including its shell, dense Timeline instrument, tables, forms, and responsive behavior.
colors:
  primary: "#56D6B7"
  secondary: "#7B61FF"
  secondary-readable: "#9C88FF"
  canvas: "#000000"
  surface: "#16161D"
  surface-raised: "#222227"
  divider: "#38383A"
  divider-strong: "#333333"
  on-surface: "#FFFFFF"
  on-surface-muted: "#8A8A8E"
  info: "#007AFF"
  success: "#34C759"
  error: "#FF3B30"
  warning: "#FFCC00"
  calorie-active: "#B5D656"
  calorie-basal: "#AF52DE"
  calorie-consumed: "#FF2D55"
typography:
  body:
    fontFamily: Rubik
    fontSize: 16px
    fontWeight: 400
    lineHeight: 1.5
  body-compact:
    fontFamily: Rubik
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1.4
  label:
    fontFamily: Rubik
    fontSize: 12px
    fontWeight: 500
    lineHeight: 1.25
  title:
    fontFamily: Rubik
    fontSize: 18px
    fontWeight: 600
    lineHeight: 1.25
  title-lg:
    fontFamily: Rubik
    fontSize: 24px
    fontWeight: 600
    lineHeight: 1.2
spacing:
  hairline: 0.5px
  xxs: 2px
  xs: 4px
  sm: 6px
  md: 8px
  lg: 12px
  xl: 16px
  2xl: 24px
  3xl: 32px
  4xl: 40px
  5xl: 48px
  breakpoint-sm: 640px
  breakpoint-md: 768px
  breakpoint-lg: 1024px
  breakpoint-xl: 1280px
  rail-width: 72px
  home-max-width: 1280px
  timeline-min-width: 860px
  timeline-info-width: 192px
  timeline-trend-width: 160px
rounded:
  control: 8px
  card: 8px
  card-lg: 12px
  framework-box: 16px
  full: 9999px
components:
  card:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.on-surface}"
    rounded: "{rounded.card}"
    padding: "{spacing.xl}"
  button-normal:
    backgroundColor: "transparent"
    textColor: "{colors.primary}"
    rounded: "{rounded.control}"
    padding: 8px 12px
  button-selected:
    backgroundColor: "{colors.secondary}"
    textColor: "{colors.on-surface}"
    rounded: "{rounded.control}"
    padding: 8px 12px
  button-destructive:
    backgroundColor: "{colors.error}"
    textColor: "{colors.on-surface}"
    rounded: "{rounded.control}"
    padding: 8px 12px
  input:
    backgroundColor: "{colors.surface-raised}"
    textColor: "{colors.on-surface}"
    rounded: "{rounded.control}"
    padding: 8px 12px
  table-row:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.on-surface}"
    height: 44px
  timeline-row:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.on-surface}"
    width: "{spacing.timeline-min-width}"
---
# Context Web

## Overview

Context Web is a forced-dark analytical application with a sparse shell and an unusually dense Timeline instrument. It should feel like a personal observatory: calm, exact, inspectable, and more interested in real data than decorative dashboard conventions.

Home is comparatively spacious and brand-forward. Timeline, tables, and forms increase density while preserving the same black/charcoal surfaces, compact Rubik type, mint normal action/current data, violet selection, and restrained depth.

`authz-interface` and `pool-dashboard-web` are special-purpose exception families. Their tokens and newer framework stacks do not redefine core Portal canon.

## Colors

- **Mint (`#56D6B7`):** Normal action, link, current-period data, brand mark, and inactive navigation.
- **Violet (`#7B61FF`):** Selected navigation, checked controls, tags, paired emphasis, and gradient endpoint. Use `#9C88FF` selectively when dark-field readability requires it.
- **Canvas (`#000000`):** Page field.
- **Panel (`#16161D`):** Cards, tables, navigation, and modals.
- **Raised (`#222227`):** Hover and nested/secondary surfaces.
- **White/gray (`#FFFFFF`, `#8A8A8E`):** Primary text and metadata/axes/inactive state.
- **Dividers (`#38383A`, `#333333`):** Navigation and stronger panel/table boundaries.
- **Blue (`#007AFF`):** Previous period, reference, and information.
- **Green/red/yellow:** Success, error/destructive, and warning.

Use mint→violet gradients for the wordmark, selected subscription/action, and bounded brand emphasis. Do not wash ordinary panels in gradients.

Chart palettes are contextual. Net calories use lime, purple, and magenta; sleep uses a Viridis-derived stage palette. Current period normally uses mint and previous period blue, but this is not a universal mapping for every domain.

## Typography

Use Rubik. The application loads normal and italic weights 300–900; routine product work should concentrate on regular, medium, and semibold.

- **12px label:** Metadata, axes, compact labels, and dense table/chart support.
- **14px compact body/control:** Most controls, rows, and supporting copy.
- **16px body:** General content and forms.
- **18px title:** Feature and section titles.
- **20–24px strong title:** Page/feature emphasis used selectively.

Global button type is normal weight rather than DaisyUI's default bold treatment. Preserve this restraint. Use explicit units and date ranges near values.

Use tabular numerals for aligned time-series values, table columns, and compact metric comparisons. Reserve true monospace for code, identifiers, or technical values; do not use it as decorative texture.

## Layout

Use a fixed 72px icon rail and top bar at 640px and above. Below 640px, replace the rail with a compact top bar and labeled full-height drawer.

Use the 4px spacing basis with 2/4/6/8/12/16/24/32/40/48px values. Use 0.5px dividers for established hairline relationships.

- Home may occupy a 1280px maximum container and stack summary/history modules into full-width narrow cards.
- Timeline summary cards become a carousel on narrow screens.
- Dataset/date/mode controls stack when narrow.
- The detailed Timeline preserves an 860px minimum analytical canvas with horizontal scrolling.
- A Timeline row reserves 192px for label/info and approximately 160px for trend/delta controls.
- Metric selection is a two-column centered workspace on wide screens and a bottom-anchored single-column sheet below 640px.
- Tables may scroll, but selection, pagination, and named overflow actions must remain reachable.

Preserving analytical alignment is more important than making every chart fit within 390px. Provide a discoverable scroll affordance and nonvisual alternative.

## Elevation & Depth

Use tonal layers and borders before shadow: `#000000 → #16161D → #222227`, with `#333333/#38383A` boundaries and hairline row separators. Ordinary cards, tables, and navigation are intentionally flat.

Use backdrop dimming/blur for dialogs, subscription surfaces, and tooltips. DaisyUI and third-party structures may remain visible under Fulcra overrides, but framework defaults are not design tokens.

Name semantic layers such as base, sticky navigation, dropdown, backdrop, and dialog. Do not turn isolated extreme z-index values into a token scale.

The custom 15px scrollbar is an existing desktop integration detail, not a general component-size rule.

## Shapes

- **8px:** Dominant control and card radius.
- **12px:** Contextual cards and larger sections.
- **16px:** DaisyUI box radius where framework structure remains visible.
- **Full radius:** Pills, badges, circular icon/ellipsis triggers.
- **0.5px:** Default hairline divider.
- **3px rule:** Active desktop rail indicator.
- **Hexagon:** Profile/avatar and brand geometry only.

Rounded rectangles are the workhorse. Use circles for compact actions and chart points. Do not hexagonize ordinary panels.

## Components

### Shell and navigation

The wide shell uses a 72px icon rail, centered route noun, gradient Context mark, and hex profile trigger. Inactive navigation is mint; active is violet with a 3px right rule. The narrow drawer adds labels while preserving the same state colors. Supply named icon actions, visible focus, Escape close, and focus return.

### Buttons, links, tabs, and chips

Use compact 8px-rounded controls. Mint is the default outline/text/link color, violet is selected/checked, and red is destructive. Disabled actions must visibly communicate prerequisites, as in zero-selected Share Data. Selection must include label/check/state beyond color.

### Cards and Home

Cards use `#16161D` on black, 8px dominant radius, sparse shadow, and stable label/value/chart regions. Home combines a spacious brand intro with dense recent/source/history/all-time modules and equal feature tiles. Loading keeps the panel geometry and uses restrained mint rings.

### Timeline

The control band uses mint-outlined dataset/date/trend actions and violet Day/Week selection. Rows use label/info, aligned chart, and trend/delta zones. Current lines are mint at 1.75px with points; previous lines are blue at 1px and 0.75 opacity without points; averages use `4,4` dashes. Axes use 11px gray labels and dashed gray gridlines. Shared hover aligns a cursor and tooltips across rows.

Pointer hover cannot be the only inspection method. Provide keyboard/touch selection, a concise accessible summary, and a data-table or equivalent detail path.

### Tables and forms

Tables use compact headers/rows, low-contrast rules, mint links/labels, violet tags, named row selection, pagination, and circular overflow actions. Inputs use dark raised surfaces, persistent labels, mint focus/action, violet checked state, muted help, and red error. Associate error/help text programmatically.

### Dialogs and drawers

Use either a compact centered dialog or a large centered workspace. Below 640px, use a bottom sheet when it preserves actions and reading order. Always specify initial focus, containment, Escape/backdrop rules, and return focus.

### Loading and state system

Use mint ring spinners inside stable panels. Provide distinct empty, permission-error, generic retry, toast, disabled, selected/indeterminate, destructive-confirmation, subscription, and offline states. Loading motion must have a reduced-motion treatment.

### Icons and third-party surfaces

Use Font Awesome SVG 6.6.0 with Pro Solid as the dominant product weight and Pro Thin for selected feature/empty/upload roles. Icons inherit semantic color. Every icon-only control requires a name.

Tabulator, FilePond, Tagify, date pickers, Leaflet, Swiper, and Driver retain library structure under Fulcra theming. Specify Fulcra surfaces, type, states, focus, and accessibility; do not canonize library DOM or layer hacks.

## Do's and Don'ts

- Do keep the shell sparse and route titles short.
- Do use mint for normal action/current data and violet for selection.
- Do preserve the Timeline's aligned analytical canvas when reflow would destroy meaning.
- Do structure density with stable zones, dividers, labels, and exact units.
- Do load progressively inside stable geometry.
- Do make destructive actions red and confirmation-driven.
- Do specify keyboard, focus, dialog, chart, table, and icon semantics with the visuals.
- Don't turn the app into a soft-shadow card grid or gradient every panel.
- Don't copy extreme z-index values, unused tokens, malformed declarations, or no-op classes into canon.
- Don't collapse Timeline just to fit a phone.
- Don't rely on pointer hover as the only chart interaction.
- Don't suppress browser zoom in the future design contract.
- Don't merge special-purpose Auth0 or pool-dashboard styling into core Portal.
