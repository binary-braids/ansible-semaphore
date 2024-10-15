FROM semaphoreui/semaphore:v2.10.30@sha256:a37a460809b0df8822d2139c8f3f26857d942fd41daaf1191d03abdd3aa256ca

USER root 

RUN apk add --no-cache build-base libffi-dev openssl-dev python3-dev krb5 krb5-dev && \
    rm -rf /var/cache/apk/*

RUN pip install pywinrm[kerberos] netaddr

USER semaphore