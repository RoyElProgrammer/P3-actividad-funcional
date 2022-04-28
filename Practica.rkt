#lang racket

; Ejercicio 1: Sign
(define (sign a)
  (if (= a 0) 0
      (if (< a 0) -1
      1)
      )
  )
; Casos de prueba Sign
;(sign -5)
;(sign 10)
;(sign 0)

; Ejercicio 2: Pow
(define (pow n p)
  (if (= p 0)
      1
      (* n (pow n (- p 1)))))
; Casos de prueba Pow
;(pow 5 0)
;(pow -5 3)
;(pow 15 12)

; Ejercicio 3: BMI
(define (BMI weight height)
  (define bmi (/ weight (* height height)))
  (if (< bmi 20)
      "underweight"
      (if (< bmi 25)
          "normal"
          (if (< bmi 30)
              "obese1"
              (if (< bmi 40)
                  "obese2"
                  "obese3"
                  )))))
; Casos de prueba BMI
;(BMI 45 1.7) 
;(BMI 55 1.5)
;(BMI 76 1.7)
;(BMI 81 1.6)
;(BMI 120 1.6) 

; Ejercicio 4: Fib
(define i 1)
(define (fib n)
  (if (= n 0)
      0
      (if (= n 1)
          1
          (if (= n 2)
              1
              (+ (fib(- n 1)) (fib (- n 2)))))))
; Casos de prueba Fib
;(fib 6)
;(map fib (range 10))
;(fib 42) 

; Ejercicio 5: Duplicate
(define (duplicate lst)
  (if (null? lst)
      '()
      (cons (car lst) 
      (cons (car lst)
            (duplicate (rest lst))) )))

;Casos de prueba Duplicate
;(duplicate '()) 
;(duplicate '(1 2 3 4 5))
;(duplicate '(a b c d e f g h))

; Ejercicio 6: Enlist
(define (enlist lst)
  (if (null? lst)
      '()
      (cons (list (first lst))
            (enlist (rest lst))) ))

;Casos de prueba Enlist
;(enlist '())
;(enlist '(a b c))
;(enlist '((1 2 3) 4 (5) 7 8))


; Ejercicio 7: Positives
(define lp (list))
(define (positives lst)
  (cond ((empty? lst)
         empty)
        ((if (> (first lst) -1)
         (cons (first lst) (positives (rest lst))) (positives (rest lst)) )) ))

;Casos de prueba Positives
;(positives '()) 
;(positives '(12 -4 3 -1 -10 -13 6 -5))
;(positives '(-4 -1 -10 -13 -5)) 
        

; Ejercicio 8: Add-list
(define sumA 0)
(define (add-list lst)
  (if (empty? lst)
      0
      (+ (car lst) (add-list (rest lst)))))
; Casos prueba Add-list  
;(add-list '()) 
;(add-list '(2 4 1 3))
;(add-list '(1 2 3 4 5 6 7 8 9 10)) 

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




