IMAGE_NAME := cirocosta/autobench

image:
	docker build -t $(IMAGE_NAME) .

.PHONY: image
