(define (simpson f a b n) ; n arg should be odd
   (define h (/ (- b a) n))
   
   (define (yk k) (f (+ a (* k h))))

   (define (simpson-term k)
      (* (cond ((or (= k 0) (= k n)) 1) 
               ((odd? k) 4)
               (else 2))
         (yk k)))

   (* (/ h 3) (sum simpson-term 0 inc n)))

(define (cube x) (* x x x))
  
(define (inc n) (+ n 1)) 

(define (sum term a next b) 
(if (> a b) 
      0 
      (+ (term a) 
         (sum term (next a) next b)))) 

(define (main args)
   (print
      (simpson
         cube
         (string->number (car args))
         (string->number (cadr args))
         (string->number (caddr args)))))