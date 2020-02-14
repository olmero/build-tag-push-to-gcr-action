# build-tag-push-to-gcr-action
Github action for building, tagging with git commit sha and branch name and pushing docker images to GCR

Pass all sensitive data using secrets.

## Inputs

### `service_name`

Name of the service that is being built.

### `jar_file`

Path to the JAR file that will be containerized.

## Required Environment Variables

### `GCLOUD_JSON_KEY`

JSON key to use for GCR authentication.

### `GCLOUD_PROJECT_ID`

Google cloud project id. Used in combination with GCR endpoint to build full docker image.

## Example usage

```ylm
uses: olmero/build-tag-push-to-gcr-action
with:
  project_name: api-tender
  jar_file: build/libs/api-tender-1.0.0.RELEASE.jar
  env:
    GCLOUD_SERVICE_KEY: ${{ secrets.GCLOUD_SERVICE_KEY }}
    GOOGLE_PROJECT_ID: ${{ secrets.GOOGLE_PROJECT_ID }}
```