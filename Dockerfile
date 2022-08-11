# comment
# escape=\
FROM ubuntu:latest
MAINTAINER Alex-Yakov alex.yakov1109@gmail.com 
# i entered my version
LABEl version="1.0"
# i installed the python
RUN apt-get update && \
	apt-get install -y python3 && \
	echo "shshshhshs"
#i added the simple skript on py
WORKDIR /app
COPY ./deeper/helloOs.py /app/
# environment variable that will be considered by my skript
ENV PERSON_NAME="BeBrA"
# print my working dir
#i use entrypoint because I do not want someone to 
#change the application in the future when the container is launched 
ENTRYPOINT ["/usr/bin/python3", "helloOs.py"]
#CMD ["/usr/bin/python3", "./hello.py"]
