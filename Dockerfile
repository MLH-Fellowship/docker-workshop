
FROM node:14
COPY ./ /app
WORKDIR /app
RUN npm install && npm run build

FROM nginx
RUN mkdir /app
COPY --from=0 /app/dist /app
COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY conf/snakeoil.conf /etc/nginx/snakeoil.conf

RUN apt-get update \
      && apt-get install -y apache2-utils ssl-cert

