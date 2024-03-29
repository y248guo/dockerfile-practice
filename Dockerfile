# Author: Simon Guo
# Adapted from Tiffany Timbers's example
# Source: https://github.com/ttimbers/dockerfile-practice/blob/main/Dockerfile

FROM debian:stable

RUN apt-get update

RUN apt-get install r-base r-base-dev -y 

RUN Rscript -e "install.packages('cowsay')"

RUN Rscript -e "install.packages('fortunes')"
