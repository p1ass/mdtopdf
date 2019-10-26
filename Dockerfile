FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive

ADD mdtopdf /usr/local/bin
ADD mdtotex /usr/local/bin
ADD mdtopdf-2cols /usr/local/bin
ADD mdtotex-2cols /usr/local/bin
ADD watcher /usr/local/bin
ADD w-mdtopdf /usr/local/bin
ADD w-mdtotex /usr/local/bin
ADD w-mdtopdf-2cols /usr/local/bin
ADD w-mdtotex-2cols /usr/local/bin
ADD crossref_config.yaml /config/crossref_config.yaml

RUN apt update && \
        apt upgrade -y && \
        apt install wget texlive-luatex texlive-lang-cjk lmodern texlive-xetex -y && \
        apt-get clean

RUN wget https://github.com/jgm/pandoc/releases/download/2.7.2/pandoc-2.7.2-1-amd64.deb && \
        dpkg -i pandoc-2.7.2-1-amd64.deb && \
        wget https://github.com/lierdakil/pandoc-crossref/releases/download/v0.3.4.1/linux-pandoc_2_7_2.tar.gz && \
        tar -zxvf linux-pandoc_2_7_2.tar.gz && \
        mv pandoc-crossref /usr/local/bin



VOLUME /workdir
WORKDIR /workdir
