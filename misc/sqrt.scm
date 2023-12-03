(define sqrt (x)
	(define EPSILON 0.0001)
	(define close-enough? (g)
		(< (abs (- (* g g) x)) EPSILON))
	(define try (g)
		(if (close-enough? g)
		    g
		    (try (/ (+ (/ x g) g) 2))))
	(try 1))

(sqrt 16)
;Value: 4

(sqrt 4)
;Value: 2

(sqrt 144)
;Value: 12

