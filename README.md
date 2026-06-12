# CV (Awesome-CV)

Personal CV built with [Awesome-CV](https://github.com/posquit0/Awesome-CV) (class file [awesome-cv.cls](awesome-cv.cls), license [LICENCE](LICENCE)).

## CV — Senior Software Engineer

| Langue | Télécharger |
|--------|-------------|
| English | [senior-software-engineer.pdf](https://github.com/lionel-k/cv/raw/main/variants/senior-software-engineer/senior-software-engineer.pdf) |
| Français | [senior-software-engineer-fr.pdf](https://github.com/lionel-k/cv/raw/main/variants/senior-software-engineer-fr/senior-software-engineer-fr.pdf) |

PDFs on `main` are regenerated automatically by CI on each push.

## Build

Requires a full TeX install with **XeLaTeX** (e.g. TeX Live).

From the repository root:

```bash
make
```

This compiles both **Senior Software Engineer** CVs:

- `variants/senior-software-engineer/senior-software-engineer.pdf` (English)
- `variants/senior-software-engineer-fr/senior-software-engineer-fr.pdf` (French)

French variant only:

```bash
make sse-fr
```

**Database expert** (PostgreSQL-focused) variant:

```bash
make dba
```

Output: `variants/database-expert/database-expert.pdf`

```bash
make clean   # remove PDF and aux files for all variants
```

## Layout

| Path | Purpose |
|------|---------|
| [variants/senior-software-engineer/](variants/senior-software-engineer/) | English CV: edit `cv.tex` (header, contact) and `sections/*.tex` (content). |
| [variants/senior-software-engineer-fr/](variants/senior-software-engineer-fr/) | French CV (same structure, translated content). |
| [variants/database-expert/](variants/database-expert/) | PostgreSQL / data-layer emphasis: same structure, different sections and headline. |
| [template/upstream-examples/](template/upstream-examples/) | Archived Awesome-CV **résumé**, **CV**, and **cover letter** examples for reference. |

## Git remote

- **origin** — `git@github.com:lionel-k/cv.git`

Default branch: **main**.

To pull template updates from the original project, add a remote when needed:  
`git remote add awesome-cv git@github.com:posquit0/Awesome-CV.git`
