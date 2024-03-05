# Use the rocker/binder container image with version 4.0.1 as the base.
# It contains RStudio and R with geospatial libraries,
# as the rocker/binder container image is based on geospatial container image.
# For details see:
# https://github.com/rocker-org/rocker-versioned2/blob/master/dockerfiles/binder_4.0.3.Dockerfile
FROM rocker/binder:4.0.1

# Declare an argument for the user inside the container image
# For rocker/binder the default is NB_USER
# ARG NB_USER

# Copy all files in from the repository to the home directory of the user inside the container image.
# At the same time, set the ownership of the files to the user inside the container.
COPY --chown=${NB_USER} . ${HOME}

# If there is an install.R script in the current directory, execute it.
# This is typically used for installing R dependencies.
RUN if [ -f install.R ]; then R --quiet -f install.R; fi
