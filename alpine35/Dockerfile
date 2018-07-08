FROM python:3.5-alpine

MAINTAINER Evgeniy Klemin "evgeniy.klemin@gmail.com"

ARG CONT_IMG_VER=alpine35-0.1.1
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
	&& pip install mysqlclient==1.3.13 \
        # system
        lxml \
        # edxsession
        virtualenv \
        # pillow
        python-magic \
        Pillow==5.2.* \
    && find /usr/local -depth \
		\( \
			\( -type d -a \( -name test -o -name tests \) \) \
			-o \
			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) \
		\) -exec rm -rf '{}' + \
    && apk add --no-cache --virtual .runtime-deps \
        mariadb-client-libs \
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
