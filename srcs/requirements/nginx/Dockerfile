FROM alpine:latest
RUN apk update;\
	apk add nginx;\
	adduser -D -g 'www' www;\
	mkdir www;
COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY conf/index.html /www/index.html
COPY tools /tools
# CMD ["nginx", "-g", "daemon off;"]
CMD ["sh" , "tools/nginx.sh"]


