FROM alpine:3.19.1

WORKDIR /hw
COPY get-requester.sh .
RUN chmod +rwx get-requester.sh

ENTRYPOINT ["/bin/bash", "/hw/get-requester.sh"]