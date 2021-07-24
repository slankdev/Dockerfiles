T := slankdev/cloud:develop
build:
	docker build -t $T .
push:
	docker push $T
all: build push
run:
	docker run -it --rm --name cloud $T bash
