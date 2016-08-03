(def fib
  (memoize (fn [n]
             (condp = n
               0 1
               1 1
               (+ (fib (- n 2)) (fib (- n 1)))))))

(defn f [limit]
  (reduce + (for [x (iterate inc 1)
                  :let [x' (fib x)]
                  :while (< x' limit)
                  :when (even? x')]
              x')))

(println (f 4000000))
; => 4613732
