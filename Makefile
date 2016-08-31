TAG := fooinha/ubuntu-suricata-daily-dev

all: build

build:
	docker build --rm -t ${TAG} .
