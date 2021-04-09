FROM ubuntu:20.04
LABEL author 'Karl Bateman'
WORKDIR /usr/src/app

ENV DEBIAN_FRONTEND noninteractive
ENV PYTHONUNBUFFERED 1

RUN apt-get update \
    && apt-get install -y software-properties-common \
        && add-apt-repository ppa:deadsnakes/ppa \
            && apt-get install -y \
                pandoc \
                python3.8 \
                python3.8-dev \
                python3-pip \
                texlive-xetex \
        && rm -rf /var/lib/apt/lists/* \
    ;

COPY requirements.txt .
RUN python3.8 -m pip install --no-cache-dir -r requirements.txt

EXPOSE 8888
ENTRYPOINT ["jupyter"]
CMD ["lab", "--notebook-dir=/usr/src/app", "--ip=0.0.0.0", "--ServerApp.token=''", "--no-browser", "--allow-root", "--port=8888"]
