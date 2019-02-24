# pandoc image for converting markdown to PDF

## Usage

1. Pull docker image.
```bash
docker pull naokikishi/pandoc-docker
```

2. Run docker image.
```bash
docker run -it --rm -v `pwd`:/workdir  naokikishi/pandoc-docker mdtopdf INPUT.md
```