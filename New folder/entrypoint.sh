#!/bin/bash

# جایگذاری متغیر PORT در کانفیگ Caddy
envsubst '${PORT}' < /etc/caddy/Caddyfile.template > /etc/caddy/Caddyfile

# اجرای پنل سنایی در پس‌زمینه
/app/x-ui &

# اجرای وب‌سرور Caddy در پیش‌زمینه
exec caddy run --config /etc/caddy/Caddyfile --adapter caddyfile