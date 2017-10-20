 (use posix-extras srfi-1)

(define (roll-die sides)
  (let loop ((tumbles (random 40)))
   (if (> tumbles 0)
     (begin
       (display (string-append "\r          \r" (number->string (add1 (random sides)))))
       (flush-output)
       (sleep 0.03)
       (loop (sub1 tumbles)))
     (print ""))))

(define (main args)
  (let ((sides (string->number (cadr args))))
   (roll-die sides)))

(main (argv))
