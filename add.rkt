#lang racket

; nothing special
(run "let f=proc(x) proc(y) -(x,11) in ((f 3)4)")

; another example
(run "(proc (f) (f (f 77))
        proc (x) -(x,1))")

;2.b
(run "let makemult = proc(maker)
                        proc (x)
                          if zero?(x)
                          then 0
                          else -(((maker maker) -(x,1)),-4)
         in let times4 = proc (x)((makemult makemult)x)
            in (times4 3)")