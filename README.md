# build-tag-push-to-gcr-action
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Folmero%2Fbuild-tag-push-to-gcr-action.svg?type=shield)](https://app.fossa.com/projects/git%2Bgithub.com%2Folmero%2Fbuild-tag-push-to-gcr-action?ref=badge_shield)

Github action for building, tagging with git commit sha and branch name and pushing docker images to GCR

Pass all sensitive data using secrets.

## Inputs

### `project_name`

Name of the java project that is being built.

### `jar_file`

Path to the JAR file that will be containerized.

### `docker_file`

Path to Dockerfile that will be used to build the image.

## Required Environment Variables

### `GCLOUD_JSON_KEY`

JSON key to use for GCR authentication.

### `GCLOUD_PROJECT_ID`

Google cloud project id. Used in combination with GCR endpoint to build full docker image.

## Example usage

```ylm
uses: olmero/build-tag-push-to-gcr-action@v1
with:
  project_name: api-tender
  jar_file: build/libs/api-tender-1.0.0.RELEASE.jar
env:
  GCLOUD_JSON_KEY: ${{ secrets.GCLOUD_JSON_KEY }}
  GCLOUD_PROJECT_ID: ${{ secrets.GCLOUD_PROJECT_ID }}
```

## License
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Folmero%2Fbuild-tag-push-to-gcr-action.svg?type=large)](https://app.fossa.com/projects/git%2Bgithub.com%2Folmero%2Fbuild-tag-push-to-gcr-action?ref=badge_large)