FROM semaphoreui/semaphore:latest

USER root
RUN apk add --no-cache python3 py3-pip krb5
RUN pip install pywinrm pykerberos requests

USER semaphore