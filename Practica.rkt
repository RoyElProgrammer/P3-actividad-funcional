#lang racket

#|
(define (sign a)
  (if (= a 0) 0
      (if (< a 0) -1
      1)
      )
  )
|#

; Ejercicio 10: Swapper
(define (swapper str1 str2 los)
  (cond ((empty? los)
         empty)
        ((symbol=? str1 (first los))
         (cons str2 (swapper str1 str2 (rest los))))
        ((symbol=? str2 (first los))
         (cons str1 (swapper str1 str2 (rest los))))
        (else
         (cons (first los) (swapper str1 str2 (rest los))))))

;(swapper 'x 'y '(a x b c y d x y))


  