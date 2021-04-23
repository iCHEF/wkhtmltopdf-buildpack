current_dir := $(shell pwd)

sync-lib-and-bin-from-testrunner:
	# usage:
	#   cd ../ && git clone https://github.com/heroku/heroku-buildpack-testrunner
	# 	make sync-lib-and-bin-from-testrunner testrunner-dir=../heroku-buildpack-testrunner
	mkdir -p ${current_dir}/testrunner

	rm -rf ${current_dir}/testrunner/lib
	cp -rf ${testrunner-dir}/lib ${current_dir}/testrunner/lib

	rm -rf ${current_dir}/testrunner/bin
	cp -rf ${testrunner-dir}/bin ${current_dir}/testrunner/bin

prepare-testrunner-image:
	# Prepare test-runner image for "Different OS"
	#
	# You will get following images by build this target
	#
	# 1. heroku-16-buildpack-test-runner
	# 2. heroku-20-buildpack-test-runner
	docker build . \
		-f $(current_dir)/docker/Dockerfile.testrunner \
		-t heroku-16-buildpack-test-runner \
		--build-arg ubuntu_version=16

	docker build . \
		-f $(current_dir)/docker/Dockerfile.testrunner \
		-t heroku-20-buildpack-test-runner \
		--build-arg ubuntu_version=20

docker-test:
	# usage
	# make docker-test image=heroku-20-buildpack-test-runner
	docker run -it -v $(current_dir):/app/buildpack:ro ${image}
