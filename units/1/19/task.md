# 1.19 задача

## Условие

Существует хитрый алгоритм получения чисел фибоначчи за логарифмическое число шагов.
Вспомните трансформацию переменных состояния a и b процесса fib-iter из раздела 1.2.2: a <- a+b и b <- a. Назовем эту трансформацию T и заметим, что n-кратное применение T, начиная с 1 и 0, дает нам пару Fib(n+1) и Fib(n). Другими словами, числа Фибоначчи получаются путем применения T^n, n-ой степени трансформации T, к паре (1, 0). Теперь рассмотрим T, как частный случай p = 0, q = 1 в семействе трансформаций Tpq, где Tpq преобразует пару (a,b) по правилу a<-bq+aq+ap, b<-bp+aq. Покажите, что двукратное применение трансформации Tpq равносильно однократному применению трансформации Tp'q' того же типа, и вычислите p' и q' через p и q. Это дает нам прямой способ возводить такие трансформации в квадрат, и таким образом, мы можем мвычислить T^n с помощью последовательного возведения в квадрат, как в процедуре fast-expt. Используя все эти идеи, завершите следующую процедуру, которая дает результат за логарифмическое число шагов.

```scheme
(define (fib n)
   (fib-iter 1 0 0 1 n))

(define (fib-iter a b p q count)
   (cond ((= count 0) b)
         ((even? count)
         (fib-iter a
                   b
                   <??> ; вычислить p'
                   <??> ; вычислить q'
                   (/ count 2)))
         (else (fib-iter (+ (* b q) (* a q) (* a p))
                         (+ (* b p) (* a q))
                         p
                         q
                         (- count 1)))))
```