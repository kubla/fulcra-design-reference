---
version: alpha
name: Fulcra Website
description: Design system for the replacement Fulcra public website, derived from deliberate Context product canon and explicit marketing-specific decisions.
colors:
  primary: "#56D6B7"
  primary-text-light: "#287D69"
  secondary: "#7B61FF"
  secondary-text-light: "#6F52E5"
  secondary-text-dark: "#9C88FF"
  tertiary: "#007AFF"
  tertiary-text-light: "#0066CC"
  tertiary-text-dark: "#0A84FF"
  canvas-dark: "#000000"
  surface-dark: "#16161D"
  surface-dark-raised: "#222227"
  divider-dark: "#38383A"
  on-dark: "#FFFFFF"
  on-dark-muted: "#8A8A8E"
  canvas-light: "#FFFFFF"
  on-light: "#16161D"
  on-light-muted: "#626A78"
  divider-light: "#D9DCE2"
  control-border-light: "#626A78"
  surface-mint-light: "#E6F9F1"
  surface-violet-light: "#E0D8FE"
  surface-blue-light: "#D8EBFE"
  success: "#34C759"
  success-text-light: "#208637"
  error: "#FF3B30"
  error-text-light: "#D70015"
  warning: "#FFCC00"
  warning-text-light: "#765A00"
typography:
  display:
    fontFamily: Rubik
    fontSize: 64px
    fontWeight: 400
    lineHeight: 1.05
    letterSpacing: -0.02em
  heading-1:
    fontFamily: Rubik
    fontSize: 52px
    fontWeight: 500
    lineHeight: 1.08
    letterSpacing: -0.015em
  heading-2:
    fontFamily: Rubik
    fontSize: 38px
    fontWeight: 500
    lineHeight: 1.15
    letterSpacing: -0.01em
  heading-3:
    fontFamily: Rubik
    fontSize: 22px
    fontWeight: 600
    lineHeight: 1.25
  body-lead:
    fontFamily: DM Sans
    fontSize: 20px
    fontWeight: 400
    lineHeight: 1.5
  body:
    fontFamily: DM Sans
    fontSize: 17px
    fontWeight: 400
    lineHeight: 1.6
  label:
    fontFamily: Rubik
    fontSize: 13px
    fontWeight: 600
    lineHeight: 1.25
    letterSpacing: 0.04em
  technical:
    fontFamily: Roboto Mono
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1.5
spacing:
  xs: 4px
  sm: 8px
  md: 12px
  lg: 16px
  xl: 24px
  2xl: 32px
  3xl: 48px
  4xl: 64px
  5xl: 96px
  gutter: 24px
  content-max: 1280px
  prose-max: 720px
  breakpoint-sm: 640px
  breakpoint-md: 768px
  breakpoint-lg: 1024px
  breakpoint-xl: 1280px
rounded:
  control: 8px
  card: 12px
  panel: 16px
  full: 9999px
components:
  button-primary:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-light}"
    typography: "{typography.label}"
    rounded: "{rounded.control}"
    padding: 12px 20px
    height: 44px
  button-secondary:
    backgroundColor: "transparent"
    textColor: "{colors.primary-text-light}"
    typography: "{typography.label}"
    rounded: "{rounded.control}"
    padding: 12px 20px
    height: 44px
  button-selected:
    backgroundColor: "{colors.secondary-text-light}"
    textColor: "{colors.on-dark}"
    typography: "{typography.label}"
    rounded: "{rounded.control}"
    padding: 12px 20px
    height: 44px
  card-light:
    backgroundColor: "{colors.canvas-light}"
    textColor: "{colors.on-light}"
    rounded: "{rounded.card}"
    padding: "{spacing.xl}"
  card-dark:
    backgroundColor: "{colors.surface-dark}"
    textColor: "{colors.on-dark}"
    rounded: "{rounded.card}"
    padding: "{spacing.xl}"
  marketing-panel:
    backgroundColor: "{colors.surface-mint-light}"
    textColor: "{colors.on-light}"
    rounded: "{rounded.panel}"
    padding: "{spacing.2xl}"
  input:
    backgroundColor: "{colors.canvas-light}"
    textColor: "{colors.on-light}"
    typography: "{typography.body}"
    rounded: "{rounded.control}"
    padding: 12px 16px
    height: 44px
  product-frame:
    backgroundColor: "{colors.surface-dark-raised}"
    textColor: "{colors.on-dark}"
    rounded: "{rounded.panel}"
    padding: "{spacing.lg}"
