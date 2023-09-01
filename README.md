# docker-caddy-cloudflare

A container image for [caddyserver/caddy][a] with the dns.providers.cloudflare module included

### Development

The [`dns.providers.cloudflare`][b] module  does not have versioned releases. To update the version referenced in `go.mod`,
run the following:

```shell
docker compose run --rm go
unset GOPATH
go get github.com/caddy-dns/cloudflare
```

The module versions specified in `go.mod` do not affect the module versions in the container image. Update `Dockerfile`
to set the version of caddy in the image. The `dns.providers.cloudflare` module will always be the latest available
version at the time the image is built.

[a]: https://github.com/caddyserver/caddy
[b]: https://github.com/caddy-dns/cloudflare
