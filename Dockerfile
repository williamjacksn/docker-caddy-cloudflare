FROM caddy:2.8.4-builder as builder

RUN xcaddy build v2.8.4 \
    --with github.com/caddy-dns/cloudflare

FROM caddy:2.8.4

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
