#lang racket

; Definition of tree datatype
(struct tree (value children) #:transparent)

; An empty tree is represented by null
(define empty-tree null)

; (empty-tree? empty-tree) returns #t
(define empty-tree? null?)

; Convenience constructor
; (make-tree v c1 c2 ... cn) is equivalent to
; (tree v (list c1 c2 ... cn))
(define (make-tree value . children)
  (tree value children))

; Returns #t if the tree is a leaf.
(define (leaf? t)
  (cond [(empty-tree? t) #f]
        [(not (tree? t)) (error 'leaf? "~s is not a tree" t)]
        [else (empty? (tree-children t))]))

; Examples.

(define T1 (make-tree 50))
(define T2 (make-tree 22))
(define T3 (make-tree 10))
(define T4 (make-tree 5))
(define T5 (make-tree 17))
(define T6 (make-tree 73 T1 T2 T3))
(define T7 (make-tree 100 T4 T5))
(define T8 (make-tree 16 T6 T7))

; List of leaf values.
(define (leaves t)
  (error 'leaves "Not implemented"))