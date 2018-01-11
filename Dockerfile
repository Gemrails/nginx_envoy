FROM alpine
MAINTAINER pujielan@gmail.com

RUN apk update 
RUN apk add bash nginx wrk
COPY trans.conf /etc/nginx/conf.d/default.conf 
RUN mkdir -p /run/nginx

EXPOSE 8000
CMD ["nginx", "-g", "daemon off;"]
