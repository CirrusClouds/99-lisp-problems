;;; P05
(in-package :99problems)

#|| Reverse a list (without using reverse)
Example: (my-reverse '(A B C D)) => (D C B A) ||#

(defun my-reverse (xs &optional (acc '()))
  (if (car xs)
      (my-reverse (cdr xs) (cons (car xs) acc))
      acc))
