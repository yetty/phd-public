# phd-public Agent Instructions

This project is the public Czech-facing site for Juda Kaleta's PhD
research: <https://phd.judakaleta.cz/>. It translates preliminary
findings, materials, and open-science process notes into a form useful
for Czech history teachers, teacher educators, and scholars.

## Purpose and Audience

The site's own introduction is the source of truth for its public aims:

1. Make primarily English dissertation outputs accessible to Czech
   readers.
2. Share work in progress in the spirit of open science, so teachers
   and scholars can send comments, questions, and improvement ideas.
3. Repay participating teachers by sharing materials they can adapt in
   their own history classrooms.

Write for an informed Czech audience. The expected reader may be a
history teacher, didactics scholar, teacher educator, or cooperating
school partner. Keep the voice direct, transparent, modest about
preliminary evidence, and practically useful. Do not write as if this
were a polished dissertation chapter or a journal article.

## Source Files

- `index.Rmd` - site metadata, shared R setup, and the public
  introduction.
- `029-hpt-a-extremismus.Rmd` - public account of the Historical
  Perspective Taking and extremism-attitudes study.
- `030-epistemic-knowledge-pilot-1.Rmd` - teacher-facing explanation of
  the epistemic-knowledge pilot on warranted conclusions from sources.
- `99-references.Rmd` - bibliography chapter heading.
- `_bookdown.yml` and `_output.yml` - bookdown output configuration.
- `references.bib` - project bibliography used by the Rmd files.
- `docs/` - rendered GitHub Pages output. Treat it as generated output,
  not the primary editing surface.

## Editing Rules

- Edit source `.Rmd` files, not generated HTML under `docs/` or `_book/`,
  unless the task is explicitly about rendered output.
- Keep public prose in Czech unless the user explicitly requests English.
- Prefer short paragraphs, teacher-facing signposting, concrete classroom
  implications, and explicit caveats about preliminary findings.
- Preserve the open-science work-in-progress stance: explain uncertainty,
  do not overclaim representativeness, and invite feedback when relevant.
- For teacher materials, distinguish clearly between materials safe to
  share with pupils and materials intended only for teachers.
- Keep code chunks reproducible and relative to the project directory.
- Do not expose non-anonymised student, teacher, school, or contact data.
- Use the current author identity from the root repository instructions:
  Juda Kaleta, Charles University, Faculty of Arts, Institute of History,
  juda.kaleta@ff.cuni.cz, ORCID 0000-0003-0043-4039.
- The public site currently lists `juda.kaleta@gmail.com` as the feedback
  address. Do not change that unless the user asks.

## Citations and References

- Existing academic citations in `.Rmd` files must resolve in
  `references.bib`.
- Do not edit project-level `references.bib` casually. The root
  repository's `bibliography.bib` is the master bibliography; project
  bibliographies may be regenerated from it.
- If you add or substantially edit cited academic claims, run the
  `reference-verifier` agent before finalising.
- For one-off media or web sources that are not thesis-grade literature,
  follow the root repository rule for ephemeral sources instead of
  polluting the global bibliography.

## Build and Verification

Use targeted verification after edits:

```bash
make build
```

The current `Makefile` has `prepare`, `bib`, `serve`, and `build`
targets. `make build` renders the gitbook via bookdown. The README still
mentions `make html` and `make pdf`, but those targets are not present in
the current Makefile; treat this as documentation drift until fixed.

GitHub Actions renders both PDF and gitbook on pushes to `main` or
`master`, restores `docs/CNAME`, and deploys `docs/` to GitHub Pages.

## Status Files

Read `status.md` and `project_status.md` at the start of every session.
After completing a task, update `status.md`. After completing a larger
milestone or phase, update `project_status.md`. Keep `status.md` short
and current; keep `project_status.md` as the compact running log.

## Current Risks to Watch

- The project is public-facing, so clarity and confidentiality matter
  more than internal shorthand.
- Some source prose contains typos and older planning language next to
  newer results. When editing, preserve meaning but improve coherence.
- Build instructions are slightly stale relative to the actual Makefile.
- Generated files in `docs/` and `_book/` can be large; avoid unrelated
  rebuild churn unless the task requires rendered output.
