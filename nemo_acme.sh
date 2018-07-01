./acme.sh  --installcert  -d  wzili.com  \
--key-file /etc/pki/nginx/wzili.com.key  \
--fullchain-file /etc/pki/nginx/private/wzili.com.crt  \
--reloadcmd "service nginx force-reload"