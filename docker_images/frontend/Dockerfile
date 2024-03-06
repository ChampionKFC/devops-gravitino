FROM node:21.6.2-alpine

RUN apk add xdg-utils && rm -rf /etc/apk/cache

WORKDIR /app

COPY frontend/frontend/ /app

RUN npm install -g npm@10.2.5 && \
    npm install && \
    npm run build:prod

EXPOSE 3001

CMD ["npm", "run", "dev"]
