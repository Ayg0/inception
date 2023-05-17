mkdir /openssl
openssl req -x509 -nodes -days 365 -subj \
            "/C=MO/ST=QQ/L=BenGuerir/O=UnknowCompany, Inc./OU=IT/CN=ted-dafi.42.fr" \
            -addext "subjectAltName=DNS:ted-dafi.42.fr" \
            -newkey rsa:2048 -keyout /openssl/ssl_prv.key \
            -out /openssl/ted-dafi.42.fr.crt;
nginx -g "daemon off;"