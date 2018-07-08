

ALPINE35_IMG_VER=$(shell grep "ARG CONT_IMG_VER" alpine35/Dockerfile | awk -F'[ =]' '{print $$3}')
ALPINE35_FULL_IMG_VER=$(shell grep "ARG CONT_IMG_VER" alpine35-full/Dockerfile | awk -F'[ =]' '{print $$3}')


build.alpine35:
	docker build -t evgeniyklemin/python-dev:${ALPINE35_IMG_VER} alpine35

build.alpine35-full:
	docker build -t evgeniyklemin/python-dev:${ALPINE35_IMG_VER} alpine35-full
