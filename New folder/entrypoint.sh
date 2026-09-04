#!/bin/bash

# اجرای پنل سنایی در پس‌زمینه
/app/x-ui &

# اجرای وب‌سرور Caddy
exec caddy run --config /etc/caddy/Caddyfile --adapter caddyfile
