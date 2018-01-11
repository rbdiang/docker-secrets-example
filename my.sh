#!/bin/sh

source /env_secrets_expand.sh

echo "Here is the secret greeting: for $NAME"
echo "${GREET}${NAME}"
while : ;
do
  sleep 2
done
