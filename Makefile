
build:
	docker build -t clojure:dev --build-arg USERID=$$(id -u) .