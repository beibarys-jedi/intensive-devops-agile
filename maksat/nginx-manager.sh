#!/bin/bash

CONTAINER_NAME="my-nginx3"

case $1 in
  start)
    echo "Запуск контейнера..."
    docker start $CONTAINER_NAME
    ;;
  stop)
    echo "Остановка контейнера..."
    docker stop $CONTAINER_NAME
    ;;
  restart)
    echo "Перезапуск контейнера..."
    docker restart $CONTAINER_NAME
    ;;
  status)
    echo "Статус контейнера:"
    docker ps -a --filter name=$CONTAINER_NAME
    ;;
  logs)
    echo "Логи контейнера:"
    docker logs $CONTAINER_NAME
    ;;
  *)
    echo "Использование: $0 {start|stop|restart|status|logs}"
    exit 1
    ;;
esac
