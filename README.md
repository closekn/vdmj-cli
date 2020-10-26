# vdmj-cli

- vdmj-cli is a docker image to create an environment to run vdmj on the CLI.
- Dockerhub repository : [closekn/vdmj-cli](https://hub.docker.com/repository/docker/closekn/vdmj-cli)

## Features

- Run VDM++ file by using [nickbattle/vdmj](https://github.com/nickbattle/vdmj).

## How to

```shell
# Pull docker image
$ docker pull closekn/vdmj-cli
# Run VDM++ file
$ docker run -it --rm -v "`pwd`":/workspace closekn/vdmj-cli run_vdmpp RUN_FILE.vdmpp
# RUN VDM++ file (Windows PowerShell)
$ docker run -it --rm -v "${pwd}":/workspace closekn/vdmj-cli run_vdmpp RUN_FILE.vdmpp
```

- Replace `RUN_FILE.vdmpp` with the VDM++ file you want to run.

## Reference

- [nickbattle/vdmj](https://github.com/nickbattle/vdmj)
  - [releases/tag/4.3.0-1](https://github.com/nickbattle/vdmj/releases/tag/4.3.0-1) : Now use it.
