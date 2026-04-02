# Upstream Awesome-CV examples (archive)

These files mirror the original [posquit0/Awesome-CV](https://github.com/posquit0/Awesome-CV) `examples/` layout for reference: full CV, résumé, and cover letter.

- `awesome-cv.cls` is a symlink to the class at the repository root (`../../awesome-cv.cls`).
- Each `.tex` entry uses `\documentclass[11pt, a4paper]{../../awesome-cv}`.

Build from the repository root (so paths resolve), for example:

```bash
xelatex -output-directory=template/upstream-examples template/upstream-examples/cv.tex
```

Do not commit generated PDFs or LaTeX aux files from this folder unless you choose to.
