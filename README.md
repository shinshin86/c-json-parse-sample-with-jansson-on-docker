# c-json-parse-sample-with-jansson-on-docker

Use [Jansson](https://github.com/akheron/jansson).


## Getting started

Build image and Run docker

```bash
docker build -t c-json-parse-sample .
docker run -it --rm -v $(pwd)/work:/tmp/share --name c-json-parse-sample-01 c-json-parse-sample /bin/bash
```


Build C program on docker

```sh
# change dir
cd /tmp/share

# build and run
gcc sample.c -ljansson && ./a.out
```


## PlugInstall must be done(Vim)

After connecting to Docker, launch vim and hit this command.

```vim
:PlugInstall
```

