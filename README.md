# ClangDockerBuilder

## What is it ?
This is a simple way to build a c++20 projet with clang10+ (curently not available in my distro)

## How it works ?
It forward "make" command into a docker container (not the options)

## How to use it ?
### Build the docker image
You need to build the docker image that for the container that will build your project
```
docker-compose build
```
### Link your project to this one
After this you have to link **projectDir** to the folder containing your project (exemple is the currently linked project)
**note that fat filesystem can't read symlink and gitkraken does not like them too**
```
rm projectDir
ln -s exemple projectDir
```

### Make your make
Now you can build c++20 project by simply running a make command in the root of this project like below :
```
make
```
or 
```
make command
```
it will mount your project to the docker container and forward your make command to your project to run it with a c++20 docker container

## Notes
- base image is Alpine linux
- C++20 is enabled but standard library isn't (C++17 i guess) so there is no <concepts> library for exmeple
- there is some notes in the exemple source files about stranges behaviours
- I'm still learning c++20 modules and i'm open to any suggestions :)
ps : cpp20 modules seems slightly differents from c++2a's

