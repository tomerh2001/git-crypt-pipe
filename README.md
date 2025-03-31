# Bitbucket Git Crypt Pipe
[![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release)
[![XO code style](https://shields.io/badge/code_style-5ed9c7?logo=xo&labelColor=gray)](https://github.com/xojs/xo)
[![Snyk Security](../../actions/workflows/snyk-security.yml/badge.svg)](../../actions/workflows/snyk-security.yml)
[![CodeQL](../../actions/workflows/codeql.yml/badge.svg)](../../actions/workflows/codeql.yml)
[![OpenSSF Scorecard](https://api.securityscorecards.dev/projects/github.com/tomerh2001/git-crypt-pipe/badge)](https://securityscorecards.dev/viewer/?uri=github.com/tomerh2001/git-crypt-pipe)

Decrypts `git-crypt` encrypted repositories in Bitbucket Pipelines.

## YAML Definition

Add the following snippet to the script section of your `bitbucket-pipelines.yml` file:

```yaml
script:
  - pipe: docker://tomerh2001/git-crypt-pipe:latest
    variables:
      SECRETS_KEY: $SECRETS_KEY
      # GIT_STASH: 'true' # Optional
```

## Variables

| Name         | Usage                                        | Type     |
|--------------|----------------------------------------------|----------|
| `SECRETS_KEY`| The base64 encoded git-crypt key.            | Mandatory|
| `GIT_STASH`| When true, runs `git stash` before decrypting, and `git stash apply` after.            | Optional|

## Details

This pipe is built to help you decrypt files in your git repository encrypted using `git-crypt` during a Bitbucket Pipeline run. Ensure that you have `git-crypt` setup properly in your repository before using this pipe.

## Prerequisites

- You must have your repository encrypted with `git-crypt`.
- A base64 encoded `git-crypt` key stored in your Bitbucket Pipelines environment variables as `SECRETS_KEY`.
