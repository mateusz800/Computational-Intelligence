#lang racket

;a
(println "a)")
(define a 1)
(define b 2)

;(+ (- (* 3 a) b) (+ (* 3 a) b))

(let ([3a (* 3 a)])
  (+ (- 3a b) (+ 3a b)))

;b
(println "b)")
(define c 3)
;(cons (car (list a b c)) (cdr (list a b c)))

(let ([x (list a b c)])
  (cons (car x) (cdr x)))
