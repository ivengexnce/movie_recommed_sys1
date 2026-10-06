---
name: ui-ux-design
description: Use when designing or building a whole page, screen flow, or visual system (landing page, portfolio, dashboard, PWA, event site), or when asked to review or critique a UI. Not for small tweaks like fixing a bug or recoloring one button. Produces interfaces that are derived from the brief, usable, and not recognizably AI-generated. Read the reference files on demand.
---

# UI/UX Design

## Modes (pick silently)

- **Tweak**: small change to existing UI. Make it. No concept line, no checklist, no extras.
- **Build**: new page, screen, flow, or visual system. Follow the workflow below.
- **Review**: user pastes a design, code, or screenshot, or says "review/critique/rate". Read `references/review.md`.

## Standard

An interface fails in two ways: it is **generic** (could belong to any product) or **unusable**. Both are failures.

"Looks AI-generated" is a symptom. The cause is decisions not derived from the brief: first font, first palette, first layout that came to mind. Other models had the same first thoughts, which is why they all look alike. Banning one cliché only produces the next one. Derive, don't blacklist.

## Build workflow

1. **Brief.** Infer audience, job, tone, constraints, motion level. Write them in four lines. Ask a question only if one missing fact would change the structure of the build. Otherwise state the assumption and proceed.
2. **Content and structure before styling.** Real content, information architecture, the one primary action, page sequence. Layout follows the shape of the content.
3. **Direction.** Derive type, color, density, imagery from the brief. Every choice gets a "because". Name one alternative you rejected.
4. **Build order:** tokens, structure, components, states, motion last. Motion rules are in `references/motion.md`.
5. **Verify.** Screenshot at 375 and 1440, critique what you see, fix, then ship. If you cannot run a browser, say "not visually verified" and do not claim the design works.
6. **Deliver** in the output format below.

## Hard rules

- **Real content or labeled placeholders.** Never invent stats, testimonials, logos, or user counts. Missing images are shown as clearly labeled asset slots with aspect ratios, never faked with gradients or CSS art.
- **Structure comes from content.** If two adjacent sections share the same skeleton, one of them is wrong. A list of three things is not automatically three cards.
- **Your first instinct is the default.** The first typeface, palette, and layout you think of are what everyone else thought of. Pick on purpose and name the rejected alternative.
- **Typography carries hierarchy.** Size, weight, spacing, and position before boxes, borders, and shadows.
- **One accent color** unless the brief justifies more. Neutrals do the rest.
- **Copy is specific to this product and person.** Short banned list: elevate, seamless, unleash, supercharge, empower, revolutionize, cutting-edge, robust, streamline, effortless, game-changer, unlock. No forced triplets, no "not just X, but Y". Read headlines aloud; if they could sit on any website, rewrite.
- **Every state is designed:** hover, focus-visible, active, disabled, loading, empty, error, success.
- **Accessibility floor:** semantic HTML, visible focus, keyboard operable, contrast 4.5:1 for body text, targets 24px minimum (WCAG 2.2 AA) and 44px preferred for touch, meaning never by color alone, `prefers-reduced-motion` honored.
- **Code:** design tokens as CSS variables, no raw hex in components, strict TypeScript / strict typed models, comments explain why not what, classes named by role.
- **No decoration without a job.** If you can't say what an element does for the user or the concept, cut it.

## Motion

The brief declares a level: **quiet**, **expressive**, or **cinematic**. Cinematic is legitimate when the brief calls for it (storytelling pages, galleries, launch experiences). Details in `references/motion.md`. Rule for all levels: every animation has a job, and reduced-motion users get the final state, not a broken one.

## Working with this user

- They write fragments ("go", "continue", "step by step"). Infer and execute.
- Give complete files and exact terminal commands. No partial patches.
- Plain text by default. Make a file only when a file is the natural deliverable.
- If the user's direction is weak, say so in one or two sentences, say why, build the stronger version, and note how to switch back. Never silently comply with a bad direction, and never lecture.
- Never flatter. If it's good, say what makes it good and what you'd still cut.

## Output format

**Build**
1. Brief and direction: at most 5 lines, each with a "because".
2. Files in build order, path heading plus full contents.
3. Commands to install, run, deploy.
4. Verification status: what you screenshotted, what you found, what you fixed. Or "not visually verified".

**Tweak**: the code only.
**Review**: see `references/review.md`.
