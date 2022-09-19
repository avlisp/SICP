(load "../modules/math.scm")

;; Exercise 1.3

(define (sum-squares-of-two-larger a b c)
  (define smallest-value (smallest a b c))
  (cond ((= smallest-value a) (sum-of-squares b c))
        ((= smallest-value b) (sum-of-squares a c))
        ((= smallest-value c) (sum-of-squares a b))))

(define (smallest a b c)
  (cond ((and (<= a b) (<= a c)) a)
        ((and (<= b a) (<= b c)) b)
        ((and (<= c a) (<= c b)) c)))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(display (sum-squares-of-two-larger 1 2 3)) ; 13
