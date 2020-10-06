FROM python:3.6
RUN pip install py2deb \
    && apt-get update \
    && apt-get install -y dpkg-dev fakeroot \
    && apt-get clean

WORKDIR /build
ENTRYPOINT ["py2deb"]

