#lang racket

(#%provide (all-defined))
(#%require (lib "eopl.ss" "eopl"))

;
; ComS342 - Spring 2014
;
; Week 010 Notes
; 4pm Recitation w/ Josh Davis
;

;
; Lexicon
;
; (name (regex ...) outcome)
;
; outcome:
;   - skip, number, string, symbol
; regex:
;   - letter | digit | whitespace | any
;   - (not ..), (or ..), (arbno ..), (concat ..)
;
(define lang-lexicon
  '(
    (whitespace (whitespace) skip)
    (comment ("#" (arbno (not #\newline))) skip)
    (number (digit (arbno digit)) number)
    (number ("-" digit (arbno digit)) number)

    (identifier (letter (arbno (or letter digit "_" "-" "?"))) symbol)
    )
  )

;
; Grammer
;
; ((nonterminal (item ..) variant) ..)
;
; item
;   - nonterminal | class | string
;   - (arbno item ..)
;   - (separated-list item .. string)
(define lang-grammar
  '(
    (expr (number) num-expr)
    )
  )

;
; SLLGen Setup
;

(sllgen:make-define-datatypes lang-lexicon lang-grammar)

(define (show-the-datatypes)
  (sllgen:list-define-datatypes lang-lexicon lang-grammar))

(define create-ast
  (sllgen:make-string-parser lang-lexicon lang-grammar))

(define scan
  (sllgen:make-string-scanner lang-lexicon lang-grammar))
