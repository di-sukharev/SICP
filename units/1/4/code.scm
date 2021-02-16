(define (sum-square-two-biggest x y z)
   (cond ((and (>= (+ x y) (+ y z)) (>= (+ x y) (+ x z))) (sum-square x y)) 
         ((and (>= (+ x z) (+ y z)) (>= (+ x z) (+ x y))) (sum-square x z)) 
         (else (sum-square y z)) 
   )
)

(define (sum-square x y) (+ (square x) (square y)))

(define (square x) (* x x))

(define (main args)
   (print
      (sum-square-two-biggest
         (string->number (car args))
         (string->number (cadr args))
         (string->number (caddr args)))))