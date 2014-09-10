(ns user
  (:require [clojure.tools.nrepl.server :as nrepl-server]))

(defonce nrepl-server 
  (nrepl-server/start-server :port 7888))
