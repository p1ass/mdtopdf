# mdtopdf 🐳

mdtopdf is the pandoc docker image for converting markdown to PDF using TeX typesetting.

## Examples

You can see example markdown file and converted PDF file from the link below👇

[example markdown](examples/example.md)

[example converted PDF](examples/example.pdf)

![Top Image](top_image.png)

## Getting Started

1. Pull docker image.
```bash
$ docker pull plass/mdtopdf
```

⚠️ This docker image size is **1.68GB**. I recommend pulling it using the fast Internet connection.

2. Generate PDF file.
```bash
$ docker run -it --rm -v `pwd`:/workdir plass/mdtopdf mdtopdf INPUT.md
```

## Advanced Usages

### Set alias

You can decrease typing using `alias` command as below,

```bash
$ echo "alias mdtopdf='docker run -it --rm -v `pwd`:/workdir plass/mdtopdf mdtopdf'" >> ~/.bash_profile
$ echo "alias w-mdtopdf='docker run -it --rm -v `pwd`:/workdir  plass/mdtopdf watch mdtopdf'" >> ~/.bash_profile
$ source ~/.bash_profile
 
$ mdtopdf INPUT.md
$ w-mdtopdf INPUT.md
```

**zsh** : Modify `.zshrc` instead of `.bash_profile`.  
**Ubuntu** : Modify `.bashrc` instead of `.bash_profile`.

### Generate PDF file on save

```bash
$ docker run -it --rm -v `pwd`:/workdir  plass/mdtopdf watch mdtopdf INPUT.md
```

### Generate tex file from markdown

```bash
$ docker run -it --rm -v `pwd`:/workdir  plass/mdtopdf mdtotex INPUT.md
```
