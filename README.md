# pandoc-docker 🐳

pandoc-docker is the  pandoc docker image for converting markdown to PDF using TeX typesetting.

## Examples

You can see example markdown file and converted PDF file from the link below👇

[example markdown](examples/example.md)

[example converted PDF](examples/example.pdf)

## Getting Started

1. Pull docker image.
```bash
docker pull plass/pandoc
```

⚠️ This docker image size is **1.68GB**. I recommend pulling it using the fast Internet connection.

2. Generate PDF file.
```bash
docker run -it --rm -v `pwd`:/workdir  plass/pandoc mdtopdf INPUT.md
```

## Advanced Usages

### Generate PDF file on save

```bash
docker run -it --rm -v `pwd`:/workdir  plass/pandoc watch mdtopdf INPUT.md
```

### Generate tex file from markdown

```bash
docker run -it --rm -v `pwd`:/workdir  plass/pandoc mdtotex INPUT.md
```
