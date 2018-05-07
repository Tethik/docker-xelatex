FROM ubuntu
MAINTAINER tethik@gmail.com

LABEL version="1.0.0"

# Install all TeX and LaTeX dependences
RUN apt update && \
  apt install --yes --no-install-recommends \
  git \
  ca-certificates \
  make \
  texlive-fonts-recommended \
  texlive-generic-recommended \
  texlive-lang-english \
  texlive-lang-italian \
  texlive-latex-extra \
  texlive-xetex \
  lmodern 

# Export the output data
WORKDIR /data
VOLUME ["/data"]
