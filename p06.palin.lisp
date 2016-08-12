;;;; Find out whether a list is a palindrome

;;; A parlindrome can be read forward or backward; e.g. (x a m a x).

(defun palin (lista)
  (equal lista (reverse lista)))
