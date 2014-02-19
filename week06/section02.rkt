;
; ComS342 - Spring 2014
;
; Week 06 Notes
; 4pm Recitation w/ Josh Davis
;

; Problem 10 from homework 03
(define-syntax-rule (for {var <- value-range} yield result)
  (map
    (lambda (var) result)
    value-range
   )
  )


; Problem 11 from homework 03
(define-syntax-rule
  (partially-applied-fun (x y) body)
  (lambda (x y)
    (cond
      ((and
         (eq? '_ x)
         (eq? '_ y)) (lambda (x y) body))
      ((eq? '_ x) (lambda (x) body))
      ((eq? '_ y) (lambda (y) body))
      (else
        body
        )
      )
    )
  )