---
# Fulcra Website

## Overview

The replacement Fulcra website is the public, editorial expression of the deliberate Context product system. It should feel precise, calm, concrete, technically credible, and centered on user-owned context.

Use generous light or dark narrative fields around real product imagery, explicit system diagrams, proof, and clear conversion paths. The website is not a reproduction of the dense application, and it is not a restyling of the current Webflow implementation.

The central visual thesis is: many real signals and agents → one owned context layer → permissioned use. Express it through actual UI mechanics, labeled nodes, paths, scopes, timelines, and current product captures rather than generic AI imagery.

## Colors

Use the product's identity and semantic roles with a deliberate light-field adaptation.

- **Mint (`#56D6B7`):** Brand ownership, primary filled action, large marks, rules, and gradient start. On white, use darker `#287D69` for normal-size text and outlines when contrast requires it.
- **Violet (`#7B61FF`):** Selection, emphasis, interpretation, and gradient endpoint. Use it for large/non-text marks on white; use `#6F52E5` for normal text or a filled control behind white text. On dark, use readable `#9C88FF` for normal text.
- **Blue (`#007AFF`):** Information, an explicit third category, or a middle gradient transition—not a replacement identity color. Use `#0066CC` for normal text on white and `#0A84FF` for normal text on dark.
- **Dark fields (`#000000`, `#16161D`, `#222227`):** Product-native narrative sections and real UI framing.
- **Light field (`#FFFFFF`) with ink (`#16161D`):** Long-form editorial pages and deck-like explanation.
- **Secondary light ink (`#626A78`):** Supporting copy on white.
- **Pale mint/violet/blue (`#E6F9F1`, `#E0D8FE`, `#D8EBFE`):** Semantic grouping for context, interpretation/agents, and information/system roles.
- **Green/red/yellow:** Success, error/destructive, and attention. On white, normal text uses `#208637`, `#D70015`, and `#765A00`; product-bright values remain available for fills and sufficiently large/non-text marks. Pair every status with text, icon, line style, or shape.

Use the mint→violet gradient for identity, transformation, selected context, or a bounded relationship. Blue may bridge the endpoints when it has an explicit role. Do not turn pale colors into ambient pastel wallpaper or gradients into generic premium decoration.

All foreground/background, focus, border, icon, and chart pairs must satisfy WCAG AA. `#D9DCE2` is a decorative separator only; interactive boundaries use at least `#626A78` or an equivalent 3:1 treatment. Core pairs are recorded in `contrast-report.md`.

## Typography

Use Rubik for display headings, navigation, buttons, labels, and short product-adjacent copy. Use DM Sans for longer editorial/body copy. Use Roboto Mono only for commands, endpoints, scopes, timestamps, and metric snippets.

The YAML values are desktop anchors. Implement responsive type with bounded fluid sizing so that display resolves around 40–48px and H1 around 36–40px on phones without truncating or forcing one-word lines.

- Keep headlines declarative and relatively short.
- Use modest negative tracking only for large display roles.
- Use modest positive tracking for labels; uppercase only when the label is genuinely categorical.
- Preserve commands, values, units, and scopes exactly.
- Do not use monospace as decorative “technical” texture.
- Do not introduce generic SaaS superlatives in place of concrete product explanation.

## Layout

Use a 4px-derived scale extended for editorial rhythm: 4, 8, 12, 16, 24, 32, 48, 64, and 96px.

- Maximum wide content container: 1280px.
- Long-form prose measure: approximately 720px or 70–75 characters.
- Desktop: 12-column grid with 24px gutters.
- Breakpoints: 640, 768, 1024, and 1280px as the implementation baseline.
- Wide section spacing: approximately 96px; tablet 64px; phone 48–56px.
- Navigation collapses below 640px.
- Two-column story sections normally stack by 768px unless a paired comparison requires otherwise.
- Complex diagrams reduce label/path density instead of merely shrinking.
- Real product captures may crop or scroll inside an honest frame, but must remain legible and explicitly labeled when composited.

Use spacious narrative rhythm around concrete, denser product and diagram modules. Do not imitate Timeline density across an entire page.

## Elevation & Depth

On dark fields, inherit product depth: black canvas, charcoal panels, quiet borders, sparse shadow, and selective blur. On light fields, prefer white/pale semantic fills, whitespace, and `#D9DCE2` borders.

