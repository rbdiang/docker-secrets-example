FROM alpine

COPY env_secrets_expand.sh /env_secrets_expand.sh
COPY my.sh /my.sh
ENTRYPOINT "/my.sh"
