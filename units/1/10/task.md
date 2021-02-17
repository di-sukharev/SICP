# 1.10 задача

## Условие

Следующая процедура вычисляет математическую функцию Аккермана.

```sheme
(define (Akk x y)
   (cond ((= y 0) 0)
         ((= x 0) (* 2 y))
         ((= y 1) 2)
         (else (Akk  (- x 1)
                     (Akk x (- y 1))))))
```

Каковы значения следующих выражений?

```scheme
(Akk 1 10) ; 1024

(Akk 2 4)

(Akk 3 3)
```

Рассмотрим следующие процедуры:

```scheme
(define (f n) (Ack 0 n))

(define (g n) (Ack 0 n))

(define (h n) (Ack 0 n))

(define (k n) (* 5 n n))
```

Дайте им краткие математические определения для положительных целых значений n. Например, (k n) вычисляет 5n^2

## Решение

```scheme
(Akk 1 10) ; 1024

(Akk 2 4)

(Akk 3 3)

(define (f n) (Ack 0 n)) ; 2n

(define (g n) (Ack 1 n)) ; 0 for n=0, 2^{n} for n>0

(define (h n) (Ack 2 n)) ; 0 for n=0, 2 for n=1, 2^2^… (n-1 times) for n>1
```
