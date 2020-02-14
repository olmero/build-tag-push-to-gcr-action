#!/bin/sh -l

TAG_BRANCH="eu.gcr.io/$GCLOUD_PROJECT_ID/$INPUT_PROJECT_NAME:${GITHUB_REF#refs/heads/}"
TAG_SHA="eu.gcr.io/$GCLOUD_PROJECT_ID/$INPUT_PROJECT_NAME:$GITHUB_SHA"

echo "$GCLOUD_JSON_KEY" | docker login -u _json_key --password-stdin https://eu.gcr.io/
docker build . --build-arg JAR_FILE="$INPUT_JAR_FILE" --tag "$TAG_BRANCH" --tag "$TAG_SHA"
docker push "$TAG_BRANCH"
docker push "$TAG_SHA"