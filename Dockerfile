FROM caddy:2.9.1-builder AS builder

RUN xcaddy build v2.9.1 \
    --with github.com/caddy-dns/cloudflare@v0.1.0

FROM caddy:2.9.1

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
RUN /usr/bin/caddy version
RUN /usr/bin/caddy list-modules --skip-standard --versions
