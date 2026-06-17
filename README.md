# CV (Awesome-CV)

Personal CV built with [Awesome-CV](https://github.com/posquit0/Awesome-CV) (class file [awesome-cv.cls](awesome-cv.cls), license [LICENCE](LICENCE)).

## CV — Senior Software Engineer

| Langue | Consulter |
|--------|-----------|
| English | [senior-software-engineer.pdf](https://cdn.jsdelivr.net/gh/lionel-k/cv@main/variants/senior-software-engineer/senior-software-engineer.pdf) |
| Français | [senior-software-engineer-fr.pdf](https://cdn.jsdelivr.net/gh/lionel-k/cv@main/variants/senior-software-engineer-fr/senior-software-engineer-fr.pdf) |

## Dossier de candidature — PAFEN / SETIC (Burundi)

| Document | Consulter |
|----------|-----------|
| Dossier complet (français) | [pafen.pdf](https://cdn.jsdelivr.net/gh/lionel-k/cv@main/variants/pafen/pafen.pdf) |

PDFs on `main` are regenerated automatically by CI on each push. jsDelivr may cache files for up to 7 days; CI purges the cache after each update. For an immediate link to a specific revision, use the commit SHA: `https://cdn.jsdelivr.net/gh/lionel-k/cv@<sha>/variants/pafen/pafen.pdf`.

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

**Dossier PAFEN / SETIC** (candidature institutionnelle) :

```bash
make pafen
```

Output: `variants/pafen/pafen.pdf`

```bash
make clean   # remove PDF and aux files for all variants
```

## Layout

| Path | Purpose |
|------|---------|
| [variants/senior-software-engineer/](variants/senior-software-engineer/) | English CV: edit `cv.tex` (header, contact) and `sections/*.tex` (content). |
| [variants/senior-software-engineer-fr/](variants/senior-software-engineer-fr/) | French CV (same structure, translated content). |
| [variants/database-expert/](variants/database-expert/) | PostgreSQL / data-layer emphasis: same structure, different sections and headline. |
| [variants/pafen/](variants/pafen/) | Dossier institutionnel PAFEN/SETIC : 9 sections + matrice TDR, accent bleu. |
| [template/upstream-examples/](template/upstream-examples/) | Archived Awesome-CV **résumé**, **CV**, and **cover letter** examples for reference. |

## Git remote

- **origin** — `git@github.com:lionel-k/cv.git`

Default branch: **main**.

To pull template updates from the original project, add a remote when needed:  
`git remote add awesome-cv git@github.com:posquit0/Awesome-CV.git`
