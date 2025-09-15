;;Let's play with cond!
(defun is-21 (x)  ;;This function returns true only if x is 21
  (cond ((> x 21) nil)  ;;cond syntax - (cond ((condition) result of that condition) ((condition 2) result of condition 2))
        ((< x 21) nil)    ;;think of cond as a function that takes in 2 arguments, a condition and a result  
        ((eq x 21) t)
  )
)

(print (is-21 0))
(print (is-21 1000))
(print (is-21 21))

;;it's worth noting that if none of the conditions are met, nil is returned, so you must have a condition that is always true if you want something else
(defun increment-if-is-21 (x)
  (cond ((> x 21) nil)
        ((< x 21) nil)
        (t (+ x 1))  ;;t is always true, so if the other two conditions aren't met, this will be
  ) ;;it's worth noting that t isn't in parenthesis like the other operations, that's because lisp is so sensitive, that it will throw an error
)   ;;if you put anything other than full operations in parenthesis

(print (increment-if-is-21 0))
(print (increment-if-is-21 1000))
(print (increment-if-is-21 21))