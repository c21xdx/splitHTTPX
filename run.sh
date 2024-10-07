sed -i "s/app_passid/$PASSID/" /app/config.json
nohup caddy reverse-proxy --from :$CADDY_PORT --to :3333 2>&1 &
/app/xray -c /app/config.json
