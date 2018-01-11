# docker-secrets-example
This trivial example allows for passing secret to service

Steps followed for this example
1. Initialize swarm cluster:  
  `docker swarm init`
1. Create secret greeting:  
  `echo "Hello, " | docker secret create greeting -`
1. Build image:  
  `docker build . -t simple`
1. Run stack service:  
  `docker stack deploy -c docker-compose.yml simple-stack`
1. View logs on running container:  
  `docker logs $(docker ps | grep simple | awk  '{print $1}')`

## Expected output:
Output:  
```
Here is the secret greeting: for Brian
Hello, Brian
```

## Credit:
Credit for this implementation comes from this [gist](https://gist.github.com/bvis/b78c1e0841cfd2437f03e20c1ee059fe#file-env_secrets_expand-sh)
