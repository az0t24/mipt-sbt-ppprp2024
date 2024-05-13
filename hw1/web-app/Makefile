HUB ?= docker.io/az0t24
TAG ?= 0.0.1

.PHONY: docker-build
docker-build:
	docker build . -t ${HUB}/simple-web-app:${TAG}

.PHONY: docker-push
docker-push:
	docker push ${HUB}/simple-web-app:${TAG}

.PHONY: build-and-push
build-and-push: docker-build docker-push