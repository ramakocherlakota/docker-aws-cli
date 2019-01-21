FROM python:3

RUN pip install awscli
RUN pip install boto3

VOLUME /work



