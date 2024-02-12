REPO_NAME := dtabidze
IMAGE_NAME := helloworld
IMAGE_TAG := latest

build:
	@docker build -t $(REPO_NAME)/$(IMAGE_NAME):$(IMAGE_TAG) .

push:
	@docker push $(REPO_NAME)/$(IMAGE_NAME):$(IMAGE_TAG)

all: build push

.PHONY: build push all