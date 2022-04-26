#lang racket

(define (sign a)
  (if (= a 0) 0
      (if (< a 0) -1
      1)
      )
  )

(define (pow n p)
  (if (= p 0)
      1
      (* n (pow n (- p 1)))))