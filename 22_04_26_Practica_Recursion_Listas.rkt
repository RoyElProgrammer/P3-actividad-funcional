#lang racket
; 
; Nombre
; Matrícula

; Práctica: Introducción a recursión


; comentarios
#| comentario de más de una línea |#

#|
;-------------------------------------------------
; ------ Ejercicio: Fórmula gneral
;-------------------------------------------------
; ecuación cuadrática
(define (discriminante a b c)
  (- (* b b) (* 4 a c)))

(define (raizP a b c)
  (/ (+ (* b -1) (sqrt(discriminante a b c))) (* 2 a)))

(define (raizN a b c)
  (/ (- (* b -1) (sqrt(discriminante a b c))) (* 2 a)))

(define (cuadratica a b c)
  (cons (raizP a b c) (raizN a b c)))
(cuadratica 2 4 2); -1
(cuadratica 1 -2 2)
(cuadratica 1 -5 6)

|#

#|
; ------ Problema 1
; ------ Recursión

(define (suma_hasta_n n)
  (if (= n 0)
      0
      (+ n (suma_hasta_n (- n 1)))))
|#

#|
; factorial
(define (factorial x)
  (if (= x 0)
      1
      (* x (factorial (- x 1)))))

(factorial 3)
(factorial 5)
(map factorial (range 6))
(map factorial '(1 2 3))
|#
#|
; sumas de min a max
(define (suma min max)
  (if (> min max)
      0
      (+ min (suma (+ 1 min) max))))

(suma 3 5)
(suma 15 6)
(map suma (range 6) (range 6))
(map suma '(1 2 3 23 34) '(2 3 4 23 0))

|#

;(define p1 (cons 1 2))
#|
(define (sumaP p1 p2)
  (cons (+ (car p1) (car p2))
        (+ (cdr p1) (cdr p2))))

(sumaP '(1 . 5) '(6 . 7))
|#
#|
(define L1 '(1 2 9 19))
(length L1)
|#

#|
(define (Longitud L)
  (if (null? L)
      0
      (+ 1 (Longitud(cdr L)))))

(define Lista (list 1 3 4 5 9 8))
(Longitud Lista)
(Longitud (list 2 3 4 5 9 8))
(Longitud '(uno dos tres cuatro 6 7 8 5))
(define Lista2 '(1 -2 3))
(Longitud Lista2)
(length Lista2)
|#

#|
; en cuántas ocasiones aparece un dato dentro de una lista
(define (Cuantas Lista dato)
  (cond
    ((null? Lista) 0)
    ((equal? (car Lista) dato)
     (+ 1 (Cuantas (cdr Lista) dato)))
    (else (Cuantas (cdr Lista) dato))))
(define L2 (list 1 2 3 1 2 33 3 3 4 5))
(Cuantas L2 1)
(Cuantas L2 45)
(Cuantas L2 3)
|#
#|
(define (cuadrado x) (* x x))
(cuadrado 6)
|#
#|
((lambda (x) (* x x)) 7)
|#