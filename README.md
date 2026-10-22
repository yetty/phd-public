---
status: active
end: ongoing (public site maintained for the duration of the PhD)
drive:
---
# Judovo ověřování historického myšlení (public site)

> Goal: Czech-facing bookdown site <https://phd.judakaleta.cz/> sharing
> preliminary PhD findings and materials with Czech history teachers,
> teacher educators and scholars - Done when: no fixed end; the site stays
> current with the PhD outputs.
> State (2026-10-22): site live with the 029 (HPT and extremism) and 030
> (epistemic knowledge pilot) chapters; 030 public data last refreshed on
> 2026-06-16, before the final phd-030 lock.

## Next steps
- [ ] Rerun `scripts/update_030_public_data.R` against the final locked
  phd-030 export and rebuild, so 030 numbers use the final data
- [ ] Decide whether to add an explicit PDF Makefile target for local PDF
  checks (CI already renders a PDF)

## Drive
- 029 chapter materials linked from `029-hpt-a-extremismus.Rmd`
  (section *Materiály*):
  - [Stručný výzkumný záměr](https://docs.google.com/document/d/1dVALx38nJEfqsNkWrgBRTvNikQI5fTJ3-S9JJCXsd5Q/edit?usp=sharing):
    research outline (English)
  - [Mini test znalostí](https://docs.google.com/document/d/10geollT853sY61kzo2I76jjGK4XT5bYbCAtHSZfF6s8/edit?usp=sharing):
    knowledge mini-test (teacher-only)
  - [Překlad HPT dotazníku](https://docs.google.com/document/d/1MdAjadyAtGVR-gfEgizH5-RXEBgc0I-cpo3qNG2VAtY/edit?usp=sharing):
    Czech HPT questionnaire (teacher-only)
  - [Adaptace FR-LF + KSA + SDR](https://docs.google.com/document/d/1qkEgybQVgHTRuyUbPhlDYg0_SjQLAxq9gkS4jzUj5e8/edit?usp=sharing):
    Czech attitude scales (teacher-only)
  - [Google Form šablona](https://docs.google.com/forms/d/1cL_q5lPQ6lpoHRFE_gyXv6z8oWWou6jrpHVk1lYWTsQ/copy):
    copyable online questionnaire for pupils
  - [Papírová verze (Docs)](https://docs.google.com/document/d/1oEAfcp7fBjfRQW56GQSGQ9JG2QocuZivh3VRTWBxK6U/edit?usp=sharing),
    [PDF 1 list](https://drive.google.com/file/d/1I2cWLWs26P0-rOVmPBtnIV9M_F-htyk3/view?usp=sharing),
    [PDF 2 listy](https://drive.google.com/file/d/1IZKhkWbS8PiEFHFpI_FTiZxQ3RfPY8Vw/view?usp=sharing):
    printable pupil versions
- No project Drive folder recorded.

## Notes
- [overview.md](overview.md): contents, build, structure, audience
  (in the root because `docs/` is generated output)
- `index.Rmd`: site introduction and public aims
- `029-hpt-a-extremismus.Rmd`, `030-epistemic-knowledge-pilot-1.Rmd`:
  chapter sources
- `scripts/update_030_public_data.R`: refresh public-safe 030 aggregates
  from the phd-030 export
- `.github/workflows/memoir.yml`: CI render and GitHub Pages deploy
- `../../archive/project-status/phd-public/`: retired status files

## Log
- 2026-01/02 bookdown site set up with GitHub Actions build and Pages
  deploy; custom domain `phd.judakaleta.cz`; 029 report and codebook added
- 2026-02-20 030 epistemic knowledge pilot chapter added
- 2026-06-16 project instruction and status files initialised
- 2026-06-16 030 public results, item examples and sample tables added
  from public-safe aggregate RDS exported from phd-030
- 2026-10-14 AGENTS.md merged into a short CLAUDE.md (AGENTS.md is a
  symlink)
