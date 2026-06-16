# Judovo overovani historickeho mysleni

**URL**: https://phd.judakaleta.cz
**GitHub Pages**: https://yetty.github.io/phd-public/
**Language**: Czech

Public-facing bookdown site presenting preliminary findings and
discussion materials from the PhD research. Built with R bookdown
and the memoiR/memoir LaTeX class.

## Contents

| Chapter | Source file | Topic |
|---------|-----------|-------|
| Index | `index.Rmd` | Introduction and overview |
| 029 | `029-hpt-a-extremismus.Rmd` | Historical thinking and extremism |
| 030 | `030-epistemic-knowledge-pilot-1.Rmd` | Epistemic knowledge pilot |
| References | `99-references.Rmd` | Bibliography |

## Build

```bash
# Render HTML (gitbook) into docs/
make build
```

Output goes to `docs/` (served via GitHub Pages with CNAME
`phd.judakaleta.cz`).

## Structure

- `_bookdown.yml` / `_output.yml` - bookdown configuration
- `latex/` - custom LaTeX preamble and class files
- `images/` - cover and logo images
- `data/` - data files used in chapters
- `scripts/update_030_public_data.R` - refresh public-safe 030 aggregate
  results from the phd-030 analysis export
- `references.bib` - chapter bibliographies
- `docs/` - rendered output (HTML)
- `AGENTS.md` / `CLAUDE.md` - project-specific agent instructions
- `status.md` / `project_status.md` - current state and running log

## Project Notes

This site is written primarily for Czech history teachers, teacher
educators, and scholars. It should preserve the public aims stated in
`index.Rmd`: make English-language PhD work accessible in Czech, invite
open-science feedback, and return usable materials to cooperating
teachers.

---

**Location**: `~/PhD/projects/phd-public/`
**Last Updated**: 2026-06-16
