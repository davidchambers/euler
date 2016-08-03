(defn divisible-by? [d]
  (fn [n] (= 0 (rem n d))))

(defn f [limit]
  (reduce + (filter (some-fn (divisible-by? 3) (divisible-by? 5))
                    (range limit))))

(assert (= 23 (f 10)))
(println (f 1000))
; => 233168
