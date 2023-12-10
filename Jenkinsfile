pipeline {
    agent any
    triggers {
        githubPush()
    }
    stages {
        stage('Install dependencies') {
            steps {
                sh './requirements_ubuntu.sh'
            }
        }
        stage('Building') {
            steps {
                sh './build.sh'
            }
        }
    }
}
