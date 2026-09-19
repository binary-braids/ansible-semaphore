FROM semaphoreui/semaphore:v2.19.14@sha256:98ad9bc7a2a03001a725c90d37c9e500b951da3175d51cd36337e9c1cf7ea9aa

USER root 

RUN apk add --no-cache build-base libffi-dev openssl-dev python3-dev krb5 krb5-dev && \
    rm -rf /var/cache/apk/*

RUN pip install pywinrm[kerberos] netaddr

USER semaphore