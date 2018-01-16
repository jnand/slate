<p align="center">
  <img src="https://raw.githubusercontent.com/lord/img/master/logo-slate.png" alt="Slate: API Documentation Generator" width="226">
  <br>
  <a href="https://travis-ci.org/jnand/slate"><img src="https://travis-ci.org/jnand/slate.svg?branch=master" alt="Build Status"></a>
</p>




Intro
-------

This fork of slate adds a dockerfile, extra tooling, and templating. Checkout the upstream readme for more details.


Quick Start
-----------

### Docker ###

```bash
❯ cd ./slate
❯ docker build –t slate .
❯ docker run --detach -it -p 4567:4567 --volume $PWD/source:/app/source slate
```

The docker container should now be watching your `$PWD` and serving them locally at http://localhost:4567.

Build static site

```bash
❯ docker exec -i -t container_name middleman build --clean
```

### Vagrant ###

```bash
❯ vagrant up
```

Build static site

```bash
❯ vagrant ssh
❯ cd /vagrant
❯ middleman build --clean
```


References
--------------------
1. [Slate](https://github.com/lord/slate)
2. [Middleman](https://github.com/middleman/middleman)
