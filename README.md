# build-your-repo-with-jenkins-container

This repository creates preconfigured Jenkins container to download Your repos and run their Jenkins.file.

![Selective Photography Cement by Rodolfo Quiros](./img/pexels-rodolfo-quirós-2219024.jpg)

## Usage

To use this CI/CD repo:

- clone it,
```bash
git clone git@github.com:rojberr/build-your-repo-with-jenkins-container.git
```

- in `seedJob.xml` change the "<hudson.plugins.git.UserRemoteConfig>...URL..." to your GitHub repository URL,

- add  `pipelineJob.groovy` to your remote repository, this file will create new `jenkinsJob`,

- add `Jenkins.file` to your GitHub repository and define your pipeline steps there,

- define admin login and password:

```bash
export JENKINS_ADMIN_ID=...
export JENKINS_ADMIN_PASSWORD=...
```
- build and run container:

```bash
./gradlew build docker dockerRun
```

- log in as admin, run `seedJob` to create the pipeline from remote `pipelineJob.groovy`

- enjoy your dockerized Jenkins for GitHub jobs 💕

To stop it use:
```bash
./gradlew dockerStop
```

## How it works?

The createJobs.groovy files will be used by Jenkins job DSL plugin to create build/test job.

This repository uses Infrastructure as a Code philosophy, setting everything up.

You can take a peek, how I deploy this Docker image on Digital Ocean Droplet here:
[https://github.com/rojberr/deploy](https://github.com/rojberr/deploy)

## Need further support?

Contact me if you need help at rojberr@outlook.com .  

![Jenkins Screenshot](./img/jenkins-example.jpg)
