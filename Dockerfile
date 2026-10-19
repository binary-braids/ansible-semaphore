FROM semaphoreui/semaphore:v2.19.17@sha256:008dacd9f1adbd92e8a048f1786ae1dd9bed2a352aca2eb30b9837de5706e7f7

USER root 

RUN apk add --no-cache build-base libffi-dev openssl-dev python3-dev krb5 krb5-dev && \
    rm -rf /var/cache/apk/*

RUN pip install pywinrm[kerberos] netaddr

USER semaphore