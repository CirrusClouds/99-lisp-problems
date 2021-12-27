;;; P10
(in-package :99problems)

#|| Run length-encoding of a list
Example: (compress '(A A B C C C D)) => '((2 A) (1 B) (3 C) (1 D)) ||#

(defun pack-encode (xs)
  (cond ((null xs) nil)
        ((atom (car xs)) (cons (list 1 (car xs)) (pack-encode (cdr xs))))
        (t
         (cons (list (length (car xs)) (caar xs)) (pack-encode (cdr xs))))))

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
