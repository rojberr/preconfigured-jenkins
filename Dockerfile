FROM jenkins/jenkins:2.362-jdk17

MAINTAINER Rojberr rojberr@outlook.com

# Install required plugins
RUN jenkins-plugin-cli --plugins \
    git:4.11.4 \
    github:1.34.5 \
    job-dsl:1.81 \
    workflow-aggregator:590.v6a_d052e5a_a_b_5 \
    authorize-project:1.4.0 \
    gradle:1.39.4 \
    credentials:1129.vef26f5df883c

COPY seedJob.xml /usr/share/jenkins/ref/jobs/seed-job/config.xml

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false