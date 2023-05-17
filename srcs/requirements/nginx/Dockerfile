FROM alpine:latest
RUN apk update;\
	apk add nginx;\
	apk add openssl;\
	adduser -D -g 'www' www;\
	mkdir www;
COPY conf/nginx.conf /etc/nginx/http.d/default.conf
COPY conf/index.html /www/index.html
COPY tools /tools
CMD ["sh" , "tools/nginx.sh"]


