#lang racket

(define last
  (lambda (ls)
    (if (eq? (cdr ls) '())
        (car ls)
        (last (cdr ls))
        )))

(last '(a b c d e))