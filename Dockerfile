# out base image
FROM rocker/geospatial
MAINTAINER Chenliang Wang<chenliangwang08ms@gmail.com>

# Some useful environmental variables
ENV  DEBIAN_FRONTEND noninteractive

# Install
RUN R --quiet -e "devtools::install_github('ramnathv/slidify')" && \
    R --quiet -e "devtools::install_github('ramnathv/slidifyLibraries')" && \
   rm -rf /tmp/downloaded_packages/ /tmp/*.rds 


