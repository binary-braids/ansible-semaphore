FROM semaphoreui/semaphore:v2.19.12@sha256:3996804607ebb63690528185bb9adc3507ee896851098e4453975f2ce7f8b435

USER root 

RUN apk add --no-cache build-base libffi-dev openssl-dev python3-dev krb5 krb5-dev && \
    rm -rf /var/cache/apk/*

RUN pip install pywinrm[kerberos] netaddr

USER semaphore