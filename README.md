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
