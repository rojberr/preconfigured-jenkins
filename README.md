# build-your-repo-with-jenkins-container

This repository creates preconfigured Jenkins container to download Your repos and run their Jenkins.file.

![Selective Photography Cement by Rodolfo Quiros](./img/pexels-rodolfo-quirós-2219024.jpg)

## Usage

To use this CI/CD repo:

- clone it,
- change "<hudson.plugins.git.UserRemoteConfig> url" in seedJob.xml to your API repo url
- change url in pipelineJob.groovy to your API repo url,
- add Jenkins.file to your API repo and define your pipelines there, they will be executed by Container defined in this repo,
- build and run container that will execute your pipelines:

```bash
./gradlew build docker dockerRun
```

To stop it use:
```bash
./gradlew dockerStop
```

## How it works?

The createJobs.groovy files will be used by Jenkins job DSL plugin to create build/test job.

This repository uses Infrastructure as a Code philosophy, setting everything beforehand up.

## Need further support?

Contact me if you need help at rojberr@outlook.com .  

![Jenkins Screenshot](./img/jenkins-example.jpg)
