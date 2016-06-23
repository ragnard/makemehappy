.classpath: project.clj
	@lein classpath \
	| tr ':' '\n' \
	| sed '/\.jar/!d' \
	> .classpath

repl: .classpath
	@java -cp $(shell cat .classpath | tr '\n' ':') clojure.main -i nrepl.clj -r
.PHONY: repl

