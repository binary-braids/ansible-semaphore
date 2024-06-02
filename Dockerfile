FROM semaphoreui/semaphore:latest

USER root 

RUN apk add --no-cache krb5 && \
    rm -rf /var/cache/apk/*

RUN source /opt/semaphore/venv/bin/activate && \
    pip3 install --upgrade pykerberos && \
    pip3 install --upgrade pywinrm --target /opt/semaphore/venv/lib/python3.11/site-packages

USER semaphore