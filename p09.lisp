;;; P09
(in-package :99problems)

#|| Pack consecutive duplicates in a list into sublists
Example: (compress '(A A B C C C D)) => '((A A) B (C C C) D) ||#

(defun compressbox (xs)
  (cond ((null xs) nil)
        ((equal (car xs) (cadr xs))
         (cons (group (car xs) xs) (no-group (car xs) xs)))
        (t
         (cons (car xs) (compressbox (cdr xs))))))

(defun group (sym xs)
  (if (equal sym (car xs))
      (cons (car xs) (group sym (cdr xs)))
      nil))

(defun no-group (sym xs)
  (if (equal sym (car xs))
      (no-group sym (cdr xs))
      (compressbox xs)))
