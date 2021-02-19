(define runtime 0) ; chicken scheme doesn't have runtime =(

(define (divides? a b)
   (= (remainder b a) 0))

(define (square x) (* x x))

(define (find-divisor n test)
   (cond ((> (square test) n) n)
         ((divides? test n) test)
         (else (find-divisor n (+ test 1)))))

(define (smallest-divisor n)
   (find-divisor n 2))

(define (report-prime elapse-time)
   (display " 🌞 is prime 🌞 ")
   (display elapse-time))

(define (prime? n)
   (= n (smallest-divisor n)))

(define (start-prime-test n start-time)
   (if (prime? n)
       (report-prime (- runtime start-time))))

(define (timed-prime-test n)
   (newline)
   (display n)
   (start-prime-test n runtime))

(define (search-for-primes from to)
   (if (<= from to) ((timed-prime-test from)
                     (search-for-primes (+ from 1) to))))


(define (main args)
   (print (search-for-primes (string->number (car args))
                             (string->number (cadr args)))))