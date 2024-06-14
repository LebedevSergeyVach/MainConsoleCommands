# Main Console Commands
### Набор основных консольных команд с описанием для работы с: git, ssh, директории, репозитории.

---

### [Лебедев Сергей Вячеславович](https://github.com/LebedevSergeyVach) – Руководитель README.md

---

### • [Основные команды для работы с Git](https://github.com/LebedevSergeyVach/MainConsoleCommands?tab=readme-ov-file#основные-команды-для-работы-с-git)
### • [Основные команды для работы с директориями](https://github.com/LebedevSergeyVach/MainConsoleCommands?tab=readme-ov-file#основные-команды-для-работы-с-директориями)
### • [Основные команды для работы с SSH](https://github.com/LebedevSergeyVach/MainConsoleCommands?tab=readme-ov-file#основные-команды-для-работы-с-ssh)
### • [Создание нового репозитория на GitHub](https://github.com/LebedevSergeyVach/MainConsoleCommands?tab=readme-ov-file#создание-нового-репозитория-на-github)

---

# Основные команды для работы с Git

| Команда                              | Описание                                                                                        |
|--------------------------------------|-------------------------------------------------------------------------------------------------|
| `git init`                           | Инициализирует новый репозиторий Git в текущей директории.                                      |
| `git clone [url]`                    | Клонирует существующий репозиторий по указанному URL.                                           |
| `git add [file]`                     | Добавляет изменения в файле в индекс для последующего коммита.                                  |
| `git commit -m "[message]"`          | Фиксирует изменения в индексе с сообщением о коммите.                                           |
| `git reset HEAD~`                    | Отменить коммит, но оставить изменения в рабочей директории.                                    |
| `git reset --soft HEAD~`             | Отменить коммит и изменения в индексе, но оставить изменения в рабочей директории.              |
| `git reset --hard HEAD~`             | Отменить коммит и все изменения в рабочей директории.                                           |
| `git status`                         | Показывает текущее состояние репозитория.                                                       |
| `git push [remote] [branch]`         | Отправляет локальные коммиты в удаленный репозиторий.                                           |
| `git pull [remote] [branch]`         | Получает изменения из удаленного репозитория и сливает их с текущей веткой.                     |
| `git branch`                         | Перечисляет все ветки в репозитории и указывает текущую ветку.                                  |
| `git checkout [branch]`              | Переключается на указанную ветку.                                                               |
| `git merge [branch]`                 | Сливает указанную ветку с текущей веткой.                                                       |
| `git log`                            | Показывает историю коммитов.                                                                    |
| `git remote add [remote-name] [url]` | Добавляет удаленный репозиторий с указанным именем и URL.                                       |
| `git diff`                           | Показывает различия между рабочим каталогом и индексом.                                         |
| `git reset [file]`                   | Убирает файл из индекса, но оставляет изменения в рабочем каталоге.                             |
| `git stash`                          | Сохраняет текущие изменения в стеш, чтобы можно было переключиться на другую ветку без коммита. |

---

# Основные команды для работы с директориями

| Команда                            | Описание                                                                   | Пример использования                 |
|------------------------------------|----------------------------------------------------------------------------|--------------------------------------|
| `pwd`                              | Показывает текущую рабочую директорию.                                     | `pwd`                                |
| `cd [directory]`                   | Переходит в указанную директорию.                                          | `cd /path/to/directory`              |
| `ls`                               | Список файлов и директорий в текущей директории.                           | `ls`                                 |
| `mkdir [directory]`                | Создает новую директорию.                                                  | `mkdir new-directory`                |
| `rmdir [directory]`                | Удаляет пустую директорию.                                                 | `rmdir empty-directory`              |
| `rm -r [directory]`                | Удаляет директорию и все её содержимое рекурсивно.                         | `rm -r directory`                    |
| `cp -r [source] [destination]`     | Копирует директорию и её содержимое рекурсивно.                            | `cp -r source-dir destination-dir`   |
| `mv [source] [destination]`        | Перемещает или переименовывает файл или директорию.                        | `mv old-name new-name`               |
| `touch [file]`                     | Создает новый пустой файл или обновляет время доступа существующего файла. | `touch newfile.txt`                  |
| `cat [file]`                       | Выводит содержимое файла на экран.                                         | `cat filename.txt`                   |
| `less [file]`                      | Постранично выводит содержимое файла.                                      | `less largefile.txt`                 |
| `head [file]`                      | Выводит первые 10 строк файла.                                             | `head filename.txt`                  |
| `tail [file]`                      | Выводит последние 10 строк файла.                                          | `tail filename.txt`                  |
| `find [directory] -name [pattern]` | Ищет файлы и директории по указанному шаблону.                             | `find /path/to/search -name "*.txt"` |
| `grep [pattern] [file]`            | Ищет строки, соответствующие шаблону, в файле.                             | `grep "search-term" filename.txt`    |
| `chmod [permissions] [file]`       | Изменяет права доступа к файлу или директории.                             | `chmod 755 script.sh`                |
| `chown [user]:[group] [file]`      | Изменяет владельца и группу файла или директории.                          | `chown user:group filename.txt`      |

