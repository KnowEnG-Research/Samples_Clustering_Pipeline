FROM ubuntu:14.04
MAINTAINER Dan Lanier <lanier4@illinois.edu>

ENV SRC_LOC /home

# Install packages 
RUN apt-get update && \
    apt-get install -y vim python3-pip git libblas-dev liblapack-dev libatlas-base-dev gfortran libfreetype6-dev libxft-dev 

RUN pip3 install -I numpy==1.11.1 pandas==0.18.1 scipy==0.18.0 scikit-learn==0.17.1 matplotlib==1.4.2 knpackage pyyaml

# Clone from github
RUN git clone https://username:password@github.com/KnowEnG-Research/Samples_Clustering_Pipeline.git ${SRC_LOC} 

# Set up working directory
WORKDIR ${SRC_LOC} 
