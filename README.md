# CV (Awesome-CV)

Personal CV built with [Awesome-CV](https://github.com/posquit0/Awesome-CV) (class file [awesome-cv.cls](awesome-cv.cls), license [LICENCE](LICENCE)).

## Build

Requires a full TeX install with **XeLaTeX** (e.g. TeX Live).

From the repository root:

```bash
make
```

This compiles the **Senior Software Engineer** CV to:

`variants/senior-software-engineer/senior-software-engineer.pdf`

```bash
make clean   # remove PDF and aux files in that variant folder
```

## Layout

| Path | Purpose |
|------|---------|
| [variants/senior-software-engineer/](variants/senior-software-engineer/) | Active CV: edit `cv.tex` (header, contact) and `sections/*.tex` (content). |
| [template/upstream-examples/](template/upstream-examples/) | Archived upstream **résumé**, **CV**, and **cover letter** examples for reference. |
| `upstream` git remote | Points at `posquit0/Awesome-CV` for pulling template updates. |

To add another role later, copy `variants/senior-software-engineer/` to a new folder, adjust `\position` and sections, and add a Makefile target (same pattern as the current variant).

## Git remotes

- **origin** — `git@github.com:lionel-k/cv.git`
- **upstream** — Awesome-CV template (optional)

Default branch: **main**.
