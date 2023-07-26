FROM nginx
RUN command echo "daemon off;" >>/etc/nginx/nginx.conf
COPY ./app /usr/share/nginx/html
EXPOSE 80
CMD ["/usr/sbin/nginx","-c","/etc/nginx/nginx.conf"]