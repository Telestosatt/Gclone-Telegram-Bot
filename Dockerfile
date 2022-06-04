FROM ubuntu:20.04

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
ENV TZ=Asia/Kolkata
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -qq update
RUN apt-get -qq install -y git python3 python3-pip \
    locales python3-lxml \
    curl pv jq nginx sudo
RUN curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
RUN apt-get install nodejs -y
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt && \
    apt-get -qq purge git
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
COPY . .
RUN chmod +x start.sh
RUN chmod +x gclone
CMD ["bash","start.sh"]
