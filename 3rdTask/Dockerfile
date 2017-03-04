FROM ubuntu:14.04
RUN apt-get update
RUN apt-get -y install python python-pip
RUN pip install Flask
COPY ../1stTask/app.py /
RUN cd / && chmod +x app.py && ./app.py

