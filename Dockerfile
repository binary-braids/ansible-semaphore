FROM semaphoreui/semaphore:v2.16.47@sha256:71aabf9314d1051ab92025f26809daea72bd90cb78a6a2badfe15400acf11619

USER root 

RUN apk add --no-cache build-base libffi-dev openssl-dev python3-dev krb5 krb5-dev && \
    rm -rf /var/cache/apk/*

RUN pip install pywinrm[kerberos] netaddr

USER semaphore