(require '[clojure.tools.nrepl.server :refer [start-server stop-server]])

(println "Starting nrepl server")

(defonce server (start-server))

(println "Server running on" (.getLocalPort (:server-socket server)))
