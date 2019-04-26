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

## Advanced Usage

### Generate pdf on save
1. Setup file watcher script.
[ファイルの変更を定期的に監視して、特定のコマンドを実行するシェルスクリプト](https://qiita.com/tamanobi/items/74b62e25506af394eae5)

2. Watch your markdown file
```bash
mywatch report.md  'docker run -it --rm -v `pwd`:/workdir  naokikishi/pandoc-docker mdtopdf INPUT.md'
```
