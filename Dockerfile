FROM semaphoreui/semaphore:v2.10.11@sha256:3677465bed97bec2726b54bf3b59073d21fe68bd8f2fa3a74bef2f795e0eb423

USER root 

ENV ANSIBLE_VERSION=9.4.0

RUN apk add --no-cache build-base libffi-dev openssl-dev python3-dev krb5 krb5-dev && \
    rm -rf /var/cache/apk/*

RUN source /opt/semaphore/apps/ansible/${ANSIBLE_VERSION}/venv && \
    pip3 install --upgrade pywinrm[kerberos] --target /opt/semaphore/venv/lib/python3.11/site-packages

USER semaphore