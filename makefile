

all:
	#@echo "Building docker image"
	#@docker-compose build
	@echo "Calling make"
	@docker-compose run clang make

%:
	#@echo "Building docker image"
	#@docker-compose build
	@echo "Calling make in docker with parameter : $@"
	@docker-compose run clang make $@
