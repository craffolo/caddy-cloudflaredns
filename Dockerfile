FROM caddy:builder@sha256:29d475ed8f6b1887ab0b0cced3b7c58df9a0e84ccb9043ee076f94b8827aef9c AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare

FROM caddy:latest@sha256:8d7dd8d7f22f669d44669e643d61092c90ec7c1bcd4704e119d72715dc4b7de1

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
