FROM caddy:builder AS builder

RUN caddy-builder \
    github.com/caddy-dns/cloudflare

FROM caddy:latest-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
