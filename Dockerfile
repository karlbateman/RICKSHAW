FROM ubuntu
LABEL author 'Karl Bateman'
WORKDIR /usr/src/app

ENV DEBIAN_FRONTEND noninteractive
ENV PYTHONUNBUFFERED 1

RUN apt-get update \
    && apt-get install -y software-properties-common -y \
        && add-apt-repository ppa:deadsnakes/ppa \
            && apt-get install -y \
                pandoc \
                python3.8 \
                python3-pip \
                texlive-xetex \
        && rm -rf /var/lib/apt/lists/* \
    ;

RUN python3.8 -m pip install --no-cache-dir \
    beautifulsoup4 \
    deepdiff \
    jupyterlab \
    langdetect \
    matplotlib \
    numpy \
    pandas \
    protorpc \
    requests \
    scikit-learn \
    scipy \
    spacy \
    sqlalchemy \
    ;

EXPOSE 8888
ENTRYPOINT ["jupyter"]
CMD ["lab", "--notebook-dir=/usr/src/app", "--ip=0.0.0.0", "--NotebookApp.token=''", "--no-browser", "--allow-root", "--port=8888"]
