;;; P04
(in-package :99problems)

#|| Find the number of elements of a list (without using length)
Example: (my-length '(A B C D)) => 4 ||#

(defun my-length (xs &optional (acc 0))
  (if (car xs)
      (my-length (cdr xs) (+ acc 1))
      acc))

(defun my-length2 (xs)
  (if (null xs)
      0
      (+ 1 (my-length (cdr xs)))))
