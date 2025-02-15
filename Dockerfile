FROM semaphoreui/semaphore:v2.12.14@sha256:890cb4f2fdfa03d78cdd7138fdd239ad74c2a64823d973e90006d5e606df7e89

USER root 

RUN apk add --no-cache build-base libffi-dev openssl-dev python3-dev krb5 krb5-dev && \
    rm -rf /var/cache/apk/*

RUN pip install pywinrm[kerberos] netaddr

USER semaphore