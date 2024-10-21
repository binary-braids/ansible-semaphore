FROM semaphoreui/semaphore:v2.10.32@sha256:14d33a823ccae6fc9be20109286f0a4d46f9d37f7b4bce3076e0f737b6882e23

USER root 

RUN apk add --no-cache build-base libffi-dev openssl-dev python3-dev krb5 krb5-dev && \
    rm -rf /var/cache/apk/*

RUN pip install pywinrm[kerberos] netaddr

USER semaphore