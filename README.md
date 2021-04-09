# Rickshaw

> An unofficial Docker version of Jupyter

## Introduction

[Jupyter](https://jupyter.org) is an online data science environment. Rickshaw is a Docker version of Jupyter which
simplifies setup and deployment.

![Rickshaw Screenshot](EXAMPLE.png)

## Getting Started

Before you proceed with usage examples, please ensure you have [Docker](https://docker.com) installed on your system.

### Usage

Run either of the following commands to launch a local instance, depending on your needs.

```bash
docker run --rm --tty --interactive \
  --publish=127.0.0.1:8888:8888 \
  --name=rickshaw \
  karlbateman/rickshaw \
  ;
```

For mounting a persisted volume, please use the following command.

```bash
docker run --rm --tty --interactive \
  --publish=127.0.0.1:8888:8888 \
  --name=rickshaw \
  --volume=$HOME/.data/notebooks:/usr/src/app \
  karlbateman/rickshaw \
  ;
```

Visit <http://localhost:8888> in your web browser.

## Kernels

The following kernels have been configured to work with this Jupyter configuration.

| Kernel   | Version |
| ---      | ---     |
| [python] | 3.8     |

[python]: https://www.python.org

## License

[BSD](LICENSE) © [@karlbateman](https://github.com/karlbateman)
