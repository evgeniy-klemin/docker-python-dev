FROM python:3.5-alpine

MAINTAINER Evgeniy Klemin "evgeniy.klemin@gmail.com"

ARG CONT_IMG_VER=alpine35-full-0.1.0
ENV CONT_IMG_VER $CONT_IMG_VER


#==========================================================
#                        PACKAGES
#==========================================================
RUN apk add -U --no-cache --virtual .build-deps \
        # common
		mariadb-dev \
		gcc \
		musl-dev \
		python-dev \
        # lxml
        libxslt-dev \
        libc-dev \
        # Pillow
        jpeg-dev \
        zlib-dev \
        freetype-dev \
        openjpeg-dev \
        file-dev \
        # pandas
        alpine-sdk \
        # scipy
        gfortran \
        build-base \
        libpng-dev \
        openblas-dev \
	&& pip install mysqlclient==1.3.13 \
        # system
        lxml \
        # edxsession
        virtualenv \
        # pillow
        python-magic \
        Pillow==5.2.* \
        # numpy,scipy,pandas
        python-dateutil \
        numpy==1.14.3 \
        scipy==0.19.* \
        pandas==0.23.0 \
    && apk add --no-cache --virtual .runtime-deps \
        mariadb-client-libs \
        musl \
        # edxsession
        python2 \
        # django tests
        sqlite \
        # pip
        git \
        # Pillow
        libmagic \
        jpeg \
        freetype \
        openjpeg \
        # scipy
        libgfortran \
        libgcc \
        libpng \
        libstdc++ \
	&& apk del .build-deps \
    && rm -rf /usr/local/lib/python3.5/site-packages/magic/


#==========================================================
#                      WORKDIR
#==========================================================
WORKDIR /app


#==========================================================
#                        CONFIGS
#==========================================================
EXPOSE 8000

