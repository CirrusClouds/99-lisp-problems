;;; P21
(in-package :99problems)

#|| Insert something at the Kth element of a list
Example: (my-insert 3 '(A B C D E F G)) => (A B C 3 D E F G) ||#

(defun my-insert (n thing xs)
  (if (= n 0)
      (cons thing xs)
      (cons (car xs) (my-insert (- n 1) thing (cdr xs)))))
