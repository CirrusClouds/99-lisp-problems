;;; P17
(in-package :99problems)

#|| Split a list into 2 parts given by a number
Example: (my-split 3 '(A B C D E F G)) => '(A B C) ||#

(defun my-split (n xs)
  (if (eq n 0)
      nil
      (cons (car xs) (my-split (- n 1) (cdr xs)))))
