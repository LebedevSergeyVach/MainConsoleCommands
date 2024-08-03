#!/bin/bash
# Bash script run locoally server an Django application

# Проверяем, передан ли флаг -s или --serphantom
if [[ "$1" == "-s" || "$1" == "--serphantom" ]]; then
    # Переходим в директорию первого проекта
    cd ~/PycharmProjects/SerphantomApplication/ || exit
    # Запускаем сервер с помощью poetry
    poetry run python advertisements/manage.py runserver

# Проверяем, передан ли флаг -w или --website
elif [[ "$1" == "-w" || "$1" == "--website" ]]; then
    # Переходим в директорию второго проекта
    cd ~/PycharmProjects/WebsiteProductPlacement/ || exit
    # Запускаем сервер с помощью poetry
    poetry run python advertisements/manage.py runserver

# Если флаг не передан, выводим сообщение об ошибке
else
    # Если флаг не передан или не распознан, выводим сообщение об ошибке
    echo "Использование: $0 [-s|--serphantom] [-w|--website]"
    exit 1
fi

# chmod +x run_server.sh

#./run_server.sh -s
# или
#./run_server.sh --serphantom

#./run_server.sh -w
# или
#./run_server.sh --website
