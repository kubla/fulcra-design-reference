# Fulcra illustration style guide: light mode

## Scope

Use this guide for light-mode website graphics, investor-deck diagrams, comparison slides, multi-agent coordination visuals, and simple data or context cards.

Light mode is not a color inversion of the dark product. It is a presentation system in which whitespace and dark ink carry the argument, pale cards organize concepts, and mint, blue, and violet carry identity and semantic emphasis.

## The look in one paragraph

Use a white field, large dark Rubik headlines, restrained DM Sans body copy, and generous slide-safe whitespace. Organize the story into pale mint, pale violet, and pale blue cards with rounded corners and minimal shadow. Put a Fulcra-owned context layer—often a layered data core, owned stack, or signature hexagon—at the center of diagrams and connect users, real-world data, and agents with fine dotted paths or direct arrows. Reserve saturated mint `#56D6B7`, violet `#7B61FF`, blue `#007AFF`, and the mint-to-violet gradient for the words, nodes, rules, or handoffs that carry the argument.

## Materials

| Role | Value | Application |
| --- | --- | --- |
| Page field | `#FFFFFF` | Default deck and light-web field |
| Primary ink | `#16161D` | Headlines, icons, and primary copy |
| Secondary ink | `#626A78` | Body copy, captions, and axes |
| Decorative divider | `#D9DCE2` | Quiet noninteractive separation only |
| Interactive boundary | `#626A78` | Control edge or focus boundary requiring contrast |
| Pale mint card | `#E6F9F1` | Owned context, coordination, or availability |
| Pale violet card | `#E0D8FE` | Agent, loop, or interpretation grouping |
| Pale blue card | `#D8EBFE` | Permission, system, or comparison grouping |
| Extra-light mint layers | `#E5F8F4`, `#F5FDFB` | Layered context stack |
| Saturated mint | `#56D6B7` | Identity accent, key word, top rule, or node |
| Saturated violet | `#7B61FF` | Large or non-text identity endpoint and emphasis |
| Saturated blue | `#007AFF` | Large or non-text system, target, or permission accent |

Use pale fills instead of heavy outlines. Use a neutral outline when white nodes sit on white. Avoid faux glass that depends on darkness; use overlap, opacity, and whitespace instead.

## Color semantics

- Mint represents user-owned context, coordination, availability, “live,” or positive emphasis. Use `#287D69` for normal mint text or focus on white.
- Violet represents agent loops, interpretation, memory or update, and the identity endpoint. Use `#6F52E5` for normal violet text or a filled control carrying white text.
- Blue represents permission, informational or system state, reference, or a third comparison category. Use `#0066CC` for normal blue text on white.
- The mint-to-violet gradient represents Fulcra identity, knowledge or context transformation, or a brand-bearing headline or mark.
- Pale mint, violet, and blue are structural grouping surfaces and must not communicate meaning by color alone.
- Use `#208637` for success text, `#D70015` for error text, and `#765A00` for warning text on white.
- Red and pink may mark negative comparison, failure, competitor or problem state, or a deliberately rare opposing accent.

Label comparison and status meanings directly. Canonical saturated colors remain available for fills, large marks, diagrams, and charts when the complete foreground and background pair passes contrast.

## Geometry and recurring devices

- Large rounded cards may use a narrow saturated top rule.
- Rounded labels and horizontal comparison bands organize compact categories.
- A central hexagon may represent the Fulcra-owned context, ETL, or RBAC layer.
- Circular peripheral nodes represent the user, real-world data, and agents.
- Dotted orbit or flow lines represent coordination and many-to-one relationships.
- Direct arrows represent explicit permissioned transfer or handoff.
- Layered translucent lozenges represent stacked properties or knowledge layers.
- Sparse tables use color only for key comparison cells and brand marks.
- Thin charts use light grids and nearby large-number callouts.
- A layered data cylinder or compact owned stack may replace the central hexagon when shared context is the subject.
- Small tessellations or signpost-like pictograms may use the mint-to-blue-to-violet range with white line symbols.
- Paired light and dark versions preserve topology; the light version replaces glow with whitespace, pale grouping fields, and dark labels.

Use the hexagon where ownership or Fulcra identity is the message. Use rounded cards and circles for ordinary concepts. Do not force all content into logo geometry.

## Typography inside images

- Use Rubik for headlines: large, compact, and usually two lines or fewer.
- Use DM Sans for supporting copy and italics only for a deliberate thesis or aside.
- Use Roboto Mono for technical or metric lines, commands, units, scopes, timestamps, and step numbers.
- Use DM Sans or Open Sans for dense tables when needed.
- Highlight one phrase with mint, violet, or a mint-to-violet gradient and keep the rest dark.
- Use uppercase tracked labels only for compact ownership distinctions such as `LABS OWN` and `FULCRA OWNS`.
- Keep deck body copy large enough for a room. Edit before shrinking.

Do not collapse the system into one generic sans unless implementation constraints require it. Do not use monospace as ambient technical decoration.

## Data visualization rules

- Use white or pale plot fields, a thin gray grid, and one primary brand-colored series.
- Put the takeaway beside the chart in a large numeric callout; do not ask the chart to carry the whole slide.
- Use direct labels when possible and keep legends short and close to their marks.
- Use saturated color for the active series or target, not every grid line and label.
- For a context card, show the data name, value and unit, time window, source, and permission or status.
- For a data-to-agent diagram, preserve the control boundary between source and agent.
- For comparison slides, keep the columns neutral and use color only for decisive differences.
- Pair every color-coded meaning with a label, icon, line style, or shape.

