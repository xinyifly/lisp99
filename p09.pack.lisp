;;;; Pack consecutive duplicates of list elements into sublists

;;; If a list contains repeated elements they should be placed in separate
;;; sublists.

;;; Example:
;;; * (pack '(a a a a b c c a a d e e e e))
;;; ((A A A A) (B) (C C) (A A) (D) (E E E E))

(defun pack (lista)
  (if (eql lista nil)
      nil
      (cons (pega lista) (pack (tira lista)))))

(defun pega (lista)
  (cond ((eql lista nil) nil)
        ((eql (cdr lista) nil) lista)
        ((equal (car lista) (cadr lista))
         (cons (car lista) (pega (cdr lista))))
        (t (list (car lista)))))

(defun tira (lista)
  (cond ((eql lista nil) nil)
        ((eql (cdr lista) nil) nil)
        ((equal (car lista) (cadr lista))
         (tira (cdr lista)))
        (t (cdr lista))))
