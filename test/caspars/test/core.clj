(ns caspars.test.core
  (:use [caspars.core])
  (:use [caspars.answers])
  (:use [midje.sweet]))

(fact "check answers"
  (one) => (answers 1))

(fact "divides"
  (divides? 3 9) => true
  (divides? 3 8) => false)

(fact "sum"
  (sum [1 2 3]) => 6)

(fact "allowed"
  (filter allowed? [3 5 15 11 21]) => [3 5 15 21])