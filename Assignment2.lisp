;;Returns sum of elements in list L
(defun my-sum (L)   ;;Define function my-sum take L
    (cond ((not (listp L))  ;;if not L is type listp
            (format t "my-sum call failed: ~A is not a list.~%" L)  ;;print error message
            0 ;;return 0
        )
        ((null L)   ;;is L null
            (format t "my-sum call failed: ~A is null.~%" L)    ;;print error message
            0   ;;return 0
        )
        (t  ;;if true
            (format t "my-sum call successful: ~A is a list.~%" L)  ;;print message indicating no errors up to this point
            (let* ((sum (car L)))   ;;initialize sum to first element of L
            (if (not (null (cdr L)))    ;;if not at end of list (cdr of l is not null)
                (setf sum (+ sum (my-sum (cdr L)))) ;;set sum to the sum of itself and the sum of the rest of the list
            )
            sum   ;;return sum
            ) 
        )
    )
);;End of function

;;Test function calls for my-sum
(print (my-sum 5)) ;;Should print error message and 0
(print (my-sum nil)) ;;Should print error message and 0
(print (my-sum '(1 2 3 4)))   ;;single quotes (') say to use it literally