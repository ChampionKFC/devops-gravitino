#!/bin/sh

# Выполнить миграции
npm run migrate:up

# Запустить приложение через pm2-runtime
pm2-runtime start npm -- run start:dev --name gravitino_prod
