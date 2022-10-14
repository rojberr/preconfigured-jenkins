FROM jenkins/jenkins:2.368-jdk17 AS preconfigured-jenkins

LABEL maintainer="rojberr"
LABEL build_date="2022-09-14"

# Set CASC_JENKINS_CONFIG env to point to config folder ###
ENV CASC_JENKINS_CONFIG /var/jenkins_home/custom-jenkins-config.yml
# Skip setup wizard
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

# Install Docker
USER root
RUN curl https://get.docker.com/ | sh
RUN usermod -aG docker jenkins

# Install required plugins
USER jenkins
RUN jenkins-plugin-cli --plugins \
    git:4.11.4 \
    job-dsl:1.81 \
    gradle:1.39.4 \
    github:1.34.5 \
    ## For "authorizationStrategy: globalMatrix"
    matrix-auth:3.1.5 \
    authorize-project:1.4.0 \
    pipeline-stage-view:2.24 \
    credentials:1139.veb_9579fca_33b_ \
    docker-workflow:521.v1a_a_dd2073b_2e \
    configuration-as-code:1512.vb_79d418d5fc8 \
    workflow-aggregator:590.v6a_d052e5a_a_b_5

# Copy config files
COPY /remote-jobs/seedJob.xml /usr/share/jenkins/ref/jobs/seed-job/config.xml
COPY custom-jenkins-config.yml /var/jenkins_home/custom-jenkins-config.yml

# Groovy scripts executed during startup
COPY --chown=jenkins:jenkins init.groovy.d/ var/jenkins_home/init.groovy.d/