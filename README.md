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
# Render HTML (gitbook)
make html

# Render PDF (memoir class)
make pdf
```

Output goes to `docs/` (served via GitHub Pages with CNAME
`phd.judakaleta.cz`).

## Structure

- `_bookdown.yml` / `_output.yml` — bookdown configuration
- `latex/` — custom LaTeX preamble and class files
- `images/` — cover and logo images
- `data/` — data files used in chapters
- `references.bib` — chapter bibliographies
- `docs/` — rendered output (HTML)

---

**Location**: `~/PhD/projects/phd-public/`
**Last Updated**: 2026-04-07
