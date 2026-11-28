FROM semaphoreui/semaphore:v2.20.24@sha256:c547d31cba238bee4a9f2b5eec9d0f42b2d5ecb399377a2e63008500d74fbf3a

USER root 

RUN apk add --no-cache build-base libffi-dev openssl-dev python3-dev krb5 krb5-dev && \
    rm -rf /var/cache/apk/*

RUN pip install pywinrm[kerberos] netaddr

USER semaphore