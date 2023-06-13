# Container image that runs your code
FROM python:3-slim 

RUN pip3 install --upgrade pip setuptools wheel matplotlib requests IPython pytest

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
    
# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["sh", "/entrypoint.sh"]

