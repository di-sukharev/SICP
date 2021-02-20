(import (chicken time))
(import (chicken random))

(define (timed-prime-test n)
   (newline)
   (display n)
   (start-prime-test n (current-milliseconds)))

(define (start-prime-test n start-time)
   (if (fast-prime? n 5)
       (report-prime (- (current-milliseconds) start-time))))

(define (report-prime elapse-time)
   (display " 🌞 is prime 🌞 ")
   (display elapse-time))

(define (fast-prime? n times)
   (cond ((= times 0) #t)
      ((fermat-test n) (fast-prime? n (- times 1)))
      (else #f)))

(define (fermat-test n)
   (define (try-it a)
      (= (expmod a n n) a))
   (try-it (+ 1 (pseudo-random-integer (- n 1)))))

(define (expmod base exp m)
   (cond ((= exp 0) 1)
         ((even? exp) (remainder (square (expmod base (/ exp 2) m)) m))
         (else (remainder (* base (expmod base (- exp 1) m)) m))))

(define (square x) (* x x))

(define (main args)
   (timed-prime-test (string->number (car args))))