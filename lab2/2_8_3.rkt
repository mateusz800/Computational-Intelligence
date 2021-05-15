#lang racket
(define make-list
  (lambda (N obj)
    (if (= N 0)
        '()
        (cons obj (make-list (- N 1) obj))
    )
  )
)

(make-list 8 '())

