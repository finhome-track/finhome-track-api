GOOS ?= $(shell go env GOOS)
GOARCH ?= $(shell go env GOARCH)

BIN_NAME := finance-api
BIN_DIR := bin
SRC_DIR := ./cmd/...
BINS := $(wildcard $(BIN_DIR)/*)

VERSION ?= RELEASE_TAG
ifeq ($(VERSION),)
VERSION = $(shell git describe --tags --dirty=-dev)
endif

BIN := $(BIN_DIR)/$(BIN_NAME)-$(GOOS)-$(GOARCH)

SDKROOT =
CGO_ENABLED =
ifeq ($(GOARCH), arm64)
SDKROOT = $(shell xcrun --sdk macosx --show-sdk-path)
CGO_ENABLED = 1
endif

OPEN_API_VERSION := v7.3.0

all: test build

$(BIN_DIR):
	mkdir -p $@

.PHONY: build
build: build-release

.PHONY: build-release
build-release: $(BIN_DIR)
	CGO_ENABLED=$(CGO_ENABLED) SDKROOT=$(SDKROOT) GOOS=$(GOOS) GOARCH=$(GOARCH) go build -tags netgo -o $(BIN) $(SRC_DIR)

.PHONY: test
test:
	CGO_ENABLED=$(CGO_ENABLED) go test -v -race ./internal/...

.PHONY: clean
clean:
	rm -f $(BINS)

.PHONY: run
run:
	CGO_ENABLED=$(CGO_ENABLED) go run ./cmd/finance-api/main.go

.PHONY: generate-api-docs
generate-api-docs: generate-api-md-docs generate-api-html-docs generate-api-asciidoc-docs generate-api-cwiki-docs

.PHONY: generate-api-md-docs
generate-api-md-docs:
	docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli:${OPEN_API_VERSION} generate \
		-i /local/api/openapi-3_1.yaml \
		-g markdown \
		-o /local/docs/md

.PHONY: generate-api-html-docs
generate-api-html-docs:
	docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli:${OPEN_API_VERSION} generate \
		-i /local/api/openapi-3_1.yaml \
		-g html2 \
		-o /local/docs/html