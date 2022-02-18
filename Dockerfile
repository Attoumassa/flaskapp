# Use base image
FROM ubuntu:18.04

LABEL  maintainer="Attoumassa SAMAKE <attoumassa@gmail.com>"

# Install python and pip
RUN apt-get update -y
#RUN apt-get update
RUN apt-get install -y python3.8
#RUN apt update 
RUN apt install -y python3-pip

# Install Flask needded by pathon app
#RUN apt update 
RUN pip3 install flask
# copy python file
COPY app.py /
# copy html file
COPY templates/index.html /


#COPY ./requirements.txt /
# the container should expose port
#EXPOSE 80


# run the application
ENTRYPOINT FLASK_APP=app.py flask run --host=0.0.0.0

