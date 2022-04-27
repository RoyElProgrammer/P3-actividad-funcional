#lang racket

#|
(define (sign a)
  (if (= a 0) 0
      (if (< a 0) -1
      1)
      )
  )
|#

; Ejercicio 9: Invert-pairs
(define (reverse-pair lst)
  (cons (second lst) (cons (first lst) empty)))

(define (invert-pairs lst)
  (if (null? lst)
      '()
      (cons (reverse-pair (first lst))
            (invert-pairs (rest lst)))))

; Casos prueba Invert-pairs
;(invert-pairs '()) 
;(invert-pairs '((a 1)(a 2)(b 1)(b 2)))
;(invert-pairs '((January 1)(February 2)(March 3))) 

; Ejercicio 10: Swapper
(define (swapper str1 str2 lst)
  (cond ((empty? lst)
         empty)
        ((equal? str1 (first lst))
         (cons str2 (swapper str1 str2 (rest lst))))
        ((equal? str2 (first lst))
         (cons str1 (swapper str1 str2 (rest lst))))
        (else
         (cons (first lst) (swapper str1 str2 (rest lst))))))
;Casos prueba de swapper
;(swapper 'x 'y '(a x b c y d x y))
;(swapper '1 '2 '(1 2 3 4 2 1 3 2))
;(swapper 'x 'y '())






        




  