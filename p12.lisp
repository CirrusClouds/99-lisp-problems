;;; P12
(in-package :99problems)

#|| Decode a length-encoded list
Example: (compress '((2 A) B (3 C) D) => '((A A) B (C C C) D) ||#

(defun decode (xs)
  (cond ((null xs) nil)
        ((atom (car xs))
         (cons (car xs) (decode (cdr xs))))
        (t
         (cons (loop :repeat (first (car xs))
                     :appending (last (car xs)))
               (decode (cdr xs))))))
