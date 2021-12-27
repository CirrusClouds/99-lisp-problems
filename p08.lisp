;;; P08
(in-package :99problems)

#|| Eliminate consecutive duplicates in a list
Example: (compress '(A A B C C C D)) => '(A B C D) ||#

(defun compress (xs)
  (cond ((null xs) nil)
        ((equal (car xs) (cadr xs))
         (compress (cdr xs)))
        (t
         (cons (car xs) (compress (cdr xs))))))
