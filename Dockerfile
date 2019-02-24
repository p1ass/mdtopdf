FROM haskell:8.6
RUN apt-get update && \
		apt-get upgrade -y && \
		cabal update && \
		cabal install pandoc pandoc-citeproc pandoc-crossref && \
		apt-get install texlive-luatex texlive-lang-cjk lmodern texlive-xetex -y

ADD mdtopdf /bin
ADD mdtotex /bin
ADD crossref_config.yaml /config/crossref_config.yaml

VOLUME /workdir
WORKDIR /workdir