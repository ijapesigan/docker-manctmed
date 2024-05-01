FROM ijapesigan/dev:main

ENV R_VERSION="4.4.0"
ENV R_HOME="/usr/local/lib/R"
ENV TZ="Etc/UTC"

RUN /rocker_scripts/install_R_source.sh

ENV CRAN="https://p3m.dev/cran/__linux__/jammy/latest"

RUN /rocker_scripts/setup_R.sh

ENV S6_VERSION="v2.1.0.2"
ENV RSTUDIO_VERSION="2024.04.0+735"
ENV DEFAULT_USER="rstudio"

RUN /rocker_scripts/install_rstudio.sh

EXPOSE 8787
CMD ["/init"]

RUN /rocker_scripts/install_pandoc.sh

RUN /rocker_scripts/install_quarto.sh

# custom

ADD scripts /usr/src/local/src
RUN cd /usr/src/local/src     && \
    chmod 777 setup.sh        && \
    ./setup.sh                && \
    rm -rf /usr/src/local/src

ENV PATH="/opt/TinyTeX/bin/x86_64-linux:${PATH}"

# extra metadata
LABEL org.opencontainers.image.source="https://github.com/ijapesigan/docker-manctmed" \
      org.opencontainers.image.authors="Ivan Jacob Agaloos Pesigan <ijapesigan@gmail.com>"
