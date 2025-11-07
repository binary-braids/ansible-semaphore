FROM semaphoreui/semaphore:v2.16.45@sha256:979a5924ed459d5169178197fc7b4d849bcb6fbb4aded1f1d1c0b279717b5187

USER root 

RUN apk add --no-cache build-base libffi-dev openssl-dev python3-dev krb5 krb5-dev && \
    rm -rf /var/cache/apk/*

RUN pip install pywinrm[kerberos] netaddr

USER semaphore