IMAGE_NAME="fialakarel/ffmpeg"

build:
	docker build -t $(IMAGE_NAME) .

build-nc:
	docker build --no-cache --pull -t $(IMAGE_NAME) .

push:
	docker push $(IMAGE_NAME)

testrun:
	docker run --rm -it --name ffmpeg $(IMAGE_NAME) --help
