# HyperCask

## cita
Merge duplicate scripts and optimize docker.

1. [Build scirpt]: Merge git commands into `Makefile`
2. [Duplicate env]: Merge `deamon.sh` into `env.sh`
3. [Commander]: Merge env.sh and `cita` into a new `cita`
4. [Opmitize Docker]: Replacing `$PWD` as `$CITA_HOME`, delete `cita_build` && slim docker workdir

### Installation
> Install [Docker Server][1] first.

__To use docker happily, we need:__
+ Click docker icon
+ `Docker -> Preferences... -> File Sharing`
+ share `/usr/local/Cellar/cita`

__Tap repo and install:__

```
brew tap clearloop/hyperfox
brew install cita
```

__By default, binaries installed by cita will be placed into:__

```
export CITA_PATH=/usr/local/Cellar/cita/0.21.1
```

You may want to add this to your `.bashrc`:

```
export CITA_HOME=$HOME/Library/cita
```

### Usage

Just exec `cita`:

```
Usage: cita_commander <command> <node> [options]
where <command> is one of the following:
    { help | setup | start | stop | restart | ping
      top | backup | clean | logs | logrotate }

Run `cita help` for more detailed information.
```

[1]: https://www.docker.com/get-started

## dart
+ Internal China Mirror
