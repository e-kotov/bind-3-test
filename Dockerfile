FROM rocker/binder:4.0.1

COPY --chown=${NB_USER} . ${HOME}


## Run an install.R script, if it exists.
RUN if [ -f install.R ]; then R --quiet -f install.R; fi