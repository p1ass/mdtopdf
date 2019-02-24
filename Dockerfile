FROM haskell:8.6 as builder
RUN cabal new-update && \
		cabal new-install pandoc pandoc-citeproc pandoc-crossref

FROM debian
RUN apt update && \
		apt upgrade -y && \
		apt install texlive-luatex texlive-lang-cjk lmodern texlive-xetex -y

RUN apt-get clean

COPY --from=builder /root/.cabal /root/.cabal/
ENV PATH $PATH:/root/.cabal/bin
ADD mdtopdf /usr/local/bin
ADD mdtotex /usr/local/bin
ADD crossref_config.yaml /config/crossref_config.yaml

VOLUME /workdir
WORKDIR /workdir