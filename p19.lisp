;;; P19
(in-package :99problems)

#|| Rotate a list by n places
Example: (my-rotate 3 '(A B C D E F G)) => '(E F G A B C D) ||#

(defun my-rotate (n xs)
  (cond ((eq n 0)
         xs)
        ((> n 0)
         (my-rotate (- n 1) (cons (car (last xs)) (butlast xs))))
        ((< n 0)
         (my-rotate (+ n 1) (append (cdr xs) (list (first xs)))))))
