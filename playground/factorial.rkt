#lang racket

; simple recursion

(define factorial
  (lambda (n k)
    (if (> n k)
         (* n (factorial (- n k) k))
        n
       )))

(factorial 4 1)
