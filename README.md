# Docker Exec Image: s

A Dockerfile describing an container capable of executing s source files.

# Build

```sh
git clone https://github.com/docker-exec/coffee.git
docker build -t dexec/lang-coffee .
```

# Usage

In a directory containing a script e.g. foo.coffee, run:

```sh
docker run -t --rm \
    -v $(pwd -P)/foo.coffee:/tmp/dexec/build/foo.coffee \
    dexec/lang-coffee foo.coffee
```

## Passing arguments to the script

Arguments can be passed to the script using any of the following forms:

```
-a argument
--arg argument
--arg=argument
```

Each argument passed must be prefixed in this way, e.g.

```sh
docker run -t --rm \
    -v $(pwd -P)/foo.coffee:/tmp/dexec/build/foo.coffee \
    dexec/lang-coffee foo.coffee \
    --arg='hello world' \
    --arg=foo \
    --arg=bar
```
