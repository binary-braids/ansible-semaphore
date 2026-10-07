FROM semaphoreui/semaphore:v2.19.16@sha256:3707a971a57fdc5ac99a184bf83f2efb7d00cbeec8fb08a16a8028f77229e141

USER root 

RUN apk add --no-cache build-base libffi-dev openssl-dev python3-dev krb5 krb5-dev && \
    rm -rf /var/cache/apk/*

RUN pip install pywinrm[kerberos] netaddr

USER semaphore