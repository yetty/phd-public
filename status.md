# phd-public Status

**Updated:** 2026-06-16  
**Phase:** Public site maintenance and teacher-facing dissemination

## Current State

- Public Czech bookdown site at <https://phd.judakaleta.cz/>.
- Core purpose: share preliminary PhD findings, open the work to
  comments, and return useful materials to cooperating Czech teachers.
- Source chapters cover HPT/extremism and epistemic knowledge; the 030
  chapter now has a final-findings results section backed by aggregate RDS.
- `docs/` contains the rendered GitHub Pages output.

## Active Work

1. Keep `index.Rmd` aligned with the site's public aims.
2. Keep `029-hpt-a-extremismus.Rmd` coherent for teachers.
3. Keep `030-epistemic-knowledge-pilot-1.Rmd` up to date after final
   June data lock via `scripts/update_030_public_data.R`.
4. Fix build/docs drift: README mentions `make html` and
   `make pdf`, while the current Makefile exposes `make build`.

## Next Steps

- Decide whether to add explicit `html` and `pdf` Makefile targets or
  update README wording to match the current Makefile.
- Review rendered 030 page after publication-style edits.
- No current formal release plan or content calendar is documented.
- Avoid publishing any non-anonymised student, teacher, or school data.
