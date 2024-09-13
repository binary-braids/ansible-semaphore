FROM semaphoreui/semaphore:v2.10.22@sha256:2a2df841e4b6b33e82f87101e942ab6008207bd3b8e936bc9a48e2eea3671498

USER root 

ENV ANSIBLE_VERSION=9.4.0

RUN apk add --no-cache build-base libffi-dev openssl-dev python3-dev krb5 krb5-dev && \
    rm -rf /var/cache/apk/*

RUN source /opt/semaphore/apps/ansible/${ANSIBLE_VERSION}/venv && \
    pip3 install --upgrade pywinrm[kerberos] --target /opt/semaphore/apps/ansible/9.4.0/venv/lib/python3.11/site-packages && \
    pip3 install netaddr --target /opt/semaphore/apps/ansible/9.4.0/venv/lib/python3.11/site-packages

USER semaphore