## Icon and logo treatment

- Use the full-color Fulcra mark on white for hero and title moments.
- Use a small neutral logo in a footer only when the slide needs a quiet ownership mark.
- Do not repeat the full logo inside every card. A small mark in the central owned layer is sufficient.
- Use simple line icons inside white circular nodes or flat saturated pictograms inside pale cards.
- Match icon stroke weight within one illustration.
- Agent or company logos may appear at diagram endpoints or in a comparison table; keep Fulcra's layer structurally central.

## Composition patterns

### Website hero or supporting graphic

Use a white or pale field with a large left-aligned headline and a right-side system diagram. Show a pale context stack or central Fulcra core with only the active path or key phrase in full brand color. Keep the graphic sparse enough to stack below the headline on mobile.

### Three-card argument

Use three equal pale cards with saturated top rules and one icon per card. Number the cards with small monospace figures. Keep the headline and takeaway above; do not make the cards repeat them.

### Comparison slide

Use two or more neutral columns or cards. Assign a pale problem color to the alternative and pale mint to Fulcra. Add one saturated bottom rule or callout rather than a gradient background.

### Multi-agent coordination diagram

Place a large mint or mint-gradient Fulcra context core at the center. Use a layered data stack when shared context is the concept and a hexagon when ownership or identity is the concept. Put the human and real-world data on distinct peripheral nodes. Arrange agent nodes around the core. Use dotted loops for coordination and direct arrows for actual reads and writes. Label the ownership boundary.

### Simple data or context card

Use a pale neutral or mint card containing a source icon, data type, exact value and unit, time window, source, and a small permission or status chip. Keep it suitable for both a deck and a responsive web section.

### Layered knowledge stack

Use overlapping translucent mint, blue, and violet lozenges with ample separation. Keep layer names dark and reserve gradient text for the resulting “Knowledge” or Fulcra-owned outcome.

## What to avoid

- Simply inverting dark cards to white while retaining dark-mode glow logic.
- Large saturated gradient page backgrounds.
- Pale cards with insufficient dark-text contrast.
- Corporate stock illustration, 3D characters, robot mascots, or floating app-logo soup.
- Dense enterprise architecture diagrams with tiny labels.
- Heavy drop shadows, beveled cards, or skeuomorphic databases.
- Repeating the Fulcra logo in every node.
- Dotted paths that do not terminate in a meaningful relationship.
- Unlabeled color comparisons.
- Turning one-off comparison colors into identity colors.

## Acceptance checklist

- [ ] The field is genuinely light and uses whitespace as structure.
- [ ] Dark ink carries most of the reading load.
- [ ] Mint, violet, blue, and the gradient emphasize meaning rather than decorate empty space.
- [ ] The central Fulcra-owned layer is unmistakable when the subject involves agents or data.
- [ ] The human and real-world data are distinct from agent nodes.
- [ ] Permission, ownership, handoff, or provenance is visible through mechanics.
- [ ] Pale cards are labeled and remain distinguishable without color alone.
- [ ] Typography uses a clear headline, body, and mono hierarchy.
- [ ] The diagram remains readable when projected, thumbnailed, or stacked on mobile.
- [ ] The logo is used once at the right emphasis level.
- [ ] Comparison slides make the conclusion visible without a legend hunt.
- [ ] Empty space surrounds the headline and diagram.
- [ ] A dark-mode counterpart preserves the same nodes, hierarchy, and semantic color roles.

## Prompt block

```text
FULCRA LIGHT-MODE HOUSE STYLE

Create a clean, flat technical illustration on a white (#FFFFFF) field.
Use dark ink (#16161D) for headlines and icons, slate-gray (#626A78)
for supporting copy, and generous whitespace. Build the system from
rounded pale cards: mint (#E6F9F1), violet (#E0D8FE), and blue
(#D8EBFE). Use subtle outlines and minimal shadow.

Use Rubik-like bold rounded typography for the headline, DM Sans-like
body text, and restrained Roboto Mono-like labels for commands, units,
and step numbers. The identity colors are mint (#56D6B7) and violet
(#7B61FF); blue (#007AFF) is allowed for a labeled third system or data
role. Use a mint-to-violet gradient only for the Fulcra mark, a key
phrase, a central owned context layer, or a transformation path.

Show a Fulcra-owned context or knowledge layer between real-world data
and agents. Use a central hexagon only when it represents Fulcra
ownership; use circles, rounded cards, pills, dotted coordination paths,
and direct handoff arrows for ordinary system parts. Show trust through
scope, permission, audit, provenance, or revocation mechanics. Keep one
main argument and make it readable on a 16:9 slide and at thumbnail size.

Avoid dark-mode inversion, giant background gradients, glow-heavy cards,
3D corporate characters, robot mascots, generic AI brains, logo soup,
tiny enterprise-diagram labels, heavy shadows, and unlabeled color.

SUBJECT: [one visual argument]

COMPOSITION: [website hero / three-card argument / comparison /
multi-agent coordination / simple context card / layered knowledge stack]

FORMAT: [16:9 investor deck / responsive web section / 1:1 social]
```

