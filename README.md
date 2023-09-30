# Bitbucket Pipelines Pipe: git-crypt-pipe

Decrypts `git-crypt` encrypted repositories in Bitbucket Pipelines.

## YAML Definition

Add the following snippet to the script section of your `bitbucket-pipelines.yml` file:

```yaml
script:
  - pipe: tomerh2001/git-crypt-pipe:latest
    variables:
      SECRETS_KEY: $SECRETS_KEY
```

## Variables

| Name         | Usage                                        | Type     |
|--------------|----------------------------------------------|----------|
| `SECRETS_KEY`| The base64 encoded git-crypt key.            | Mandatory|

## Details

This pipe is built to help you decrypt files in your git repository encrypted using `git-crypt` during a Bitbucket Pipeline run. Ensure that you have `git-crypt` setup properly in your repository before using this pipe.

## Prerequisites

- You must have your repository encrypted with `git-crypt`.
- A base64 encoded `git-crypt` key stored in your Bitbucket Pipelines environment variables as `SECRETS_KEY`.
