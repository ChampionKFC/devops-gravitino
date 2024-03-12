FROM node:21.6.2-alpine

# Создаем рабочую директорию для копирования файлов
WORKDIR /app

# Копируем файлы и папки из ../repos/backend/backend/ в контейнер
COPY . /app

# Выполняем установку зависимостей и сборку проекта
RUN npm install -g npm@10.2.5 && \
    npm install && \
    npm run build && \
    npm install -g pm2

EXPOSE 3000
# Команда для запуска приложения с помощью pm2
CMD ["pm2-runtime", "start", "npm", "--", "run", "start:dev", "--name", "gravitino_prod"]
