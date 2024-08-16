# Makefile

# Variables
IMAGE_NAME := openjdk-24
URL := https://download.java.net/java/early_access/jdk24/11/GPL/$(IMAGE_NAME)-ea+11_linux-x64_bin.tar.gz
ARCH := $(shell uname -m)
ifeq ($(ARCH),arm64)
	URL := https://download.java.net/java/early_access/jdk24/11/GPL/$(IMAGE_NAME)-ea+11_linux-aarch64_bin.tar.gz
endif



# Build target
build:
	docker build -t $(IMAGE_NAME) --build-arg URL=$(URL) .