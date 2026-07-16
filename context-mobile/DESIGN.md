---
version: alpha
name: Context Mobile
description: Design system for the Context iOS application and its native personal-data, recording, and analytical experiences.
colors:
  primary: "#57D6B8"
  primary-storyboard: "#56D6B7"
  secondary: "#7A61FF"
  secondary-storyboard: "#7B61FF"
  canvas: "#000000"
  surface: "#17171C"
  surface-nested: "#212126"
  on-surface: "#FFFFFF"
  on-surface-muted: "#8A8A8F"
  info: "#007AFF"
  warning: "#FFCC00"
  category-pink: "#D6579C"
  category-orange: "#FF9400"
  sleep-awake: "#FDE725"
  sleep-light: "#31688E"
  sleep-rem: "#35B779"
  sleep-deep: "#73417F"
spacing:
  hairline: 0.5px
  xxs: 2px
  xs: 4px
  sm: 6px
  md: 8px
  lg: 12px
  xl: 16px
  2xl: 24px
  3xl: 36px
rounded:
  control: 8px
  card: 12px
  selection: 20px
  accent: 24px
  full: 9999px
components:
  card:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.on-surface}"
    rounded: "{rounded.card}"
    padding: "{spacing.lg}"
  gradient-card:
    backgroundColor: "linear-gradient(to bottom right, rgba(87,214,184,0.18), rgba(122,97,255,0.18))"
    textColor: "{colors.on-surface}"
    rounded: "{rounded.card}"
    padding: "{spacing.xl}"
  pill:
    backgroundColor: "{colors.secondary}"
    textColor: "{colors.on-surface}"
    rounded: "{rounded.control}"
    padding: 4px 6px
  segmented-selected:
    backgroundColor: "linear-gradient(to bottom right, rgba(87,214,184,0.18), rgba(122,97,255,0.18))"
    textColor: "{colors.on-surface}"
    rounded: "{rounded.selection}"
    size: 20px
  tab-inactive:
    textColor: "{colors.primary-storyboard}"
    size: 24px
  tab-active:
    textColor: "{colors.secondary-storyboard}"
    size: 24px
  divider:
    backgroundColor: "{colors.on-surface-muted}"
    height: "{spacing.hairline}"
---
# Context Mobile

## Overview

Context Mobile is a forced-dark, native iOS personal-data instrument. It should feel calm, precise, intimate, and technically dense: an editorial Focus surface leads into stacked analytical Timeline cards, structured recording flows, notifications, and sheet-based settings/detail views.

Black safe areas, charcoal panels, compact system type, mint normal action, violet selection, and contextual chart colors unify five icon-only tabs. Groups shares the shell but its custom dashboard composition is special-purpose and must not redefine the general app system.

The YAML geometry uses `px` because the DESIGN.md alpha schema does not accept `pt`. In iOS implementation, treat one serialized design-coordinate pixel as one iOS point; Dynamic Type remains OS-managed rather than fixed to these dimensions.

## Colors

The app uses a forced-dark presentation.

- **Canvas (`#000000`):** Safe areas and the page field.
- **Surface (`#17171C` approximate):** Primary app/tab/card background from `darkBackground`.
- **Nested surface (`#212126` approximate):** A raised or inset dark surface from `fulcraBlack`.
- **Mint (`#57D6B8` approximate):** Normal action, current/positive data, status, and inactive tab tint. The storyboard uses exact `#56D6B7`; preserve the discrepancy until deliberately normalized.
- **Violet (`#7A61FF` approximate):** Active navigation, selected controls, time anchors, outcomes, and the brand-gradient endpoint. The storyboard uses exact `#7B61FF`.
- **White and gray (`#FFFFFF`, approximately `#8A8A8F`):** Primary meaning and supporting metadata/axes/inactive state.
- **Contextual hues:** Blue, pink, orange, yellow, green, red, Viridis-derived colors, and domain palettes are legitimate when their meaning is labeled.

Sleep uses a categorical palette: awake yellow, light/core blue, REM green, deep violet, in-bed mint, and unknown secondary gray. Do not collapse this or other charts to a universal mint/violet mapping.

Use the mint→violet gradient for identity, selected context, or transformation. Render it from top-leading to bottom-trailing.

## Typography

Use San Francisco through SwiftUI/UIKit semantic roles: `largeTitle`, `title`, `title2`, `title3`, `headline`, `subheadline`, `body`, `callout`, `footnote`, `caption`, and `caption2`. Do not register a custom brand font.

Use monospaced digits for aligned metrics and time. Keep units, intervals, timestamps, and explanatory labels subordinate to their values. Large gradient statements belong to editorial Focus sections, not ordinary navigation or settings.

Dynamic Type is normative. Do not freeze the semantic styles into fixed pixel sizes. Components must reflow at enlarged and accessibility content sizes without hiding actions, values, or chart explanations.

## Layout

