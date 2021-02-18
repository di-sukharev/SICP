(define (mult x y)
   (cond ((= y 0) 0)
         ((even? y) (double (mult x (halve y)))) 
         (else (+ x (mult x (- y 1))))))

(define (halve x)
   (/ x 2))

(define (double x)
   (* x 2))

(define (main args)
   (print (mult   (string->number (car args))
                  (string->number (cadr args)))))