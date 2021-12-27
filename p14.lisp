;;; P14
(in-package :99problems)

#|| Duplicate the elements of a list
Example: (dupe '(A B C D)) => '(A A B B C C D D) ||#

(defun dupe (xs)
  (if (null xs)
      nil
      (cons (car xs) (cons (car xs) (dupe (cdr xs))))))
