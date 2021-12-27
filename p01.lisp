;;; P01
(in-package :99problems)

#|| Find the last box of a list (without using last)
Example: (my-last '(A B C D)) => D ||#

(defun my-last (xs)
  (if (null (cdr xs))
      xs
      (my-last (cdr xs))))
