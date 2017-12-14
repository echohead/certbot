# certbot

A certbot container for provisioning+renewing letsencrypt certificates.

The container runs forever, creating or renewing the certificates as needed.

## usage

- ensure that the specified domains route to port 80 of the container.
- pass a contact email in the environment
- pass a comma-separated list of domains in the environment.
- mount a host directory to `/etc/letsencrypt` which will contain the certs.

e.g.:
```
docker run -it \
  --rm -p 8001:80 \
  -e 'EMAIL=user@example.com' \
  -e 'DOMAINS=example.com,foo.example.com' \
  echohead/certbot
```

## development

re-build the image locally:

```
make docker
```

push to dockerhub:

```
make release
```

