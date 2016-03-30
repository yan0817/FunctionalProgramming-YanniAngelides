;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname racket2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;1 toCelsius
(define(toCelcius degrees)(/(- degrees 32) 1.8))
(check-expect(toCelcius 32)0)
(check-expect(toCelcius 86)30)
(check-expect(toCelcius 5)-15)

;2 isLeapYear
(define (isLeapYear year)
  (if (= (remainder year 4) 0)
      (if (> (remainder year 100) 0) true
          (if (= (remainder year 400) 0) true false))
      false))
(check-expect (isLeapYear 2016) true)
(check-expect (isLeapYear 1996) true)
(check-expect (isLeapYear 2021) false)
(check-expect (isLeapYear 1809) false)
(check-expect (isLeapYear 1750) false)

;3 Countdown
(define (count-down num)
  (cond
    [(<= num 0) "Blastoff"]
    [else (string-append
                  (number->string num)
                  " " (count-down
                       (- num 1)))]))

(check-expect(count-down 10) "10 9 8 7 6 5 4 3 2 1 Blastoff")
(check-expect(count-down 2) "2 1 Blastoff")
(check-expect(count-down 0) "Blastoff")
(check-expect(count-down -3) "Blastoff")

;4 Summation
(define (summation num)
  (cond
    [(= num 0) 0]
    [else (+ num (summation(- num 1)))]))

(check-expect(summation 2) 3)
(check-expect(summation 4) 10)

;5 numDigits
(define (numDigits num)
  (cond
    [(< num 10) 1]
    [else (+ 1 (numDigits(quotient num 10)))]))

(check-expect(numDigits 1234) 4)
(check-expect(numDigits 12) 2)
(check-expect(numDigits 1234567) 7)

