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
;       - List
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

    (eq? 'hello 'hello
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

    (eq? 'hello 'hello
    (eq? 'apple 'apple)
    (eq? 'apple "apple")

    )
  )
