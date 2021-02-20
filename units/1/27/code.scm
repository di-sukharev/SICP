(import (chicken random))

(define (fermat-test n)
   (define (try-it a)
      (= (expmod a n n) a))
   (try-it (+ 1 (pseudo-random-integer (- n 1)))))

(define (expmod base exp m)
   (cond ((= exp 0) 1)
         ((even? exp) (remainder (* (expmod base (/ exp 2) m)
                                    (expmod base (/ exp 2) m))
                                 m))
         (else (remainder (* base (expmod base (- exp 1) m)) m))))

(define (main args)
   (print (fermat-test   (string->number (car args)))))