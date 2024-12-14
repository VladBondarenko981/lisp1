;; Створення списку
(setq my-list (cons 'X (list 456 (list 'C 7) () "world")))

;; Операції над списком
(format t "Голова списку: ~A~%" (car my-list))
(format t "Хвіст списку: ~A~%" (cdr my-list))
(format t "Третій елемент списку: ~A~%" (third my-list))
(format t "Останній елемент списку: ~A~%" (car (last my-list)))

;; Використання предикатів
(format t "ATOM (голова): ~A~%" (atom (car my-list)))
(format t "ATOM (третій): ~A~%" (atom (third my-list)))
(format t "LISTP (третій): ~A~%" (listp (third my-list)))

;; Інші перевірки
(format t "NUMBERP (другий): ~A~%" (numberp (second my-list)))
(format t "EQL (другий = 456): ~A~%" (eql (second my-list) 456))
(format t "NULL (четвертий): ~A~%" (null (fourth my-list)))

;; Об'єднання списків
(format t "Об'єднаний список: ~A~%" (append my-list (third my-list)))
