;;;; fenghan trial common lisp file


(defparameter *log-with-value* nil)
(print "semut starting")
;; you must write this macro
(defmacro log-form-with-value (form)
  "records the body form, and the form's return value
   to the list *log-with-value* and then evalues the body normally"
  `(let ((retval ,form))
     (push (list :form ',form :value retval) *log-with-value*)
     retval))

(macroexpand-1 (log-form-with-value 33))
(print "semut add 33")
(print *log-with-value*)


(macroexpand-1 (log-form-with-value (* 2 23 43)))
(print "semut add '(* 2 23 43)")
(print *log-with-value*)
