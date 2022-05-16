(in-package #:cl-isl)

(define-isl-object basic-set
  :free %isl-basic-set-free
  :copy %isl-basic-set-copy
  :list-type basic-set-list)

(defmethod print-object ((value basic-set) stream)
  (print-unreadable-object (value stream :type t)
    (write-string (%isl-basic-set-to-str (basic-set-handle value)) stream)))

(define-isl-function basic-set-universe %isl-basic-set-universe
  (:give basic-set)
  (:take space))

(define-isl-function basic-set-add-constraint %isl-basic-set-add-constraint
  (:give basic-set)
  (:take basic-set)
  (:take constraint))
