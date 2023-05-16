openssl genrsa -out ted-dafi.42.fr.key 2048
openssl req -new -key ted-dafi.42.fr.key -out ted-dafi.42.fr.csr \
-subj "/C=MO/ST=QQ/L=BenGuerir/O=UnknowCompany, Inc./OU=IT/CN=ted-dafi.42.fr"
mkdir /openssl
mv ted-dafi.42.fr.csr /openssl/
nginx -g "daemon off;"