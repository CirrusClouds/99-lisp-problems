;;; P15
(in-package :99problems)

#|| Replicate the elements of a list by a given number of times
Example: (replicate 3 '(A B C D)) => '(A A A B B B C C C D D D) ||#

(defun replicate (n xs)
  (if (null xs)
      nil
      (append (loop :for i :upto (- n 1)
                  :collect (car xs))
            (replicate n (cdr xs)))))
