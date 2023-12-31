FROM caddy:2.7.6-builder as builder

RUN xcaddy build v2.7.6 \
    --with github.com/caddy-dns/cloudflare

FROM caddy:2.7.6

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
