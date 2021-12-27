;;; P11
(in-package :99problems)

#|| Run modified length-encoding of a list
Example: (compress '(A A B C C C D)) => '((A A) B (C C C) D) ||#

(defun pack-encode2 (xs)
  (cond ((null xs) nil)
        ((atom (car xs)) (cons (car xs) (pack-encode2 (cdr xs))))
        (t
         (cons (list (length (car xs)) (caar xs)) (pack-encode2 (cdr xs))))))

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
