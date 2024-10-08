#!/bin/bash 
# Shebang (#!/bin/bash): Указывает, что скрипт должен быть выполнен с использованием bash.

# Указываем путь к исходному файлу main.c
SOURCE_FILE="main.c"

# Указываем путь к выходному исполняемому файлу
OUTPUT_FILE="main.exe"

# Проверяем, существует ли файл main.c
if [ ! -f "$SOURCE_FILE" ]; then
  echo "Ошибка: Файл $SOURCE_FILE не найден."
  exit 1
fi

# Компилируем main.c с помощью gcc
echo "Компиляция $SOURCE_FILE ..."
gcc "$SOURCE_FILE" -o "$OUTPUT_FILE"

# Проверяем, успешно ли прошла компиляция
if [ $? -ne 0 ]; then
  echo -e "-----------------------------------------\nОшибка: Компиляция завершилась с ошибкой."
  exit 1
fi

# Запускаем скомпилированный исполняемый файл
echo -e "Запуск $OUTPUT_FILE ... \n-----------------------------------------"
./"$OUTPUT_FILE"

# Проверяем, успешно ли завершилась программа
if [ $? -ne 0 ]; then
  echo -e "-----------------------------------------\nОшибка: Выполнение $OUTPUT_FILE завершилось с ошибкой."
  rm "$OUTPUT_FILE"
  exit 1
fi

# Удаляем скомпилированный исполняемый файл
rm "$OUTPUT_FILE"

# echo "Программа успешно выполнена, скомпилированный исполняемый файл удален."
