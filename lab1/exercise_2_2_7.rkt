#lang racket

(car  (car (cdr '((a b) (c d)))))
(car  (cdr (car '((a b) (c d)))))
(car (cdr  (car (cdr '((a b) (c d))))))


(car (list(car (car '((a b) (c d))))))