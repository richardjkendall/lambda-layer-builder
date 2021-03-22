FROM amazonlinux:2

RUN yum update -y
RUN yum install -y python37 zip git python37-devel

ADD https://bootstrap.pypa.io/get-pip.py get-pip.py
RUN chmod 777 get-pip.py

COPY run.sh /run.sh

RUN mkdir /output
RUN chmod 777 /output

RUN mkdir /packages
RUN chmod 777 /packages

RUN adduser build
USER build
RUN python3 get-pip.py --user

ENTRYPOINT ["/run.sh"]