---

# Основные команды для работы с SSH

| Команда                                                         | Описание                                                         | Пример использования                                    |
|-----------------------------------------------------------------|------------------------------------------------------------------|---------------------------------------------------------|
| `ssh [user]@[host]`                                             | Подключается к удаленному серверу по SSH.                        | `ssh user@example.com`                                  |
| `ssh -i [keyfile] [user]@[host]`                                | Подключается к удаленному серверу по SSH с использованием ключа. | `ssh -i ~/.ssh/id_rsa user@example.com`                 |
| `scp [file] [user]@[host]:[destination]`                        | Копирует файл на удаленный сервер по SSH.                        | `scp document.txt user@example.com:~/`                  |
| `scp [user]@[host]:[file] [destination]`                        | Копирует файл с удаленного сервера по SSH.                       | `scp user@example.com:~/document.txt .`                 |
| `ssh-keygen`                                                    | Генерирует SSH ключи для аутентификации.                         | `ssh-keygen -t rsa -b 4096 -C "your_email@example.com"` |
| `ssh-copy-id [user]@[host]`                                     | Копирует SSH ключ на удаленный сервер для беспарольного доступа. | `ssh-copy-id user@example.com`                          |
| `ssh [user]@[host] -p [port]`                                   | Подключается к удаленному серверу по указанному порту.           | `ssh user@example.com -p 2222`                          |
| `ssh [user]@[host] -L [local_port]:[remote_host]:[remote_port]` | Создает туннель SSH для перенаправления портов.                  | `ssh user@example.com -L 8080:localhost:80`             |
| `ssh [user]@[host] -R [remote_port]:[local_host]:[local_port]`  | Создает туннель SSH для обратного перенаправления портов.        | `ssh user@example.com -R 2222:localhost:22`             |
| `ssh [user]@[host] -D [port]`                                   | Создает SOCKS5 прокси через SSH.                                 | `ssh user@example.com -D 1080`                          |

---

# Создание нового репозитория на GitHub

### 1. Инизилизируем git в корне созданного проекта
```commandline
git init
```

### 2. Создаем новый репозиторий На [GitHub](github.com/new)
#### Название удаленного репозитория как у проекта
```commandline
github.com/new
```

### 3. Связываем проект с удаленным репозиторием на GitHub
#### [URL repository SSH] - сслыка на удаленный репозиторий (пример: git@github.com:LebedevSergeyVach/MainConsoleCommands.git)
```commandline
git remote add origin [URL repository]
```

### 4. Даем имя текущей ветки на GitHub
#### [branch name] - название вети проекта (пример: main)
```commandline
git branch -M [branch name]
```

### 5. Добавляем все файлы проекта
```commandline
git add .
```

### 6. Создаем первый коммит проекта
#### "[message]" - текст коммит-а (пример: Initial commit)
```commandline
git commit -m "[message]"
```

### 7. Отправляем проект на удаленный репозиторий
#### [branch name] - - название вети проекта, такое же как в команде git branch -M [branch name]
```commandline
git push -u origin [branch name]
```

---

#### [README.md](README.md)
