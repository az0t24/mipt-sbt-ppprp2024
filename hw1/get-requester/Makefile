HUB ?= docker.io/az0t24
TAG ?= 0.0.1

.PHONY: docker-build
docker-build:
	docker build . -t ${HUB}/get-requester:${TAG}

.PHONY: docker-push
docker-push:
	docker push ${HUB}/get-requester:${TAG}

.PHONY: build-and-push
build-and-push: docker-build docker-push