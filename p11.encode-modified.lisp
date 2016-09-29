;;;; Modified run-length encoding

;;; Modify the result of problem P10 in such a way that if an element has no
;;; duplicates it is simply copied into the result list. Only elements with
;;; duplicates are transferred as (N E) lists.

;;; Example:
;;; * (encode-modified '(a a a a b c c a a d e e e e))
;;; ((4 A) B (2 C) (2 A) D (4 E))

(defun encode (lista)
  (if (eql lista nil)
      nil
      (if (= (length (pega lista)) 1)
          (cons (car lista) (encode (tira lista)))
          (cons (list (length (pega lista)) (car lista))
                (encode (tira lista))))))

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
