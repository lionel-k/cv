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

**Database expert** (PostgreSQL-focused) variant:

```bash
make dba
```

Output: `variants/database-expert/database-expert.pdf`

```bash
make clean   # remove PDF and aux files for both variants
```

## Layout

| Path | Purpose |
|------|---------|
| [variants/senior-software-engineer/](variants/senior-software-engineer/) | Default CV: edit `cv.tex` (header, contact) and `sections/*.tex` (content). |
| [variants/database-expert/](variants/database-expert/) | PostgreSQL / data-layer emphasis: same structure, different sections and headline. |
| [template/upstream-examples/](template/upstream-examples/) | Archived Awesome-CV **résumé**, **CV**, and **cover letter** examples for reference. |

## Git remote

- **origin** — `git@github.com:lionel-k/cv.git`

Default branch: **main**.

To pull template updates from the original project, add a remote when needed:  
`git remote add awesome-cv git@github.com:posquit0/Awesome-CV.git`
