FROM nginx:stable
RUN echo "<h2> BUILD USING TERRAFORM v2 in $HOSTNAME </h2>" > /usr/share/nginx/html/index.html
RUN df -h >> /usr/share/nginx/html/index.html
RUN echo $DOCKERNAME >> /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
