FROM nginx

WORKDIR /data

RUN rm -rf /etc/nginx/conf.d/*default.conf

ADD ./nginx.www.muyus.com.conf /etc/nginx/conf.d/
ADD ./nginx.localhost.conf /etc/nginx/conf.d/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
