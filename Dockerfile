FROM jenkins/jenkins:2.362-jdk11

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt

# Install required plugins
RUN jenkins-plugin-cli --plugins \
    git:4.11.4 \
    github:1.34.5 \
    job-dsl:1.81 \
    workflow-aggregator:590.v6a_d052e5a_a_b_5 \
    authorize-project:1.4.0 \
    gradle:1.39.4

COPY seedJob.xml /usr/share/jenkins/ref/jobs/seed-job/config.xml

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false