(ns caspars.core)

(defn divides? [factor multiple]
  (= 0 (mod multiple factor)))

(defn allowed? [number]
  (or (divides? 3 number) (divides? 5 number)))

(defn sum [plusables]
  (apply + plusables))

(defn one []
  (sum (filter allowed? (range 1 1000))))