FROM nginx:alpine

ARG OWNER="YourName"

COPY clock.html /usr/share/nginx/html/index.html

RUN sed -i "s/__NAME__/${OWNER}/g" /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]