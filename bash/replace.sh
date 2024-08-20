#!/bin/bash
# Замена строки в файле

# Переходим в корень проекта
cd ..

# Полуаем аргументами: Файл, строку для замены и саму замену

# Первый аргумент
# read -p "Enter the file name : " FILE
FILE=$1
# Второй аргумент
# read -p "Enter old string string: " OLDSTRING
OLDSTRING=$2
# Третий аргумент
# read -p "Enter new string for replace: " NEWSTRING
NEWSTRING=$3

# Проводим замену строки в файле
sed -I '' "s|$OLDSTRING|$NEWSTRING|" $FILE

# Узнаем все необходимые данные для лога
PWD=$(stat -f%R $FILE)
SIZE=$(stat -f%z $FILE)
DATA=$(date -r $FILE "+%Y-%m-%d %H:%M")
SHA=$(shasum -a 256 $FILE | awk '{print $1}')

# Логируем все данные в файл src/files.log
echo $PWD - $SIZE - $DATA - $SHA - sha256 >> src/files.log
