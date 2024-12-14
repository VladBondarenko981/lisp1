<p align="center"><b>МОНУ НТУУ КПІ ім. Ігоря Сікорського ФПМ СПіСКС</b></p>
<p align="center">
<b>Звіт з лабораторної роботи 1</b><br/>
"Обробка списків з використанням базових функцій"<br/>
дисципліни "Вступ до функціонального програмування"
</p>
<p align="right">Студент: Бойко Дмитро Павлович КВ-11<p>
<p align="right">Рік: 2024<p>
 
## Загальне завдання

   1. Створіть список з п'яти елементів, використовуючи функції LIST і CONS . Форма створення списку має бути одна — використання SET чи SETQ (або інших допоміжних форм) для збереження проміжних значень не допускається. Загальна кількість елементів (включно з підсписками та їх елементами) не має перевищувати 10-12 шт. (дуже великий список робити не потрібно). Збережіть створений список у якусь змінну з SET або SETQ . Список має містити (напряму або у підсписках): 
        • хоча б один символ 
        • хоча б одне число 
        • хоча б один не пустий підсписок 
        • хоча б один пустий підсписок
   2. Отримайте голову списку.
   3. Отримайте хвіст списку.
   4. Отримайте третій елемент списку.
   5. Отримайте останній елемент списку.
   6. Використайте предикати ATOM та LISTP на різних елементах списку (по 2-3 приклади для кожної функції).
   7. Використайте на елементах списку 2-3 інших предикати з розглянутих у розділі 4 навчального посібника.
   8. Об'єднайте створений список з одним із його непустих підсписків. Для цього використайте функцію APPEND.

```
;create list
[1]> (setq first-list (cons 'A (list 123 (list 'B 4) () "hello")))
(A 123 (B 4) NIL "hello")

;car example
[2]> (car first-list)
A

;cdr example
[3]> (cdr first-list)
(123 (B 4) NIL "hello")

;third example
[4]> (third first-list)
(B 4)

;last example
[5]> (car (last first-list))
"hello"

;atom examples
[6]> (atom (car first-list))
T
[7]> (atom (third first-list))
NIL
[8]> (atom (car (last first-list)))
T

;listp examples
[9]> (listp (third first-list))
T
[12]> (listp (car first-list))
NIL
[13]> (listp (cdr (third first-list)))
T

;other predicates
[14]> (+ 10 (second first-list))
133
[15]> (numberp (car first-list))
NIL
[16]> (eql (second first-list) 123)
T

;append example
[17]> (append first-list (third first-list))
(A 123 (B 4) NIL "hello" B 4)
```
## Варіант 2
![image](https://github.com/user-attachments/assets/831e595c-8c9f-4e00-a2f4-ee325b80e887)

<p align="center">
<img src="Lab-1-variant-2.png">
</p>

```

[1]> (defvar second-list nil)
SECOND-LIST
[2]> (defvar mini-list nil)
MINI-LIST
[3]> (setq mini-list '(A 2 1) second-list (list mini-list 'B (cdr mini-list) 'C))
((A 2 1) B (2 1) C)
```

