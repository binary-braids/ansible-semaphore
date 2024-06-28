FROM semaphoreui/semaphore:v2.19.10@sha256:679886dd72096249b49e5d35c81a68e7b5c4dceb2c80b231fada78f12e6f683b

USER root 

ENV ANSIBLE_VERSION=9.4.0

RUN apk add --no-cache build-base libffi-dev openssl-dev python3-dev krb5 krb5-dev && \
    rm -rf /var/cache/apk/*

RUN source /opt/semaphore/apps/ansible/${ANSIBLE_VERSION}/venv && \
    pip3 install --upgrade pywinrm[kerberos] --target /opt/semaphore/venv/lib/python3.11/site-packages

USER semaphore