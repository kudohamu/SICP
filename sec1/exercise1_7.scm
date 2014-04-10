(define (square x) (* x x))

(define (average x y) (/ (+ x y) 2))

(define (good-enough? guess old_guess)
  (< (abs (- 1.0 (/ old_guess guess))) 0.001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess old_guess x)
  (if (good-enough? guess old_guess)
    guess
    (sqrt-iter (improve guess x) guess x)))

(define (sqrt x) (sqrt-iter x 1.0 x))
