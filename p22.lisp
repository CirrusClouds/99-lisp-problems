;;; P22
(in-package :99problems)

#|| Make a range function
Example: (my-range 3 5) => (3 4 5) ||#

(defun my-range (m n)
  (if (> m n)
      (loop :for i :from n :to m
            :collect i)
      (loop :for i :from m :to n
            :collect i)))

(defmacro range (m n &optional (step 1))
  `(loop :for i :from ,@(if (> m n)
                            `(,m :downto ,n)
                            `(,m :to ,n))
         :by ,step
         :collect i))
