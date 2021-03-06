{:user {:aliases {"lint" ["do" "kibit" "--replace" "--interactive," "eastwood"]}
        :dependencies [[org.clojure/tools.namespace "0.2.3"]
                       [clj-http "3.10.0"]
                       [cheshire "5.10.0"]
                       [org.clojure/data.json "1.0.0"]
                       [org.clojure/data.xml "0.0.8"]
                       [org.clojure/data.csv "1.0.0"]
                       [org.clojure/data.zip "1.0.0"]]
        :injections [(require '[clojure.tools.namespace.repl :refer [refresh refresh-all]]
                              '[clojure.java.io :as io]
                              '[clojure.java.javadoc :refer [javadoc]]
                              '[clojure.pprint :refer [pprint]]
                              '[clojure.reflect :refer [reflect]]
                              '[clojure.repl :refer [apropos dir doc find-doc pst source]]
                              '[clojure.set :as set]
                              '[clojure.string :as string]
                              '[clojure.test :as test]
                              '[clj-http.client :as http]
                              '[cheshire.core :refer :all]
                              '[clojure.edn :as edn]
                              '[clojure.zip :as zip]
                              '[clojure.data.zip.xml :refer [attr text xml-> xml1->]]
                              '[clojure.data.xml :as xml]
                              '[clojure.data.csv :as csv]
                              '[clojure.data.json :as json])]
        :plugins [[lein-try "0.4.3"]
                  [jonase/eastwood "0.3.11"]
                  [lein-kibit "0.1.8"]
                  [lein-ancient "0.6.15"]
		  [lein-gorilla "0.4.0"]]}
 :repl {:repl-options {:timeout 150000
                       :prompt (fn [ns] (format "%s(%s) => " ns (System/getenv "HOME")))}}}
