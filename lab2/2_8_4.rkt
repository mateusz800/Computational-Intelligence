#lang racket

(define list-ref
  (lambda (ls index)
    (if (= index 0)
        (car ls)
        (list-ref (cdr ls) (- index 1))
        )))

(list-ref '(1 2 3 4) 0)


(define list-tail
  (lambda (ls index)
    (if (= index 0)
        (cdr ls)
        (list-tail (cdr ls) (- index 1))
        )))
