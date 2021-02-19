(define (timed-prime-test n)
   (newline)
   (display n)
   (start-prime-test n (runtime))) ; chicken scheme doesn't have runtime =(

(define (start-prime-test n start-time)
   (if (prime? n)
       (report-prime (- (runtime) start-time))))

(define (report-prime elapse-time)
   (display " *** ")
   (display elapsed-time))

(define (main args)
   (print (timed-prime-test (string->number (car args)))))