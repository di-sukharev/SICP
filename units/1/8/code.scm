(define (cbrt x)
   (cbrt-iter 1.0 x))

(define (cbrt-iter guess x)
   (if (good-enough? guess x)
           guess
           (cbrt-iter (improve guess x)
                      x)))

(define (improve guess x)
   (average (/ x (square guess)) (* 2 guess)))

(define (average x y)
   (/ (+ x y) 3))

(define (good-enough? guess x)
   (= (improve guess x) guess))

(define (square x) (* x x))

(define (main args)
   (print args)
   (print (cbrt (string->number (car args)))))

