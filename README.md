# Виселица

Консольная игра 'Виселица' на языке Ruby. В вашей среде запуска должен быть установлен интерпретатор Ruby.

Программа загадывает случайное **слово**. У **игрока** есть 7 попыток отгадать его, вводя по одной букве за раз. После неугаданной буквы, она попадает в список с ошибочными вариантами и игра приближается к проигрышу. Количество ошибок отображается на экране.

Есть возможность играть как с русскими словами, так и иностранными. Для этого надо пополнить список потенциальных к загадыванию слов в файле ```data/words.txt```.
Необходимо прописывать **слово** в верхнем регистре, каждое на отдельной строчке.

7 ошибок - поражение. **Игрок** повешен.

Для запуска - скачать репозиторий, установить(если нет) Bundler.

**Подготовка**

```
bundle install
```

**Старт игры**

```
bundle exec ruby main.rb
```

**Пример игрового интерфейса:**

```
Слово: Г О __ Ф __ __
          _______
          |/
          |     ( )
          |      |
          |
          |
          |
          |
          |
        __|________
        |         |

Ошибки (2): Х, У
У вас осталось ошибок: 5

Введите следующую букву:
```

Автор игры: Дмитрий Журавлев, совместно с **goodprogrammer.ru**
