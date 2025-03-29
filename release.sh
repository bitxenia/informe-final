#!/bin/bash

VERSION=$1

if [[ -z "${VERSION}" ]]; then
    echo "Must provide a version"
    exit 1
fi

git tag -l | grep "${VERSION}" > /dev/null

TAG_EXISTS=$?

if [[ "${TAG_EXISTS}" -eq 0 ]]; then
    echo "Tag exists"
    exit 1
fi

git status | grep -qF 'nothing to commit'

NOTHING_TO_COMMIT=$?

if [[ "${NOTHING_TO_COMMIT}" -ne 0 ]]; then
    echo "Please commit changes before releasing"
    exit 1
fi

echo "Creating tag ${VERSION}..."

git tag "${VERSION}"

echo "Pushing tag ${VERSION}"

git push --tags

echo "Done"