FROM nginx

RUN rm /etc/nginx/conf.d/default.conf
COPY uwsgi_params /etc/nginx/uwsgi_params
COPY nginx_app.conf /etc/nginx/conf.d/app.conf

CMD /usr/sbin/nginx -g "daemon off;"
