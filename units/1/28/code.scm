(import (chicken random))

(define (fermat-test n)
   (define (try-it a)
      (= (expmod a (n-1) n) a))
   (try-it (+ 1 (pseudo-random-integer (- n 1)))))

(define (expmod base exp m)
   (cond ((= exp 0) 1)
         ((even? exp) (remainder (square (expmod base (/ exp 2) m)) m))
         (else (remainder (* base (expmod base (- exp 1) m)) m))))

(define (square x) (* x x)) 

(define (main args)
   (print (fermat-test   (string->number (car args)))))