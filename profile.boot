(set-env! :dependencies '[
			  [me.raynes/fs "1.4.6"]
			  [clj-http "3.12.3"]
			  [cheshire "5.10.1"]
			  [cljfx "1.7.14"]])
          ;;:source-paths #{"src/"})

(require '[me.raynes.fs :as fs])
(require '[clojure.java.io :as io])
(require '[clj-http.client :as http])
(require '[cheshire.core :refer :all])
(require '[clojure.java.javadoc :as javadoc :refer (javadoc)])
(require '[clojure.stacktrace :as stacktrace :refer (e)])
(require '[clojure.set :as set])
(require '[clojure.string :as str])
(require '[clojure.core.reducers :as reducers])
(require '[clojure.edn :as edn])
(require '[clojure.spec.alpha :as spec])
(require '[clojure.walk :as walk])
(require '[cljfx.api :as fx])
(require '[clojure.java.shell :refer [sh]])

;;;;;;;;;;;
;; TASKS ;;
;;;;;;;;;;;

(deftask fmt 
  "fmt file or dir using cljfmt (changes files)"
  [f files VAL str "file(s) to format"]
  (set-env! :dependencies '[[cljfmt "0.8.0"]])
  (require 'cljfmt.core
           'clojure.java.io)
  (let [reformat-string (resolve 'cljfmt.core/reformat-string)
        file (resolve 'clojure.java.io/file)
        fmt-file (fn [f]
                   (println "formatting" (.getName f))
                   (spit f (reformat-string (slurp f))))
        clj-file? (fn [f]
                    (and (.exists f) (.isFile f) (not (.isHidden f))
                         (contains? #{"clj" "cljs" "cljc" "cljx" "boot"} 
                                    (last (.split (.toLowerCase (.getName f)) "\\.")))))
        f (file files)]
    (when (.exists f)
      (doall (map fmt-file (filter clj-file? (if (.isDirectory f) (file-seq f) [f])))))))

;; My Funcs ;;

(defn json! [url] 
  (http/request 
    {:method :get 
     :url url 
     :as :json}))

(defn json2edn! [url] 
  (let [json (http/request 
              {:method :get 
               :url url 
               :as :json})]
    (-> json
        :body
        prn-str)))

(defn bash [command]
  (sh "bash" "-c" command))


(defn pretty-print [text]
  (clojure.pprint/pprint text))
