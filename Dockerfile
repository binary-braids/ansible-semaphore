FROM semaphoreui/semaphore:latest

USER root 

RUN apk add --no-cache krb5 krb5-dev && \
    rm -rf /var/cache/apk/*

RUN source /opt/semaphore/venv/bin/activate && \
    pip3 install --upgrade pywinrm[kerberos] --target /opt/semaphore/venv/lib/python3.11/site-packages

USER semaphore