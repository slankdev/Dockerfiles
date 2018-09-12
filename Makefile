
usage:
	@echo "Usage:"
	@echo "   make frr"
	@echo "   make ubuntu"

frr:
	docker build -t slankdev/frr:latest . -f frr.docker

ubuntu:
	docker build -t slankdev/ubuntu:16.04 . -f ubuntu-16.04.docker

push:
	docker push slankdev/frr:latest
	docker push slankdev/ubuntu:16.04
