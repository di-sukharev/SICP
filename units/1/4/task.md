# 1.4 задача

## Условие

Заметим, что наша модель вычислений разрешает существование комбинаций, операторы которых — составные выражения. С помощью этого наблюдения опишите, как работает следующая процедура.

```scheme
(define (a-plus-abs-b a b)
   ((if (> b 0) + -) a b))
```

## Решение

```scheme
(a-plus-abs-b 1 -3) 
   ((if (> -3 0) + -) 1 -3) 
   ((if #f + -) 1 -3) 
   (- 1 -3) 
   4 
  
(a-plus-abs-b 1 3) 
   ((if (> 3 0) + -) 1 3) 
   ((if #t + -) 1 3) 
   (+ 1 3) 
   4 
```
