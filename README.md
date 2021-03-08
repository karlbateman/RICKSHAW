# Rickshaw

> An unofficial Docker version of Jupyter

## Introduction

[Jupyter](https://jupyter.org) is an online data science environment. Rickshaw is a Docker version of
Jupyter which includes a collection of popular data science [Python](https://www.python.org/)
libraries which simplifies setup and deployment.

![Rickshaw Screenshot](EXAMPLE.png)

## Getting Started

Before you proceed with usage examples, please ensure you have [Docker](https://docker.com)
installed on your system.

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

## Packages

The following packages have been bundled with this environment for convenience:

| Name             | Version |
| ---              | ---     |
| [beautifulsoup4] | 4.9.3   |
| [deepdiff]       | 5.2.3   |
| [geopandas]      | 0.9.0   |
| [jupyterlab]     | 3.0.9   |
| [langdetect]     | 1.0.8   |
| [matplotlib]     | 3.3.4   |
| [numpy]          | 1.19.2  |
| [pandas]         | 1.2.3   |
| [protorpc]       | 0.12.0  |
| [rasterio]       | 1.2.1   |
| [requests]       | 2.25.1  |
| [scikit-learn]   | 0.24.1  |
| [scipy]          | 1.6.1   |
| [shapely]        | 1.7.1   |
| [spacy]          | 3.0.3   |
| [sqlalchemy]     | 1.3.23  |
| [tensorflow]     | 2.4.1   |

[beautifulsoup4]: https://www.crummy.com/software/BeautifulSoup/bs4/doc/
[deepdiff]: https://deepdiff.readthedocs.io/en/latest/
[geopandas]: https://geopandas.org/
[jupyterlab]: https://jupyter.org/
[langdetect]: https://github.com/Mimino666/langdetect
[matplotlib]: https://matplotlib.org/
[numpy]: http://www.numpy.org/
[pandas]: https://pandas.pydata.org/
[protorpc]: https://cloud.google.com/appengine/docs/standard/python/tools/protorpc
[rasterio]: https://rasterio.readthedocs.io/en/latest/
[requests]: https://requests.readthedocs.io/en/master/
[scikit-learn]: https://scikit-learn.org/stable/
[scipy]: https://www.scipy.org/
[shapely]: https://shapely.readthedocs.io/en/stable/manual.html
[spacy]: https://spacy.io/
[sqlalchemy]: https://www.sqlalchemy.org/
[tensorflow]: https://www.tensorflow.org/

## Kernels

The following kernels have been configured to work with this Jupyter configuration.

| Kernel   | Version |
| ---      | ---     |
| [python] | 3.9     |

[python]: https://www.python.org

## License

[BSD](LICENSE) © [@karlbateman](https://github.com/karlbateman)
