;
; ComS342 - Spring 2014
;
; Week 05 Notes
; 4pm Recitation w/ Josh Davis
;
;   - Code as data
;   - Homework 03

(define (get-function)
  '(lambda (x y)
     (+ x y)))

(define plus (get-function))

((eval plus) 1 2)
; Will return 1 + 2 = 3

(define (swap-to-minus f)
  (cond
    ((null? f) '())
    ((list? f)
     (cons
       (swap-to-minus (car f))
       (swap-to-minus (cdr f))))
    ((eq? f '+)
     '-)
    (else
      f)))

(define minus (swap-to-minus plus))

((eval minus) 1 2)
; Will return 1 - 2 = -1

; More complicated...

(define (get-second-function)
  '(lambda (x y z)
     (+ 1 2 3
       (+ x 3)
       (+ 3 y)
       (+ x y z)
       )
     )
  )

(define plusplus (get-second-function))

; Swap again...
(define minusminusminus (swap-to-minus plusplus))

((eval plusplus) 7 8 9)
; Will return 51

((eval minusminusminus) 7 8 9)
; Will return 7

;
; Homework 3...
; Just went over the README and discussed the problems.
;
