

all:
	#@echo "Building docker image"
	#@docker-compose build
	@echo "Calling make"
	@docker-compose run --rm clang make

%:
	#@echo "Building docker image"
	#@docker-compose build
	@echo "Calling make in docker with parameter : $@"
	@docker-compose run --rm clang make $@
