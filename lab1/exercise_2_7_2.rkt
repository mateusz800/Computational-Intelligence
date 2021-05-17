#lang racket

(define shorter
  (lambda (lst1 lst2)
         (if (> (length lst1) (length lst2))
             (car (cons lst2 '()))
             (car (cons lst1 '()))
    
    )))


(shorter '(a b) '(c d e))

(shorter '(a b) '(c d))
(shorter '(a b) '(c))