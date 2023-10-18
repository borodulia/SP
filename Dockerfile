# Используем базовый образ Alpine Linux
FROM alpine:latest

# Устанавливаем необходимые пакеты
RUN apk --no-cache add cdrkit

# Копируем скрипт для создания образа CD-диска в контейнер
COPY create_cd_image.sh /create_cd_image.sh

# Делаем скрипт исполняемым
RUN chmod +x /create_cd_image.sh

# Устанавливаем переменные окружения для диалога с пользователем
ENV AUTHOR="AB_739"
ENV PROGRAM_NAME="CD Image Creator"
ENV DESCRIPTION="This program creates a CD image from a specified directory."

# Запускаем скрипт при запуске контейнера
CMD ["/create_cd_image.sh"]
