# out base image
FROM rocker/geospatial
MAINTAINER Chenliang Wang<chenliangwang08ms@gmail.com>

# Some useful environmental variables
ENV  DEBIAN_FRONTEND noninteractive

# Install
RUN install2.r --error trelliscope caTools && \
    R --quiet -e "devtools::install_github('ramnathv/slidify')" && \
    R --quiet -e "devtools::install_github('ramnathv/slidifyLibraries')" && \
    R --quiet -e "devtools::install_github('seifer08ms/rmarkmap')" && \
   rm -rf /tmp/downloaded_packages/ /tmp/*.rds 


