#Download base image
FROM ubuntu:latest

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive

#Definig an environment variable 
ENV VERSION="1.0.2"
#ARG buildtime_variable=default_value

# Update Ubuntu Software repository
RUN apt update

# Install from ubuntu repository, with the "yes" flag
RUN apt update && apt install -y python3 python3-pip vim zip unzip
   
#RUN $ 
#sudo apt-get install software-properties-common
#sudo add-apt-repository ppa:deadsnakes/ppa
#sudo apt-get update
#sudo apt-get install python3.8 
