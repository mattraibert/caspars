(ns caspars.core)

(defn divides? [factor multiple]
  (= 0 (mod multiple factor)))

(defn allowed? [number]
  (or (divides? 3 number) (divides? 5 number)))

(defn sum [plusables]
  (apply + plusables))

(defn one []
  (sum (filter allowed? (range 1 1000))))

(def fib (concat [0 1] (lazy-seq (map + fib (rest fib)))))

(def even-fib (filter even? fib))

(defn two [] (apply + (take-while (fn [it] (< it 4000000)) even-fib)))