- Ordinary light cards: fill + 1px border, no shadow.
- Product frame: a dark product-native surface inside a neutral or pale outer composition.
- Floating dialog/media: one restrained shadow, such as `0 12px 32px rgba(22,22,29,.12)`, after visual validation.
- Hover: tonal or border change before extra elevation.
- Backdrop: explicit overlay with focus containment and inert background.

Blur or glow indicates active context or one bounded focal event. It is not ambient decoration.

## Shapes

- **8px:** Compact controls and inputs.
- **12px:** Standard cards and product frames.
- **16px:** Spacious marketing panels.
- **Full radius:** Pills, badges, and circular actions.
- **Hexagon/spiral:** Logo, owned-context core, or occasional identity node.
- **Circles:** Agents/endpoints and compact marks.
- **Rounded rectangles:** Information, product, proof, and conversion modules.
- **Dotted path:** Relationship, orbit, or possibility.
- **Solid arrow:** Explicit handoff or direction.

Do not hexagonize every node. Avoid generic enterprise hex grids, glass blobs, neural-web texture, and glowing brains.

## Components

### Header and navigation

Use concise public information architecture, an approved logo variant, one primary CTA, visible current/hover/focus states, and a labeled mobile menu. The menu must support Escape/backdrop close, focus containment while modal, and focus return.

### Hero

Use one declarative thesis, short explanatory copy, one primary and optional secondary CTA, plus a real product view or explicit system diagram. Avoid decorative dashboard collages.

### Buttons and links

Provide filled, outline, and text hierarchy with complete hover, focus, pressed, disabled, and loading states. Targets are at least 44px high. Identify external links. On light fields, use contrast-safe mint text/outline; do not use saturated mint for normal text when it fails contrast.

### Feature and product-story sections

Use repeatable text + real UI/diagram compositions with source/caption. Alternate alignment only when it supports the narrative. Product imagery must show a current real UI; label crops and composites.

### Cards and proof

Support standard, pale semantic, comparison/recommended, proof/testimonial, and product-preview variants. Every card has explicit content slots and hierarchy. Never invent customer proof, metrics, or attribution.

### System diagrams

Show one owned context/data core, labeled agents/sources, explicit connector direction, scopes/permissions where relevant, and a text equivalent. Preserve topology across light/dark modes; replace dark glow with whitespace and pale grouping fields on light.

### Forms

Use persistent labels, optional help, explicit required status, consent/privacy copy, inline validation, pending state, success confirmation, recoverable error, and keyboard/mobile completion. Do not use placeholder-only labels or dark patterns.

### Dialogs, banners, and consent

Use restrained visuals, explicit purpose, initial focus, containment, dismissal/persistence rules, reduced-motion behavior, and a clear path to reverse or revisit consent where applicable.

### Loading, error, and offline

Preserve geometry during pending work. Use restrained progress, media fallback, actionable 404/500/offline/retry pages, and live-region announcements. Do not use endless decorative animation.

### Footer

Organize product, company, platform, resources, support, and legal links with external-link clarity and responsive columns. Keep low-emphasis branding readable.

### Icons, logos, and motion

Choose one consistent web icon runtime family/weight for general UI; keep brand and diagram assets separate. Inherit product semantic color behavior, not a private Font Awesome dependency by default. Motion must explain relationship, state, or transition and must have a reduced-motion substitute.

## Do's and Don'ts

- Do make the site visibly descended from Context Mobile and Web.
- Do use real UI and concrete system mechanics to establish trust.
- Do treat light mode as whitespace/pale grouping plus dark ink, not inverted dark glow.
- Do keep mint/violet as identity carriers while using blue and status colors semantically.
- Do label every website-only rule as a deliberate design decision with a content or accessibility reason.
- Do make diagrams understandable without color and provide equivalent text.
- Do verify contrast, focus, zoom, reduced motion, reading order, and form recovery.
- Don't inspect or imitate Webflow to answer a design question.
- Don't use generic SaaS cards, stock people, robot mascots, or security theater.
- Don't use gradients, glow, hexagons, or monospace as ambient decoration.
- Don't redraw product screenshots into cleaner but fictional UI.
- Don't transplant dense Timeline layout into editorial pages.
- Don't invent proof, customer claims, logo clear-space, minimum-size, or trademark constraints.
- Don't introduce new palette values when an existing semantic token already serves the role.
