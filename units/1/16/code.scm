(define (power b n)
   (define (iter B N A) ; (iter B N A) = B^N * A
      (cond ((= 0 N) A) 
            ((even? N) (iter (square B) (/ N 2) A)) 
            (else (iter B (- N 1) (* B A))))) 
   (iter b n 1)) 

(define (square x) (* x x))

(define (main args)
   (print (power (string->number (car args))
                     (string->number (cadr args)))))