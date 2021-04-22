current_dir := $(shell pwd)

prepare-testrunner-image:
	docker build . \
		-f $(current_dir)/docker/Dockerfile.testrunner \
		-t heroku-16-buildpack-test-runner \
		--build-arg ubuntu_version=16

	docker build . \
		-f $(current_dir)/docker/Dockerfile.testrunner \
		-t heroku-20-buildpack-test-runner \
		--build-arg ubuntu_version=20

docker-test:
	docker run -it -v $(current_dir):/app/buildpack:ro ${image}
