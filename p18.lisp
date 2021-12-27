;;; P18
(in-package :99problems)

#|| slice a list into 2 parts given by a start and end
Example: (my-slice 3 5 '(A B C D E F G)) => '(C D E) ||#

(defun my-slice (start end xs)
  (cond ((or (> end (length xs)) (> start (length xs)))
         (error "start or end can't be past length of list"))
        ((> start end)
         (my-slice end start xs))
        ((eq start 1)
         (my-split end xs))
        (t
         (my-slice (- start 1) (- end 1) (cdr xs)))))
