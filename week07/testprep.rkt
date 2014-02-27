#lang racket

;(define x 19)

;(for y in '{1 2 3} (+ y 8))
; '(9 10 11)

;(define x 5)
;(do {(set! x (+ x 1))} while (< x 10))
;(do {(balahalkdjfa)} while (daflksjdfalskdj))

(define-syntax-rule
  (do {body} while condition)
  (letrec
    [
     (loop (lambda
             ()
             (if condition ((lambda () body (loop))) 0)
             )
           )
     ]
    (loop)
    )
)

(define x 0)
(do {(set! x (+ x 1))} while (< x 10))
(display "X = ")
(displayln x)

; BAD BAD BAD
;(let
  ;(
   ;(x 10)
   ;(y (+ x 10))
   ;)
  ;y)

; GOOD!
(letrec
  (
   (x 10)
   (y (+ x 10))
   (fact
     (lambda (x)
       (cond
         (fact (- x 1)))))
   )
  y)

