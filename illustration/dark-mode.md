# Fulcra illustration style guide: dark mode

## Scope

Use this guide for dark-mode Fulcra illustrations, product explainers, website graphics, social assets, and technical diagrams. Dark mode is the product-native, app-native, highest-contrast expression of Fulcra; it is not the entire identity system. Use the companion light-mode guide for decks and white or pale editorial fields.

## The look in one paragraph

Build a calm instrument panel on black or near-black: one owned Fulcra context layer organizes concrete signals, agents, permissions, and outcomes into a legible system. Use rounded typography, charcoal cards, fine dividers, compact chips, specific data, and the mint `#56D6B7` to violet `#7B61FF` identity range. Let blue and status colors do narrow semantic work. The result should feel like real personal infrastructure—inspectable, permissioned, and alive—not “AI magic,” cyberpunk theater, or generic SaaS decoration.

## Materials

| Role | Value | Application |
| --- | --- | --- |
| Page field | `#000000` | Default field and maximum-depth void |
| Primary card | `#16161D` | Main card, bottom sheet, or owned-context panel |
| Secondary card | `#222227` | Hover, nested card, or differentiated layer |
| Divider | `#38383A` or `#333333` | Hairline borders, axes, and quiet separators |
| Primary ink | `#FFFFFF` | Headline, essential label, and active icon |
| Secondary ink | `#8A8A8E` | Annotation, inactive label, axis, and metadata |

- Prefer flat fields and restrained depth.
- Use an 8px radius for compact web-native diagram cards and controls and 12px for larger cards or product-like panels.
- Use 1px-equivalent dividers and 1–2px-equivalent paths.
- Use shadow only when it clarifies stacking. Prefer no shadow, a quiet border, or one soft black shadow around `0 14px 36px rgba(0,0,0,.24)`.
- Use translucency for overlays and active cards only when the layer boundary remains visible.
- Give system diagrams one bounded luminous context core. Color names roles and flow; it never builds an all-over cyberpunk atmosphere. Static structure stays dark and quiet; active context glows.

## Color semantics

### Identity colors

- Mint `#56D6B7` represents user-owned context, source signals, active controls, connection, and positive emphasis.
- Violet `#7B61FF` represents the identity endpoint, agent or interpretive state, selection, and destination.
- The mint-to-violet gradient represents Fulcra identity, transformation, selected context, or a Fulcra-owned active path.
- For normal violet text on `#16161D`, use `#9C88FF`; canonical violet remains suitable for large or non-text marks.

Mint and violet are not an absolute measured-versus-interpreted law. Use that distinction as a default in explanatory art, then preserve the actual product encoding when reproducing a product chart.

### Functional colors

- Blue `#007AFF` marks a target, reference, informational state, or third comparative variable. Use `#0A84FF` for normal text on dark panels.
- Green `#34C759` marks success, a reached target, improvement, or healthy status.
- Red `#FF3B30` marks error, a miss, negative outcome, or destructive action.
- Yellow `#FFCC00` marks warning or attention.
- Pink and rose are rare metric accents and should be tied to a labeled domain meaning.

Keep every functional color tied to a legend, label, icon, line style, or established state. Do not use status colors as ambient brand decoration.

### Gradient use

Use `linear-gradient(135deg, #56D6B7 0%, #7B61FF 100%)` for a diagonal brand carrier, or a vertical variant for a logo-like mark. A faint card wash may use the same endpoints at roughly 8–10% opacity.

Establish one dominant active path or focal system. Multiple gradient-bearing elements can coexist when they form one coherent system — but when everything glows, nothing is live. Never use gradients as wallpaper.

## Geometry and recurring devices

- Rounded rectangles are the primary container and UI instrument.
- Pills and chips carry scope, metric, direction, status, and read/write access.
- The hexagon and spiral identify Fulcra, the owned-context core, or an avatar frame. Do not turn every node into a hexagon.
- Rings and gauges represent cycles, sleep, completion, and periodic review.
- Dotted paths indicate relationship, orbit, coordination, potential, or permission.
- Solid arrows and paths indicate actual flow, handoff, update, or granted access.
- Timelines and ledgers show provenance, commits, loops, and change history.
- Layered cards or strata show raw → normalized → permissioned → agent-readable.
- Circles and ordinary nodes represent users, agents, tools, sources, and targets.
- A layered cylinder or compact stack may represent shared context, memory, or a data substrate.
- When translating a diagram between modes, preserve the nodes, hierarchy, and connectors. Change material treatment, not meaning.

Use the smallest geometry that communicates the mechanism. Decorative node constellations without a readable relationship are off-brand.

## Typography inside images

- Use Rubik for primary labels and headings. If it is unavailable, use a rounded grotesk with similar open counters and calm proportions.
- Use Noto Sans Mono or Roboto Mono only for code, scopes, timestamps, units, and exact technical values.
- Use white for primary labels and sentence case or short title case.
- Use small uppercase eyebrows with modest tracking only for compact categorization.
- Use `#8A8A8E` for metadata, never as the only cue for a required distinction.
- Use real units and plausible precision: `74.11 bpm`, `HRV +8 ms`, `read: sleep`, `May 4–Jul 3`.
- Keep copy short. A diagram may contain labels and proof, but it should not contain the entire prose argument.

Avoid ultra-light text below practical reading sizes. Violet `#7B61FF` on `#16161D` does not pass 4.5:1; use `#9C88FF`, white, larger type, or another passing pair for normal text.

## Data visualization rules

1. Name the variables and units.
2. Show the time range or comparison window.
3. Distinguish observation, target or reference, and interpretation.
4. Pair color with shape, icon, line style, or label.
5. Label success and failure; do not rely on green and red alone.
6. Use thin grids and dividers and keep the data brighter than the scaffold.
7. Annotate the result near the mark that proves it.
8. Prefer a small inspectable chart to an abstract “data wave.”

