# phd-public Project Status

**Project:** Public PhD research site  
**URL:** <https://phd.judakaleta.cz/>  
**Repository role:** Public-facing bookdown site and GitHub Pages output  
**Last updated:** 2026-06-16

## Project Purpose

`phd-public` makes selected PhD research outputs accessible to Czech
history teachers, teacher educators, and scholars. The site exists
because the dissertation and most formal outputs are primarily in
English, while the practical audience for many findings is Czech. It
also supports open-science transparency by sharing work in progress and
inviting feedback before outputs become fixed.

The project should remain practical and teacher-facing: findings should
be explained plainly, uncertainty should be visible, and materials should
help cooperating teachers adapt or discuss the work in their classrooms.

## Current Content

- `index.Rmd` introduces the site as public sharing of preliminary PhD
  findings, thoughts, and discussion materials about historical thinking
  and its assessment in history education.
- `029-hpt-a-extremismus.Rmd` presents the Historical Perspective Taking
  study, including the original motivation, teacher-facing practical
  plan, results, interpretation, and linked materials.
- `030-epistemic-knowledge-pilot-1.Rmd` explains a pilot instrument for
  assessing whether pupils draw warranted conclusions from sources.
- `99-references.Rmd` holds the bibliography chapter heading.

## Completed Milestones

- Initial bookdown/memoiR site structure exists with rendered GitHub
  Pages output under `docs/`.
- Custom domain configured through `CNAME` as `phd.judakaleta.cz`.
- GitHub Actions workflow renders PDF and gitbook output and deploys the
  `docs/` artifact to GitHub Pages.
- HPT/extremism chapter includes both a planned-study teacher invitation
  and a later public results section with reusable materials.
- Epistemic-knowledge pilot chapter exists as an initial teacher-facing
  explanation and recruitment/participation text.
- Project instruction and status files were initialised on 2026-06-16.
- 030 public results section drafted on 2026-06-16 using public-safe
  aggregate RDS exported from phd-030; reviewer pass found no blocking
  issues after revision.
- 030 chapter extended on 2026-06-16 with three public-safe item examples
  and item-level aggregate response patterns.

## Active Work

1. Maintain the public Czech framing: accessible, transparent,
   practically useful, and explicit that the site is work in progress.
2. Keep build documentation in sync with the actual Makefile and CI
   workflow.
3. Improve public-facing prose quality without changing substantive
   claims unless checked against source project evidence.
4. Keep generated output (`docs/`) aligned with source `.Rmd` files after
   substantive edits.
5. After final June data lock, rerun `scripts/update_030_public_data.R`
   and rebuild the book so 030 numbers use the final export.

## Technical Notes

- Source format: R Markdown / bookdown.
- Main source file: `index.Rmd`.
- Output configuration: `_bookdown.yml`, `_output.yml`.
- Local build target currently available: `make build`.
- 030 public data refresh: `Rscript scripts/update_030_public_data.R`.
- CI render: `.github/workflows/memoir.yml` renders PDF and gitbook on
  pushes to `main` or `master`.
- Deployment output: `docs/`.
- Licence: Creative Commons Attribution 4.0 International.

## Known Issues

- There is no explicit local PDF Makefile target, although CI renders a PDF.
- Some prose mixes earlier planned-study framing with later result
  reporting; future edits should make timeline and evidential status
  clear to public readers.
- There is no explicit content calendar or publication workflow for new
  public updates.

## Session Start Checklist

1. Read `AGENTS.md`, `status.md`, and this file.
2. Inspect the relevant `.Rmd` source before editing generated output.
3. Check whether the task changes public claims, citations, or rendered
   output.
4. Run targeted verification, usually `make build`, when feasible.
