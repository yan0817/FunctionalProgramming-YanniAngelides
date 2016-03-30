;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname racket1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;6 CreateList
(define (createList size)
  (cond
    [(<= size 0) empty]
    [else (cons size (createList(- size 1)))]))

(createList  4)
(createList 10)

;7 Length
(define (len x)
  (cond
    [(empty? x)0]
    [else (+ 1 (len (rest x)))]))

(len (createList 10))
(len (createList 3))


