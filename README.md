# build-it-and-check-it-with-jenkins

This repository allows other repositories to download it and run jenkins container which will build the application and run the tests automatically.

![Selective Photography Cement by Rodolfo Quiros](./img/pexels-rodolfo-quirós-2219024.jpg)

## Usage

To use this CI/CD repo:
- copy seedJob.xml to your repo and change "<hudson.plugins.git.UserRemoteConfig> url"
- add Jenkins.file to your repo and define your pipelines, that will be executed by Container defined in this repo.

The createJobs.groovy files will be used by Jenkins job DSL plugin to create build/test job.

This repository uses Infrastructure as a Code philosophy, setting everything beforehand up.

## Need further support?

Contact me if you need help at rojberr@outlook.com .
