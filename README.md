# preconfigured-jenkins

This Infrastructure as a Code repo builds Docker image and deploys preconfigured Jenkins container to build, test and deploy other projects!
~~An exemplary instance was deployed here :point_right: [http://207.154.196.96:8080/](http://207.154.196.96:8080/)~~ :feelsgood:
I use it daily to build and check my own GitHub code.

![Selective Photography Cement by Rodolfo Quiros](./img/readme-img.jpg)

## Usage

To use this CI/CD repo:

- clone it,

```bash
git clone git@github.com:rojberr/preconfigured-jenkins.git
```

- in `custom-jenkins-config` change the repositories URL to match your GitHub repository URLs,

- add `Jenkinsfile` to your GitHub repositories (make sure they are public) and define your pipeline steps there,

- define admin login and password:

```bash
export JENKINS_ADMIN_ID=...
export JENKINS_ADMIN_PASSWORD=...
```

- build and run container:

```bash
./gradlew build docker dockerRun
```

- log in as admin and enjoy your dockerized Jenkins for GitHub jobs 💕

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

## Things to automate - quick list:

- setting up the infra / server
- downloading jenkins (jar/war) / or container hosted?
- installation / first setup
- unlocking jenkins for the first time (token?)
- user creation (at least one for each: guest / dev / admin) with roles
- jenkins plugins
- jenkins master slave setup (one master and create one slave)
  (master - scheduling jobs, communicating and giving instr)
  (slave - execute ojbs, takes cmds from master)
- configure global security for agents

- build pipelines (at least one for each project)
- schedule some nightly / periodic builds

- configure build triggers on git push
  (webhook and poll scm)

- delegate user database or include LDAP

- configure:
- set system message
- set # executors
- email notifications (use plugin extended e-mail notification)
- configure smtp (gmail? / docker mailserver)
-
- html reports after tests

docker run --name jenkins -d -p 9090:8080 --mount source?jenkins_data,target=/var/jenkins_home
or -v jenkins_data:/var/jenkins_home jenkins/jenkins:latest?
the the volume is under /var/lib/docker/volumes/

- add jenkinsfile to each project

- pipelines to build docker image from dockerfile and upload to dockerhub
  (add jenkins user to docker group usermode -a -G docker jenkins)

- multibranch jobs
