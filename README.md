# Zero to Production In Rust

[![Continous Integration](https://github.com/hikilaka/zero2prod/actions/workflows/pipeline.yml/badge.svg)](https://github.com/hikilaka/zero2prod/actions/workflows/rust-ci.yml)
[![codecov](https://codecov.io/gh/hikilaka/zero2prod/branch/master/graph/badge.svg?token=YNR3L3ZVUL)](https://codecov.io/gh/hikilaka/zero2prod)

This repository is a following of the book [Zero to Production In Rust](https://www.zero2prod.com/).

## Deviations from _The Book_

The Zero to Production book gives a great introduction to continuous integration pipelines. However, it does not touch
base on continuous deployment. As a DevOps practitioner, I have decided to add this to my project.

What I'll use:

* [Terraform](https://www.terraform.io/) as my choice of IaC software.
* [Google Cloud](https://cloud.google.com/) to host the project as a serverless-function.
* [Codecov](https://codecov.io/) for code coverage.

## Branching Model

This project will follow the [GitFlow](https://nvie.com/posts/a-successful-git-branching-model/) branching model.

_Why?_ This allows the project to leverage git's branching capabilities to our advantage in terms of Devops. For
example, in order to deploy to the [SIT](https://en.wikipedia.org/wiki/System_integration_testing) environment, we
simply complete a pull request to the `develop` branch. To deploy to production, create a new branch following the
schema: `release/*` and the CI/CD pipeline will take care of the rest for you.

## What's Left To Do

* Implement the GitFlow branching model.
* Complete _the book_!
* Create IaC for a production environment
* Test that everything works as intended!
* Create a more robust pipeline
    * Templates
    * Comment on PRs that contain errors ([example](https://learn.hashicorp.com/tutorials/terraform/github-actions))
