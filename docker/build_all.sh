#!/bin/bash

VERSION="${1:-v0.5.11-oracle}"

pushd .. 

git checkout $VERSION
docker build -t terramoney/core:$VERSION .
git checkout -

popd

docker build --build-arg version=$VERSION --build-arg chainid=columbus-5 -t terramoney/core-node:$VERSION-columbus-5 .
docker build --build-arg version=$VERSION --build-arg chainid=bombay-12  -t terramoney/core-node:$VERSION-bombay-12  .
docker build --build-arg version=$VERSION --build-arg chainid=rebel-1    -t terramoney/core-node:$VERSION-rebel-1    .