Respect the status bar, Dynamic Island, home indicator, keyboard, sheet, and bottom-tab safe areas.

- Use 4/8 points for dense internal relationships, 12/16 for card internals, and 24 for major section separation.
- Keep the five-tab bottom shell for top-level destinations. Icon-only tabs require reliable accessible names and selected-state announcements.
- Stack Timeline metrics as independent cards with stable label, value, chart, and common-date zones.
- Preserve no-data Timeline tracks as structural dotted baselines rather than collapsing the time system.
- Use near-full-height sheets for deep detail/settings and compact native popovers for range selection.
- Keep Record's heatmap, categories, search, configured cards, and actions in an explicit vertical order.

Portrait phone layout is established. Small/large iPhone, landscape, iPad, keyboard, and accessibility-size fixtures must preserve the same hierarchy rather than mechanically scaling.

## Elevation & Depth

Create hierarchy through black-to-charcoal tonal steps, restrained borders, and native sheet/material behavior. Ordinary cards should remain quiet and should not acquire heavy generic shadows.

The reusable pill/search shadow is black at 24% opacity, radius 8 points, and y offset 4 points. The gradient card uses the mint→violet wash at 18% opacity. Native materials are reserved for overlays, menus, and transitional layers.

Use dimmed backdrops and sheet separation for modal hierarchy. A tooling failure to dismiss a sheet through iPhone Mirroring is not a visual or touch-interaction rule.

## Shapes

- **8-point radius:** compact controls, pills, and fields.
- **12-point radius:** default cards.
- **20-point radius:** selected segmented-control state.
- **24-point radius:** gradient-outline and accent geometry, not ordinary cards.
- **Full radius:** circular actions, category controls, badges, and chart marks.
- **Hexagon:** logo, profile/avatar, or owned-context accent only.
- **0.5-point hairline:** compact separators.

Rounded rectangles are the workhorse. Do not turn every card or diagram node into a hexagon.

## Components

### App shell and tabs

Use five icon-only bottom destinations: Focus, Timeline, Record, Groups, and Notifications. Inactive items are mint; active items are violet with a filled or glow-like treatment. Notification count uses a red numeric badge. Supply accessible names, selected state, and badge count.

### Cards, pills, and selections

Default cards use 12 points of padding and radius on `darkBackground`. Pills use 6 horizontal/4 vertical padding with 8-point radius. Segmented controls use 6-point gaps, 20-point icons, a hairline divider, 20-point selected radius, translucent gradient/violet selection, and haptic feedback where implemented.

### Focus

Compose the sleep summary from donut, stage durations, interval, total, efficiency, and review controls. Progressive loading must preserve geometry and dim or dash unresolved values; do not introduce an unrelated shimmer skeleton. Insight relationships use mint condition → arrow → violet outcome. Factors label red “less” and mint “more” explicitly.

### Timeline and sleep

Each metric card contains label/icon, mint summary, chart, and shared date ruler. No-data uses a dotted baseline; pending data uses a small centered ring. Sleep detail is a near-full-height sheet with inset summary metrics, redundant donut/bars/durations/percentages, aligned stage and heart-rate tracks, and a clear recording action.

### Record

Configured cards contain title, explanatory copy, identity/reminder metadata, status, and tags. The heatmap and category palette require noncolor summaries. Search and circular actions remain separate from the card content. Destructive wording such as “Clear recent history” must receive a destructive role and confirmation even though current production shows a mint symbol.

### Notifications and settings

Notifications use Unread/All selection, time-group headings, insight cards, and an announced red count badge. Settings uses grouped charcoal rows, small uppercase section labels, trailing mint actions/values, status pills, native switches, and system links. Documentation imagery must redact sensitive identifiers.

### State and accessibility contract

Specify loading, empty, retry, success, offline, disabled, validation, permission, and destructive states. Preserve geometry during pending work. Honor Reduce Motion. Every custom control and chart needs an accessible name, value, state, reading order, and concise chart summary.

### Icons

Use SF Symbols plus approved bundled assets. There is no runtime Font Awesome dependency. Keep icon weight coherent within a component and never rely on an icon without an accessible label when it performs an action.

## Do's and Don'ts

- Do preserve the forced-dark tonal hierarchy and native iOS safe-area/presentation behavior.
- Do use mint for ordinary action/current value and violet for active selection/interpretation.
- Do keep data exact, labeled, aligned, and redundant beyond color.
- Do preserve card geometry during progressive loading.
- Do treat Groups dashboard visuals as a scoped exception.
- Do verify Dynamic Type, VoiceOver, chart summaries, and Reduce Motion for every custom family.
- Don't introduce a custom font merely to match the web product.
- Don't reduce every data palette to mint and violet.
- Don't use color as the only state or relationship cue.
- Don't add heavy SaaS-card shadows or make every container a hexagon.
- Don't canonize misleading gradient-helper parameters.
- Don't use the loading treatment as a substitute for distinct empty, error, retry, or offline states.
