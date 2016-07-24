;;;; Flatten a nested list structure

;;; Transform a list, possibly holding lists as elements into a `flat' list by
;;; replacing each list with its elements (recursively).

;;; Example:
;;; * (my-flatten '(a (b (c d) e)))
;;; (A B C D E)

;;; Hint: Use the predefined functions list and append.

(defun flatten (orig-list)
  (if (eql orig-list nil)
      nil
      (let ((elem (car orig-list)) (resto-list (cdr orig-list)))
        (if (listp elem)
            (append (flatten elem) (flatten resto-list))
            (append (cons elem nil) (flatten resto-list))))))
