FROM ubuntu:14.04
RUN apt-get update
RUN apt-get -y install python python-pip curl wget
RUN pip install Flask
COPY app.py /

RUN cd / && chmod +x app.py 

