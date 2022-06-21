# build-your-repo-with-jenkins-container

This repository allows builds and runs preconfigured Jenkins container to download Your repos and run their Jenkins.file.
It allows you to easily build run the tests automatically.

![Selective Photography Cement by Rodolfo Quiros](./img/pexels-rodolfo-quirós-2219024.jpg)

## Usage

To use this CI/CD repo:

- clone it,
- change "<hudson.plugins.git.UserRemoteConfig> url" in seedJob.xml to your API repo url
- add Jenkins.file to your API repo and define your pipelines there, they will be executed by Container defined in this repo,
- build and run container that will execute your pipelines:

> ./gradlew build docker dockerRun

## How it works?

The createJobs.groovy files will be used by Jenkins job DSL plugin to create build/test job.

This repository uses Infrastructure as a Code philosophy, setting everything beforehand up.

## Need further support?

Contact me if you need help at rojberr@outlook.com .
