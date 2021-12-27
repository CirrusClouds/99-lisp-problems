;;; P16
(in-package :99problems)

#|| Drop every nth member of a list
Example: (drop-every-nth '(A B C A B C A B C)) => '(A B A B A B) ||#

(defun drop-every-nth (n xs &optional (acc 1))
  (cond ((null xs) nil)
        ((eq 0 (rem acc n))
         (drop-every-nth n (cdr xs) (+ 1 acc)))
        (t (cons (car xs) (drop-every-nth n (cdr xs) (+ 1 acc))))))
