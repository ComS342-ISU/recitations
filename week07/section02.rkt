#lang racket

;
; ComS342 - Spring 2014
;
; Week 07 Notes
; 4pm Recitation w/ Josh Davis
;

(#%require (lib "eopl.ss" "eopl"))

; (lambda () body)

;(function name() {
    ;body
;})

; A def-syntax-rule example
(define-syntax-rule
  (function args {body})
  (lambda
    args
    body)
  )

((function (x y z) {
    (+ x y z)
})
 1 2 3)

(define add-three
  (function (x y z) {
      (+ x y z)
  })
  )

(add-three 1 2 3)

(define-syntax-rule
  (func name args {body})
  (define name (lambda args body))
  )

(func hello () {
      (displayln "hi")
})

(hello)

; Define Datatype
(define-datatype tree tree?
  (empty-tree)
  (tree-node
    (data number?)
    (left tree?)
    (right tree?)
    )
  )

; Another example...
(define-datatype file file?
                 (extend-directory (f1 file?) (f2 file?))
                 (empty-directory (dirname string?))
                 (regular-file (filename string?) (nBytes number?))
                 )

; Using Cases...
(define (regular-file->name f)
  (cond
    ((not (file? f)) (raise ""))
    (else
      (cases file f
             (regular-file (filename nbytes)
                           filename
                           )
             (else (raise "error here"))
        )
      )
    )
  )

; Testing our extractor...
(define f (regular-file "test.rkt" 400))
(regular-file->name f)
