pipeline {
    agent any
    triggers {
        githubPush()
    }
    stages {
        stage('Requirements installation') {
            steps {
                sh './requirements_ubuntu.sh --test'
            }
        }
        stage('Building') {
            steps {
                sh './requirements_ubuntu.sh --test'
                sh './build.sh'
            }
        }
        stage('Testing') {
            steps {
                sh './requirements_ubuntu.sh --test'
                sh './test.sh'
            }
        }
        stage('Docker building') {
            steps {
                sh 'docker build --tag "not_you_are" .'
            }
        }
    }
    post {
        always {
            junit 'TestsResults.xml'
        }
    }
}
