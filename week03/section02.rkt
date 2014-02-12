;
; ComS342 - Spring 2014
;
; Week 03 Notes
; 4pm Recitation w/ Josh Davis
;
; Topics:
;   - Look over homework
;   - Y COMBINATOR!
;

; Define, letrec
; lambdas

; Run forever...
(define (f)
  (f))


(
 (lambda (x) (x x))
 (lambda (self)
   (self self))
 )

;
;
;

(define (caller x)
  (x x))

(define (f f)
  (f f))

(caller f)

;
; Sum with only Lambda
; where 10 is the value to sum
;

(
 (lambda (f n)
   (f f n))
 (lambda (self x)
   (cond
     ((= x 0) 0)
     (else
       (+ x (self self (- x 1)))
       )
     )
   )
 10
 )

;
; Caller Using Define
;

(define (caller f n)
  (f f n))

(define (sum self x)
   (cond
     ((= x 0) 0)
     (else
       (+
         x
         (self
           self
           (- x 1)
           )
         )
       )
     )
   )

(caller sum 10)
