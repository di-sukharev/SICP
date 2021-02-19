(define (gcd a b)
   (print a " " b)
   (if (= b 0)
       a
       (gcd b (remainder a b))))

(define (main args)
   (print (gcd (string->number (car args))
               (string->number (cadr args)))))