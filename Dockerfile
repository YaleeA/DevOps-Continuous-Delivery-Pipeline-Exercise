#Download base image
FROM ubuntu:latest

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive

#Definig an environment variable 
ENV VERSION="1.0.2"
#ARG buildtime_variable=default_value

#Coping the zip_job.py 
COPY zip_job.py /tmp/

# Install from ubuntu repository, with the "yes" flag
RUN apt update && apt install -y python3 python3-pip vim zip unzip

#Printing OS type and architercture + verifing that zip_job.py exists
CMD cat /etc/os-release; uname -m; ls /tmp/zip_job.py


