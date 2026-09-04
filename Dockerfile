FROM ghcr.iomhsanaei3x-uilatest

# نصب Caddy و ابزارهای مورد نیاز
RUN apt-get update && 
    apt-get install -y caddy gettext-base curl && 
    rm -rf varlibaptlists

WORKDIR app

# کپی کردن فایل‌های تنظیمات
COPY Caddyfile.template etccaddyCaddyfile.template
COPY entrypoint.sh entrypoint.sh

RUN chmod +x entrypoint.sh

ENTRYPOINT [entrypoint.sh]