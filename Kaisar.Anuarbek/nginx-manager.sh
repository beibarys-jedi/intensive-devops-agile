#!/bin/bash

CONTAINER_NAME="my-nginx"

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
  cleanup)
	echo "Контейнер остановлен и удален"
	docker stop $CONTAINER_NAME && \ 
	docker rm $CONTAINER_NAME && \
	docker rmi "sha256:2cd1d97f893f70cee86a38b7160c30e5750f3ed6ad86c598884ca9c6a563a501"
	;;
  *)
    echo "Использование: $0 {start|stop|restart|status|logs}"
    exit 1
    ;;
esac
