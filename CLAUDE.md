# phd-public - public site

Czech-facing bookdown site <https://phd.judakaleta.cz/> making the PhD
work accessible to Czech history teachers, teacher educators and
scholars: preliminary findings, materials, open-science process notes.

Hub: `README.md` (status, Next steps, Log). Read it first; at the end of
a session update Next steps and Log. Overview: `overview.md`.

## Where things are

- `index.Rmd` (setup, introduction), `029-hpt-a-extremismus.Rmd`,
  `030-epistemic-knowledge-pilot-1.Rmd`, `041-zduvodnovani-z-pramenu.Rmd`,
  `99-references.Rmd`
- `_bookdown.yml`, `_output.yml`; `references.bib` (project bib)
- `docs/` and `_book/` - generated output, not for editing
- Build: `make build` (targets `prepare`, `bib`, `serve`, `build`; the
  old README's `make html/pdf` do not exist). GitHub Actions renders and
  deploys `docs/` to Pages on push.

## Project rules

- Edit `.Rmd` sources only; avoid unrelated rebuild churn in `docs/`.
- Czech prose: direct, modest about preliminary evidence, practically
  useful, short paragraphs, invite feedback; not a dissertation voice.
- Mark teacher-only vs pupil-safe materials; never expose
  non-anonymised student, teacher, school or contact data.
- Feedback address on the site stays `juda.kaleta@gmail.com` unless the
  user asks otherwise.
- Citations must resolve in `references.bib`; run `reference-verifier`
  after adding cited claims; one-off media sources stay local.
