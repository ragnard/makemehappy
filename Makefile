CLASSPATH =

repl: CLASSPATH = $(shell lein classpath)
repl:
	@java -cp $(CLASSPATH):src:dev clojure.main

docker-repl: CLASSPATH = $(shell lein classpath)
docker-repl: 
	@sudo docker run \
		-v=$(shell pwd):/opt/makemehappy \
		-v=$(HOME)/.m2/repository:$(HOME)/.m2/repository \
		-w=/opt/makemehappy \
		-i \
		-t \
		ragge/java7 \
		java -cp $(CLASSPATH):dev:src clojure.main
