current_dir := $(shell pwd)

docker-test:
	docker run -it -v $(current_dir):/app/buildpack:ro heroku-16-buildpack-test-runner
