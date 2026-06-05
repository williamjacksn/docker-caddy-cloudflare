# docker-caddy-cloudflare

A container image for [caddyserver/caddy][a] with the [dns.providers.cloudflare][b] module included

[a]: https://github.com/caddyserver/caddy
[b]: https://github.com/caddy-dns/cloudflare

### Development

The module versions specified in `go.mod` do not affect the module versions in the container image.
They are only present to facilitate Dependabot notifications when a new version of the Cloudflare
provider is available.

Update `Dockerfile` to set the version of caddy and caddy-dns/cloudflare in the image.
