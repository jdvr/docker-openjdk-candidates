# Makefile

# Variables
IMAGE_NAME := openjdk-23
URL := https://download.java.net/java/GA/jdk23/3c5b90190c68498b986a97f276efd28a/36/GPL/$(IMAGE_NAME)_linux-x64_bin.tar.gz
ARCH := $(shell uname -m)
ifeq ($(ARCH),arm64)
	URL := https://download.java.net/java/GA/jdk23/3c5b90190c68498b986a97f276efd28a/36/GPL/$(IMAGE_NAME)_linux-aarch64_bin.tar.gz
endif



# Build target
build:
	docker build -t $(IMAGE_NAME) --build-arg URL=$(URL) .