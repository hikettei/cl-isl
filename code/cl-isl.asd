(defsystem :cl-isl
  :description "A Common Lisp Interface for the Integer Set Library (ISL)"
  :author "Marco Heisig <marco.heisig@fau.de>"
  :version "1.0"
  :license "MIT"
  :defsystem-depends-on ("cffi-grovel")
  :depends-on ("alexandria" "cffi" "trivial-garbage")
  :in-order-to ((test-op (test-op "cl-isl-test-suite")))
  :serial t
  :components
  ((:file "packages")
   (:file "swig-lispify")
   (:cffi-grovel-file "grovel")
   (:file "swig-interface")
   (:file "utilities")
   (:file "isl-entity")
   (:file "isl-function")
   (:file "context")
   (:file "value")
   (:file "identifier")
   (:file "space")
   (:file "basic-set")
   (:file "basic-map")
   (:file "set")
   (:file "map")
   (:file "union-set")
   (:file "union-map")
   (:file "operation")
   (:file "schedule")))
