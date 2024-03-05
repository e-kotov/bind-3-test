# Use the rocker/binder container image with version 4.0.1 as the base.
# It contains RStudio and R with geospatial libraries,
# as the rocker/binder container image is based on geospatial container image.
# For details see:
# https://github.com/rocker-org/rocker-versioned2/blob/master/dockerfiles/binder_4.0.3.Dockerfile
FROM rocker/binder:4.0.1


# Copy all files in from the repository to the home directory
# of the user inside the container image.
# This is needed so that R and Rmd files, as well as data, if any,
# are available in the container when is starts in the web browser.
#
# While copying, set the ownership of the files to the user inside the container.
# The name of the user inside the container is stored in the NB_USER variable,
# which is predefined in the source conatiner here:
# https://github.com/rocker-org/rocker-versioned2/blob/2db571dc64e401936ee14f64e454eaaba4f3d16f/dockerfiles/binder_4.0.3.Dockerfile#L8
COPY --chown=${NB_USER} . ${HOME}


# If there is an install.R script in the current directory, execute it to install packages
# If there is no file, no additional packages will be installed and the container will
# simply start with default pacakges included in the rocker/geospatial container image.
RUN if [ -f install.R ]; then R --quiet -f install.R; fi
