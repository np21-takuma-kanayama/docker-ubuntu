FROM ubuntu

RUN apt-get update && apt-get install -y \
    language-pack-ja \
    manpages-ja \
    manpages-ja-dev \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

RUN update-locale LANG=ja_JP.UTF-8 LANGUAGE=ja_JP:ja
ENV LANG=ja_JP.UTF-8
ENV LC_ALL=ja_JP.UTF-8
ENV LC_CTYPE=ja_JP.UTF-8

CMD ["bash"]