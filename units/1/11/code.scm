(define (recursive n)
   (cond ((< n 3) n)
         (else (+ (recursive(- n 1))
                  (recursive(- n 2))
                  (recursive(- n 3))))))

(define (iterative n)
   (define (iter count a b c)
      (if (= count 0) a
          (iter (- count 1) b c (+ a b c))))
   (iter n 0 1 2))


(define (main args)
   (print "recursive: " (recursive (string->number (car args))))
   (print "iterative: " (iterative (string->number (car args)))))