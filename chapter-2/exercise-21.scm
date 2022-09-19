(load "../modules/math.scm")

;; Exercise 2.21

(define (square-list items)
  (if (null? items)
      '()
      (cons (square (car items))
            (square-list (cdr items)))))

(define (square-list items)
  (map square items))

(display (square-list (list 1 2 3 4))) ; (1 4 9 16)
