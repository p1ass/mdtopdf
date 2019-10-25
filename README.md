# pandoc-docker

Pandoc docker image for converting markdown to PDF

## Getting Started

1. Pull docker image.
```bash
docker pull plass/pandoc-docker
```

2. Run docker image.
```bash
docker run -it --rm -v `pwd`:/workdir  plass/pandoc-docker mdtopdf INPUT.md
```

## Advanced Usages

### Generate a pdf file on save

```bash
docker run -it --rm -v `pwd`:/workdir  pl1ass/pandoc-docker watch mdtopdf INPUT.md
```

### Generate a tex file from markdown

```bash
docker run -it --rm -v `pwd`:/workdir  plass/pandoc-docker mdtotex INPUT.md
```
