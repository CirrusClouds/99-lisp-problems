;;; P20
(in-package :99problems)

#|| Remove the Kth element of a list
Example: (my-remove 3 '(A B C D E F G)) => (A B C E F G) ||#

(defun my-remove (n xs)
  (if (= n 0)
      (cdr xs)
      (cons (car xs) (my-remove (- n 1) (cdr xs)))))
