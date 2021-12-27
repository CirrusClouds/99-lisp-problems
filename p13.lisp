;;; P13
(in-package :99problems)

#|| Run direct length-encoding of a list
Example: (length-encoding '(A A B C C C D)) => '((2 A) B (3 C) D) ||#

(defun direct-encoding (xs)
  (cond ((null xs) nil)
        ((not (equal (car xs) (cadr xs))) (cons (car xs) (direct-encoding (cdr xs))))
        (t (group (car xs) xs))))

(defun group (sym xs)
  (let ((count 0))
    (loop :for x :in xs
          :until (not (equal x sym))
          :do (setf count (+ 1 count)))
    (cons (list count sym) (direct-encoding (subseq xs count)))))
