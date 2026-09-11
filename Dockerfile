FROM python:3.14.7-alpine3.24

RUN apk add --no-cache \
        openjdk21-jre \
        curl \
        tar \
    && curl -fsSL \
        -o allure.tgz \
        https://repo.maven.apache.org/maven2/io/qameta/allure/allure-commandline/2.36.0/allure-commandline-2.36.0.tgz \
    && tar -xzf allure.tgz -C /opt/ \
    && ln -s /opt/allure-2.36.0/bin/allure /usr/local/bin/allure \
    && rm allure.tgz

WORKDIR /usr/workspace

COPY requirements.txt .

RUN python -m pip install --no-cache-dir -r requirements.txt