;;;; fenghan trial common lisp file

(defvar *x*
  '((1 4 7)
    (2 5 8)
    (3 6 9)))
(defvar *y*
  '(("these" "pretzels" "are")
    ("making" "me" "thirsty")))


(defun transpose (L)
  (if (atom (car L)) nil
      (cons (mapcar #'first L) (transpose (mapcar #'cdr L)))))

*x*
(transpose *x*)








                                        ;(def)

                                        ;(defun WRONG-FUNCTION-1 (&rest rest) '())
;;  (defun WRONG-FUNCTION-1 (&rest rest) (cons (mapcar #'car rest) (WRONG-FUNCTION-1 (mapcar #'cdr rest))))
                                        ;(defun transpose (L) (apply #'mapcar (cons #'WRONG-FUNCTION-1 L)))
