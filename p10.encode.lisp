;;;; Run-length encoding of a list

;;; Use the result of problem P09 to implement the so-called run-length
;;; encoding data compression method. Consecutive duplicates of elements are
;;; encoded as lists (N E) where N is the number of duplicates of the element E.

;;; Example:
;;; * (encode '(a a a a b c c a a d e e e e))
;;; ((4 A) (1 B) (2 C) (2 A) (1 D) (4 E))

(defun encode (lista)
  (if (eql lista nil)
      nil
      (cons (list (length (pega lista)) (car lista)) (encode (tira lista)))))

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
