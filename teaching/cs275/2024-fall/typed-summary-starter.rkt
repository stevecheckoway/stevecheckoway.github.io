#lang typed/racket

; The following re-defines the tree class used in Homework 4 to be
; used in Typed Racket. Note a subtle difference: there is no
; empty-tree in this version. This should not impact your solution.

(struct (A) tree ([value : A] [children : (Listof (tree A))]) #:transparent)

(: leaf? (All (X) (-> (tree X) Boolean)))
(define (leaf? t)
  (empty? (tree-children t)))


(: make-tree (All (X) (->* (X) #:rest (tree X) (tree X))))
(define (make-tree value . children)
  (tree value children))

(define T1 (make-tree 50))
(define T2 (make-tree 22))
(define T3 (make-tree 10))
(define T4 (make-tree 5))
(define T5 (make-tree 17))
(define T6 (make-tree 73 T1 T2 T3))
(define T7 (make-tree 0 T4 T5))
(define T8 (make-tree 16 T6 T7))

; SUMMARY PROBLEM 5.
; TIMELINE: On or after Week 5.

; For this problem, define a *TYPED RACKET* procedure,
; get-maximum, which, given a tree of Real numbers returns the
; maximum value (a Real number) that is contained in the tree.

; A reminder that you need to provide both a type annotation
; AND a procedure definition in Typed Racket. 

; Examples:
; (get-maximum T7) returns 17
; (get-maximum T6) returns 73
; (get-maximum T1) returns 50

; You are welcome to use helper methods, however I would
; suggest defining them using define rather than letrec in
; Typed Racket. 