Use box plots, bars, spline or correlation curves, dotted targets, rings, compact sparklines, and explicit legends when the subject calls for them. Do not mix every chart form into one illustration.

For a dense Timeline composition, place many data tracks on one shared time axis. Each row may combine a small icon, name, unit, and summary at left; marks in the center; selected-time values and deltas at right; and tiny series or trend controls. Use this when the argument is “many kinds of life, made comparable,” and simplify the number of tracks for marketing art.

Keep insight or mini-chart columns subordinate to the shared plot. Treat pin, reorder, hover, and selection as small inspectable mechanics rather than decorative chrome. A sleep visual may combine one ring summary, segmented stages, and one comparison chart; do not stack every available chart form into a single hero.

## Icon and logo treatment

- Use the horizontal white logo on black when a quiet masthead is needed.
- Use the mint-to-violet mark when identity must carry color or Fulcra is the owned center.
- Preserve the spiral and hexagonal silhouette. Do not redraw the mark as a generic database icon.
- Use one consistent solid or clean-outline icon family within an asset.
- Use shield, check, lock, brain, and account icons only when literal. They must not become the visual argument.
- Agent logos may appear at the periphery. Fulcra remains the stable context layer rather than one equal floating logo among many.

## Composition patterns

### Owned hub

Put a Fulcra context core in the center. It may be the spiral mark, a layered data cylinder, or a compact owned stack. Arrange user and source signals and agents around it. Use dotted paths for association and solid arrows for actual handoff.

### Controlled pipeline

Show sources → normalization → owned store → permission gate → agents. Put control between raw personal data and agent access.

### Loop with update

Show an agent reading changed context, acting, and writing a logged update back. Make the “what changed” delta explicit.

### Inspectable ledger

Use a vertical timeline with source, actor, timestamp, change, and scope. Add edit, revoke, and rollback controls as small UI mechanics.

### Before and after

Show fragmented, dim, disconnected records on the left and one owned context layer with scoped connections on the right. Keep the Fulcra side calmer, not merely brighter.

### Mobile instrument

Use stacked portrait cards, a bottom-sheet detail, or a focused 4:5 crop for insights, trends, health or context data, and social or web cards.

## What to avoid

- Robot mascots, brains as magic, neural spaghetti, binary rain, or circuit-board wallpaper.
- Generic cloud-sync diagrams that omit ownership, permission, and provenance.
- Giant padlocks, hooded attackers, surveillance reticles, or fear-based security theater.
- Decorative blue or purple glow with no semantic job.
- Every object glowing equally.
- Unlabeled charts, fabricated-looking data, or arbitrary precision.
- A hexagon on every node.
- Generic stock people or 3D corporate characters.
- White cards pasted onto black without adapting borders, ink, and depth.
- Gradients used as wallpaper instead of identity, selection, or active context.

## Acceptance checklist

- [ ] Dark mode is appropriate for the medium and clearly intentional.
- [ ] The image has one primary argument and one center of gravity.
- [ ] The field uses black and near-black hierarchy rather than one undifferentiated gray.
- [ ] Mint and violet carry identity or context; blue and status hues have explicit jobs.
- [ ] The human appears through owned context, an account or avatar, or real signals—not a generic persona.
- [ ] Agents appear as clients, nodes, tools, ports, or loops rather than mascots.
- [ ] A Fulcra control or permission layer sits visibly between raw data and agents.
- [ ] Trust appears as scope, audit, provenance, revocation, or review mechanics.
- [ ] Data labels include units, window, and meaning where relevant.
- [ ] The logo is not stretched, recolored arbitrarily, or repeated as wallpaper.
- [ ] The composition reads at thumbnail or mobile size and survives the intended crop.
- [ ] Empty space remains around the primary system.
- [ ] A light-mode counterpart preserves the same topology and semantic color roles.

## Prompt block

```text
FULCRA DARK-MODE HOUSE STYLE

Create a flat, precise technical illustration on a black (#000000) or
near-black field. Use charcoal product surfaces (#16161D, #222227),
quiet 1px dividers (#38383A), rounded cards, compact pills, fine paths,
and white primary labels with muted gray (#8A8A8E) annotations. Use
Rubik-like rounded sans typography and restrained monospace only for
code, scopes, timestamps, units, and exact values.

The identity colors are mint (#56D6B7) and violet (#7B61FF). A
mint-to-violet gradient may mark the Fulcra-owned context layer, an
active transformation, or a granted connection. Blue (#007AFF), green
(#34C759), red (#FF3B30), yellow (#FFCC00), and rare pink or rose are
allowed only for labeled data or status semantics. Keep static structure
quiet and make the active context path easiest to see.

Show Fulcra as the stable, user-owned layer between real-world signals
and agents. Represent agents as clients, ports, tools, nodes, or loops.
Show trust through scoped access chips, read/write direction, provenance,
audit history, review, or revocation controls. Use the Fulcra
hexagon-and-spiral mark as a signature core or anchor, not as every node.
Use specific plausible labels and units. Keep one main visual argument
and enough empty space to read at thumbnail size.

Avoid robot mascots, generic brains, neural-network spaghetti, binary
rain, circuit-board texture, surveillance imagery, giant padlocks,
generic cloud-sync clip art, unlabeled charts, arbitrary glows, stock 3D
people, and decorative gradients.

SUBJECT: [one argument; include the sources, owned context layer,
permission mechanism, agents, and outcome that must be visible]

COMPOSITION: [owned hub / controlled pipeline / loop with update /
inspectable ledger / before-after / mobile instrument]

FORMAT: [16:9 deck / 1:1 social / 4:5 web card / portrait mobile]
```

