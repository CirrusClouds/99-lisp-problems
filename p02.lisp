;;; P02
(in-package :99problems)

#|| Find the last-but-one box of a list (without using last)
Example: (my-last '(A B C D)) => (C D) ||#

(defun my-but-last (xs)
  (if (cddr xs)
      (my-but-last (cdr xs))
      xs))
