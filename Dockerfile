FROM semaphoreui/semaphore:v2.10.22@sha256:2a2df841e4b6b33e82f87101e942ab6008207bd3b8e936bc9a48e2eea3671498

USER root 

RUN apk add --no-cache build-base libffi-dev openssl-dev python3-dev krb5 krb5-dev && \
    rm -rf /var/cache/apk/*

RUN pip install pywinrm[kerberos] netaddr

USER semaphore