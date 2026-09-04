FROM caddy:2-alpine AS caddy_bin

FROM ghcr.io/mhsanaei/3x-ui:latest

# کپی کردن مستقیم فایل اجراکننده Caddy
COPY --from=caddy_bin /usr/bin/caddy /usr/bin/caddy

WORKDIR /app

COPY Caddyfile /etc/caddy/Caddyfile
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
