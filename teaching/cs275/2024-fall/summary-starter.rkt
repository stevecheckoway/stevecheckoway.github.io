#lang racket

; Your Name Here:
; Date of Last Update:

(require rackunit rackunit/text-ui)

; NOTE: It is recommended that you write full test suites for problems
; 1 through 4. You can provide in this file or in a separate file.

; PROBLEM 1.
; TIMELINE: Anytime.

; Write (location-of lst x) which returns the 0-based index of the first
; occurrence of x in lst (use equal? to compare elements). If x is
; not in the list, return #f. (Notice that in this procedure, the
; list is the first parameter.) While location-of is a built-in Racket
; procedure, you are required to write your own implementation and tests.
; You should *not* use anything more complex than basic list and control
; flow operations. 

; As examples:
; (location-of '(x y z z y) 'x) returns 0
; (location-of '(x y z z y) 'y) returns 1
; (location-of '(x y z z y) 'a) returns #f
; (location-of empty 'x) returns #f

; REMINDER TO WRITE TESTS!


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; PROBLEM 2.
; TIMELINE: On or after Week 3. 


; Use a fold to write (loc x lst) which returns the 0-based index of x in lst
; or -1 if x is not an element of lst.
; It should return the index of the *FIRST* instance of x in lst
; (see the first test below).

; Examples: 
; (loc 3 '(2 4 3 1 2 3)) returns 2
; (loc 3 '(2 4 3 1 2 3 6)) returns 2
; (loc 3 '(2 4 6 4 2)) returns -1

; REMINDER TO WRITE TESTS!

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; PROBLEM 3.
; TIMELINE: On or after Week 4.

; Write (is-in? a lst) that returns #t if a is an element of
; the (not necessarily flat) list lst and #f otherwise.

; Example calls: 
; (is-in? 3 '(2 1 (4 2 (5 3) 1))) returns #t
; (is-in? 'x '(a (b c (d)) e f)) returns #f

; REMINDER TO WRITE TESTS!

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; PROBLEM 4.
; TIMELINE: On or after Week 3 (convert-all) / Week 4 (c-a).

; We have a list of (running) road races that can each be represented by a
; three-element list (name length metric). For instance ("Boston 10K" 10 "km")
; represents a race called the "Boston 10K" that is 10 kilometers long. Most
; road races in the US are in kilometer ("km") or mile ("mi") distances -
; assume that those are the only distance measures in this problem.

; Write *TWO* procedures, both of which have the following functionality:
; they take two arguments, measure and lst, where lst is a list of races as
; described above and measure is the string "mi" or "km". They should
; return a list of distances, in the order of the provided races, where the
; length has been converted to the provided metric type, measure.

; Procedure one should be called convert-all and should use *NO HIGHER ORDER*
; functionality.

; Procedure two should be called c-a and *MUST USE SOME HIGHER ORDER*
; functionality.

; The goal of this problem is to think through the logic of making the
; conversion decision, in addtion to the functionality. 

; If we have races as below: 
(define races
  '(("Boston 10K" 10 "km")
    ("Portland Mile" 1 "mi")
    ("Cleveland 100" 100 "mi")
    ("Oberlin 5K" 5 "km")))
; then
; (convert-all "mi" races) gives all the race lengths in miles:'(6.2 1 100 3.1)
; (convert-all "km" races) gives all the race lengths in kilometers:'(10 1.61 161.0 5) 

; Note that an integer multipled by a real number produces a real number
; (e.g. (* 5 2.0) is 10.0) in Racket. It is OK if your answer produces the
; the mix of integers and real numbers shown in the above examples.

; For your reference: 1 mile is 1.61 kilometers and 1 kilometer is 0.62 miles

; REMINDER TO WRITE TESTS!

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; PROBLEM 5.
; TIMELINE: On or after Week 5.

; Please see "24sp-typed-summary-starter.rkt" for a Typed Racket Summary Problem.

; NOTE HERE WHETHER YOU HAVE DONE THIS FOR YOUR OWN RECORDS!: 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; PROBLEMS 6 & 7.
; TIMELINE: On or after Week 10.

; The goal of this problem is to add a new Racket special form to your MiniScheme
; implementation. Given the description below, you should edit your parse.rkt and
; interp.rkt accordingly (no tests necessary to submit, although highly recommended)
; and submit them. You do not have to be done with Homeworks 6 & 8 to submit
; this summary problem, although you should have a completed Homework 5. 

; Consider a special form called select. The select form takes a value expression
; followed by 1 or more 2-element lists of the form [num exp], where num is a number
; literal and exp is an arbitrary expression. The behavior of select is that the
; value expression is evaluated first and then compared to each of the number
; literals in order. If there is a match, then the corresponding expression is
; evaluated and its value is the value of the whole select.

; For example,
;(select (+ x y)
;        [1 (* a b)]
;        [2 (- 1 2)]
;        [7 (if (eqv? 3 2) True False)])

; first evaluates (+ x y). If the value is 2, the value of select is -1. If the value of
; (+ x y) is 7, the value of select is False, etc. If the value of (+ x y) is not 1, 2,
; or 7, this should through an error with the message "select value didn't match any cases."

; Add a constructor to parse.rkt for a select-exp expression, where you can access
; the value, cases (in the above example, 1, 2 and 3 are the cases), and expressions.
; Then implement support for select in both parse and eval-exp.

; NOTE HERE WHETHER YOU HAVE DONE THIS FOR YOUR OWN RECORDS!: 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; PROBLEMS 8 & 9.
; TIMELINE: On or after Week 10.

; Here you'll demonstrate your ability to write a complete test suite, given 
; existing procedures. 

; (1) Write an extensive test suite for each procedure. Your grade depends on
;     how well each individual test covers a different case for the problem.
;     You may want to write a comment explaining what scenario the test covers to
;     aid grading. To earn full credit, you shoudl consider tests for correct
;     AND incorrect input (i.e. test-exn should appear!)


; (2) Based on your tests, explain why the procedure does (or does not) correctly
;     implement the specifications as given.

; Procedure 1: opposite
; This procedure should take a logical operator op and return a procedure that,
; when called on a set of args, returns the negation of applying op. A reminder
; that many logical operators in Racket can take 1 or more arguments (for instance,
; (< 1 2 3 5) is a valid term).

(define (opposite op)
  (lambda (a . x)
  (not (apply op a x))))

; Is this a correct implementation of opposite?
; ANSWER HERE:

; Procedure 2: skip-n
; This procedures takes a positive integer n and a stream st and returns a stream
; that contains every nth element of st (in stream order), starting with the first.
; The filter must be able to be applied to streams of any length.

(define (skip-n n st)
  (stream-cons (stream-ref st 0)
               (skip-n n (stream-tail st n))))

; Is this a correct implementation of skip-n?
; ANSWER HERE:

(run-tests
 (test-suite
  "All tests"
  (test-suite
   "opposite tests")
  (test-suite
   "skip-n tests" )
))

