;;; P07
(in-package :99problems)

#|| Flatten a list
Example: (my-flatten '(A '(B C) B A)) => '(A B C B A) ||#

(defun my-flatten (xs)
  (cond ((null xs) nil)
        ((atom (first xs)) (cons (first xs) (my-flatten (cdr xs))))
        (t
         (append (my-flatten (first xs)) (my-flatten (cdr xs))))))
