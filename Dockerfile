FROM caddy:2.7.5-builder as builder

RUN xcaddy build v2.7.4 \
    --with github.com/caddy-dns/cloudflare

FROM caddy:2.7.5

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
