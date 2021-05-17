#lang racket

(define a 1)
(define b 1)
(define c 1)

;a
;original 
(let ([x 'a] [y 'b])
  (list (let ([x 'c]) (cons x y))
        (let ([y 'd]) (cons x y))))

; answer
(let ([x 'a] [y 'b])
  (list (let ([z 'c]) (cons z y))
        (let ([q 'd]) (cons x q))))

;b
;original
(let ([x '((a b) c)])
  (cons (let ([x (cdr x)])
          (car x))
        (let ([x (car x)])
          (cons (let ([x (cdr x)])
                  (car x))
                (cons (let ([x (car x)])
                        x)
                      (cdr x))))))

;answer 
(let ([x '((a b) c)])
  (cons (let ([y (cdr x)])
              (car y))
            (let ([q (car x)])
              (cons (let ([z (cdr q)])
                     (car z))
                    (cons (let ([w (car q)])
                          w)
                    (cdr q)))))) 
                   
                             
                          
    
