#lang slideshow

(define black-square
  (colorize (filled-rectangle 10 10) "black"))

(define red-square
  (colorize (filled-rectangle 10 10) "red"))

(define make-list
  (lambda (N obj obj2)
    (if (= N 0)
        '()
        (cond
          [(even? N)  (cons obj (make-list (- N 1) obj obj2))]
          [else (cons obj2 (make-list (- N 1) obj obj2))]
       )
    )
  )
)

(define chessboard
  (lambda (size)
    (define row1 (apply hc-append (make-list size red-square black-square)))
    (define row2 (apply hc-append(make-list size black-square red-square)))
    (define board (make-list size row1 row2))
    (apply vc-append board)
  ))

(chessboard 10)


