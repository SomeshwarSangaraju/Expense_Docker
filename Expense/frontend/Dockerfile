# FROM nginx:1.24.0-perl
# RUN rm -rf /usr/share/nginx/html/
# RUN rm -rf /etc/nginx/nginx.conf
# RUN rm -rf /etc/nginx/default.d/
# COPY .conf /etc/nginx/default.d/expense.conf
# COPY static /usr/share/nginx/html/


FROM nginx:1.24.0-perl
EXPOSE 80
RUN rm -rf /usr/share/nginx/html/index.html
RUN rm -rf /etc/nginx/nginx.conf
RUN rm -rf /etc/nginx/conf.d/default.conf
COPY expense.conf /etc/nginx/expense.conf
COPY static /usr/share/nginx/html/