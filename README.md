
# docker-logging-plugin
A logging driver for docker

This is a docker logging plugin in its simplest form. You can compile and build the plugin from source and install it using the following 3 steps.

### 1. Build an image and extract rootfs

Build an image:

`$ docker build -t docker-logging-plugin .`

Create a temporary container:

`$ docker container create —name tmp docker-logging-plugin`

Create a plugin directory to put compiled resources:

`$ mkdir -p ./plugin/rootfs`

Export rootfs to the plugin directory:

`$ docker container export tmp | tar -x -C ./plugin/rootfs`

### 2. Add plugin config
```
$ cp config.json ./plugin/
$ ls ./plugin
config.json 	rootfs/
```

### 3. Create plugin
```
$ docker plugin create jayantsinha/docker-logging-plugin ./plugin
$docker plugin ls
ID                NAME                                       		DESCRIPTION             ENABLED
1f8cc6367162      jayantsinha/docker-logging-plugin:latest   	  jsonfilelog as plugin   false
```
