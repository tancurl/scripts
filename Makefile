BIN=$(shell go list -m)
BIN_DIR=bin

all: build

tidy:
	@go mod tidy

build:
	go build -o $(BIN_DIR)/$(BIN) .

test:
	@go test ./...

install: build
	@./stow
