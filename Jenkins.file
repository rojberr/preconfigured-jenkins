pipeline {
        agent any
//     agent {
//         docker { image 'node:7-alpine' }
//     }
    triggers {
        pollSCM '* * * * *'
    }
    stages {
        stage('Build') {
            steps {
                sh './gradlew assemble'
            }
        stage('Test') {
            steps {
                sh './gradlew test'
            }
        }
    }
}