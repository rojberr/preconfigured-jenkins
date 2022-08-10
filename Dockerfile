FROM jenkins/jenkins:2.362-jdk17

MAINTAINER Rojberr rojberr@outlook.com

# Install required plugins
RUN jenkins-plugin-cli --plugins \
    git:4.11.4 \
    job-dsl:1.81 \
    gradle:1.39.4 \
    github:1.34.5 \
    ## For "authorizationStrategy: globalMatrix"
    matrix-auth:3.1.5 \
    authorize-project:1.4.0 \
    credentials:1139.veb_9579fca_33b_ \
    configuration-as-code:1512.vb_79d418d5fc8 \
    workflow-aggregator:590.v6a_d052e5a_a_b_5

### COPY CONFIG FILES ###
COPY seedJob.xml /usr/share/jenkins/ref/jobs/seed-job/config.xml
COPY custom-jenkins-config.yml /var/jenkins_home/custom-jenkins-config.yml

### Set CASC_JENKINS_CONFIG env to point to config folder ###
ENV CASC_JENKINS_CONFIG /var/jenkins_home/custom-jenkins-config.yml

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false