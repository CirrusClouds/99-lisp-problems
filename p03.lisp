;;; P03
(in-package :99problems)

#|| Find the Kth element of a list (without using nth)
Example: (my-nth 2 '(A B C D)) => C ||#

(defun my-nth (n xs)
  (if (> n (length xs))
      (error "This is longer than the list")
      (if (= n 0)
          (car xs)
          (my-nth (- n 1) (cdr xs)))))
