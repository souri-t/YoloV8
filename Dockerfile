FROM debian:latest

# 必要なパッケージをインストール
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y --no-install-recommends git vim wget

# Pythonをダウンロード、ビルド、インストール
RUN apt-get install pip -y
RUN pip3 install --break-system-packages ultralytics
RUN apt-get install libglib2.0-0 -y
RUN apt-get install libopencv-dev -y

