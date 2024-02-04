(defpackage :raindrops
  (:use :cl)
  (:export :convert))

(in-package :raindrops)

(defun is_divisible? (&key num by)
  (= 0 (mod num by))
)

(defun convert (n)
  (let (
        (sound "")
        (is_divisible_by_three (is_divisible? :num n :by 3))
        (is_divisible_by_five (is_divisible? :num n :by 5))
        (is_divisible_by_seven (is_divisible? :num n :by 7))
      )

    (if (and 
          (not is_divisible_by_three)
          (not is_divisible_by_five)
          (not is_divisible_by_seven)
    )
      (return-from convert (write-to-string n))
    )

    (if is_divisible_by_three (setf sound (concatenate 'string sound "Pling")))
    (if is_divisible_by_five (setf sound (concatenate 'string sound "Plang")))
    (if is_divisible_by_seven (setf sound (concatenate 'string sound "Plong")))

    sound
  )
)
