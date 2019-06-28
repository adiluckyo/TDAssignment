FROM osixia/openldap:latest
RUN apt update
RUN apt install -y vim 
RUN apt install -y expect
COPY devopsuser.ldif devopsuser.ldif
COPY autoadduser.sh autoadduser.sh
