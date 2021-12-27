;;; P06
(in-package :99problems)

#|| Find out whether a list is a palindrome
Example: (palindrome '(A B B A)) => t ||#

(defun palindrome (xs)
  (let ((reversedxs (my-reverse xs)))
    (every (lambda (x) (equal x t))
           (mapcar (lambda (x y)
                     (equal x y))
                   xs reversedxs))))
