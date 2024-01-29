#
# Copyright 2023 Alexander Rose. All Rights Reserved.
#
# SPDX-License-Identifier: MIT-0.
#
FROM python:3.11.7-bullseye

ENV PYTHONUNBUFFERED=1

ENV PYTHONPATH "${PYTHONPATH}:/opt/app"

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 git -y

COPY ./app/requirements.txt /opt/app/requirements.txt

WORKDIR /opt/app

RUN pip install -r requirements.txt

COPY ./app /opt/app/

ENTRYPOINT ["python3", "src/csun_rcv"]