;
; ComS342 - Spring 2014
;
; Week 02 Notes
; 4pm Recitation w/ Josh Davis
;
; Topics:
;   - Racket Data types
;   - Common Functions
;       - Define
;       - Cons
;       - Car
;       - Cdr
;       - Cond
;       - Let
;   - Recursion
;       - Basics
;       - Examples
;          - Sum through n
;          - Range Function
;          - Sequential Search
;

;
; Booleans
;

(define (booleans)
  ;
  ; Examples
  ;

  (define (examples)

    #t
    #f

    )

  ;
  ; Predicates
  ;

  (define (predicates)

    (boolean? #t)
    (boolean? #f)
    (boolean? 1)
    (boolean? 0)
    (boolean? "nope")

  )

  ;
  ; Comparisons
  ;

  (define (comparisons)

    (= 2 2)
    (> 2 6)
    (not (= 2 3))

    )
  )

;
; Numbers
;

(define (numbers)
  ;
  ; Examples
  ;

  (define (examples)

    1
    18
    .5
    #xDEAD

    )

  ;
  ; Predicates
  ;

  (define (predicates)

    (number? 2)
    (number? #f)
    (number? #xBEEF)
    (integer? 1)
    (integer? 1.2)

  )

  ;
  ; Comparisons
  ;

  (define (comparisons)

    (= 2 2)
    (= 2 2.0)

    )
  )

;
; Strings
;

(define (strings)
  ;
  ; Examples
  ;

  (define (examples)

    ""
    "Hello world"
    "Apple"

    )

  ;
  ; Predicates
  ;

  (define (predicates)

    (string? "")
    (string? "hello")
    (string? 124)

  )

  ;
  ; Comparisons
  ;

  (define (comparisons)

    (eq? "orange" "apple")
    (eq? "apple" "apple")

    )
  )

;
; Symbols
;

(define (symbols)
  ;
  ; Examples
  ;

  (define (examples)

    'symbol
    'orange
    'spaceship

    )

  ;
  ; Predicates
  ;

  (define (predicates)

    (symbol? 'test-symbol)
    (symbol? 'variable)
    (symbol? 98)
    (symbol? "hello there")

  )

  ;
  ; Comparisons
  ;

  (define (comparisons)

    (eq? 'hello 'hello)
    (eq? 'apple 'apple)
    (eq? 'apple "apple")

    )
  )

; Question:
;   What's the difference between a symbol and a string?

;
; Lists
;

(define (lists)
  ;
  ; Examples
  ;

  (define (examples)

    (list)
    '()

    (list 1 2 3 4)
    '(1 2 3 4)

    (list
      (list 1 2)
      (list 3 4)
      )
    '(
      (1 2)
      (3 4)
      )
    )

  ;
  ; Predicates
  ;

  (define (predicates)

    (list? (list 4 6 8))
    (list? "hi")
    (list? 25)

    (null? '(1 2 3))
    (null? '())
    (null? (list))

  )

  ;
  ; Comparisons
  ;

  (define (comparisons)

    (eq? 'hello 'hello)
    (eq? 'apple 'apple)
    (eq? 'apple "apple")

    )
  )

;
; Procedures
;

(define (lambdas)
  ;
  ; Examples
  ;

  (define (examples)

    ; Identity
    (lambda (x) x)

    ; Squared
    (lambda (x) (* x x))

    ; Application
    (lambda (f x) (f x))

    )

  ;
  ; Predicates
  ;

  (define (predicates)

    (procedure? 1)
    (procedure? "hi")

    (procedure? (lambda (x) x))

  )
  )

;
; Define
;

(define (def)

  ; Simple numbers
  (define x 2)
  (define y 3)

  ; Define a procedure
  (define f1
    (lambda (x) x))

  ; This is the same as the previous define
  (define (f2 x) x)

  ; Question:
  ;   What is this idea called?
  ;   Hint: It has to do with sugar.

  ; Question:
  ;   Can you think of an example of this in another language that you use
  ;   (Python, JavaScript, C)?
  )

;
; Cons
;

(define (fcons)

  ; Simple
  (cons
    1
    (list 2 3 4 5))

  ; Complex
  (cons
    1
    (cons
      2
      (cons
        3
        (cons
          4
          (cons
            5
            (list))))))
  )


;
; Car
;

(define (fcar)

  ; Simple
  (define l '(1 2 3 4))
  (car l)

  ; Little more involved
  ; ((1 2) 3 4)
  (define l '((1 2) 3 4))
  (car l)

  ; What happens here?
  (define l '())
  (car l)

  )

;
; Cdr
; Pronounced: cudder
;

(define (fcdr)
  ; Simple
  (define l '(1 2 3 4))
  (cdr l)

  ; Little more involved
  ; ((1 2) 3 4)
  (define l '((1 2) 3 4))
  (cdr l)

  ; One element?
  ; (1)
  (define l '(1))
  (cdr l)

  ; What happens here?
  (define l '())
  (cdr l)
  )

;
; Cond
;

(define (fcond)
  ; Simple
  (define x 1)
  (cond
    ((= x 1) 1)
    (else 2)
    )

  (define x 2)
  (cond
    ((= x 1) 1)
    (else 2)
    )

  (define x 4)
  (cond
    ((= x 1) 1)
    ((= x 2) 2)
    ((= x 3) 3)
    ((= x 4) 4)
    (else 5))
  )

(define (flet)

  ; Simple
  (define x 3)
  (let
    ([x 2])
    (displayln x))
  (displayln x)


  ; Multiple variables
  (let
    ([x 1]
     [y 2])
    (displayln x)
    (displayln y))
  )

;
; Recursion!
;

; Sum all integers from 1 to n
(define (sum n)
  'unimplemented)

; Create integer range from p to r
(define (range p r)
  'unimplemented)

; Basic sequential search:
;   Return #t if q is found in l
;   Else #f
(define (seq-search q l)
  'unimplemented)
