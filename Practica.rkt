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
