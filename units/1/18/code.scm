(define (mult x y)
   (define (iter X Y sum)
      (cond ((= X 0) sum)
            ((even? X) (iter (halve X) (double Y) sum)) 
            (else (iter (- (halve X) 0.5) (double Y) (+ sum Y)))))
   (iter x y 0))

(define (halve x)
   (/ x 2))

(define (double x)
   (* x 2))

(define (main args)
   (print (mult   (string->number (car args))
                  (string->number (cadr args)))))