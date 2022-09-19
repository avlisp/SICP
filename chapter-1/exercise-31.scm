(load "../modules/math.scm")

;; Exercise 1.31

;; Recursive
(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))

;; Iterative
(define (product term a next b)
  (define (iter prod term a next b)
    (if (> a b)
        prod
        (iter (* (term a) prod) term (next a) next b)))
  (iter 1 term 1 next b))

(define (factorial x)
  (product identity 1 inc x))

(display (factorial 7)) ; 5040
