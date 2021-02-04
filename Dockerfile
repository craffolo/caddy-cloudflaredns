FROM caddy:builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare

FROM arm32v7/caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
