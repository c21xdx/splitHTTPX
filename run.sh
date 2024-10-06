sed -i "s/app_passid/$PASSID/" /app/config.json
/app/xray -c /app/config.json &
caddy reverse-proxy --from :$CADDY_PORT --to :3333
