(ns leap)

(defn leap-year? [year]
  (let [is-cent (= 0 (mod year 100))] 
    (if is-cent
      (= 0 (mod year 400))
      (= 0 (mod year 4))
      )
    )
)

