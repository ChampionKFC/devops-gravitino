FROM node:21.6.2-alpine as build-stage

RUN apk add xdg-utils && rm -rf /etc/apk/cache

WORKDIR /app

COPY . /app

RUN npm install -g npm@10.2.5 && \
    npm install && \
    npm run build:prod

EXPOSE 3001

CMD ["npm", "run", "dev"]

#FROM nginx:1.25.1 as prod-stage

#COPY --from=build-stage /app/dist /usr/share/nginx/html

#EXPOSE 80

#CMD ["nginx", "-g", "daemon off;"]
