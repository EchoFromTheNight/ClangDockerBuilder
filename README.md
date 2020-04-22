# ClangDockerBuilder

## What is it ?
This is a simple way to build a c++20 projet with clang10+ (curently not available in my distro)

## How it works ?
It forward "make" command into a docker container (not the options)

## How to use it ?
You need to build the docker image 
```
docker-compose build
```
After this you have to link **projectDir** to the folder containing your project (exemple is the currently linked project)
```
rm projectDir
ln -s exemple projectDir
```


## Notes
I'm still learning c++20 modules and i'm open to any suggestions :)
ps : cpp20 modules seems differents from c++2a's

## toDo
check this file rendering on github XD
