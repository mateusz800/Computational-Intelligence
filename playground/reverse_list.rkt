#lang racket

; reverse list

(define f
 (lambda (ls)
 (let g ((ls ls) (n '()))
 (if (null? ls)
 n
 (g (cdr ls) (cons (car ls) n))))))


 (f (list 5 7 9 11))
(f '(dd ee aa cc))


(define last
  (lambda (ls)
    (if (eq? (cdr ls) '())
        (car ls)
        (last (cdr ls))
        )))

(define f2
  (lambda (ls)
    (if (equal? (cdr ls) '())
        (cons (car ls) '())
        (append (f2 (cdr ls)) (f2 (cons (car ls) '()))))))
        

 (f2 (list 5 7 9 11))