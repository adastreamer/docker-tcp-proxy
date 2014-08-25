DOCKER = docker
ENV = $(shell cat .dockeropts)
REPO = quay.io/aptible/tcp-proxy

TAG = $(shell git rev-parse --abbrev-ref HEAD 2>/dev/null)
ifeq ($(TAG), master)
	TAG = latest
else ifeq ($(TAG), HEAD)
	TAG = latest
endif

all: release

run: build
	$(DOCKER) run $(ENV) $(REPO)

release: build
	$(DOCKER) push $(REPO)

build:
	$(DOCKER) build -t $(REPO):$(TAG) .
