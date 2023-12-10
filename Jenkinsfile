pipeline {
    agent any
    triggers {
        githubPush()
    }
    stages {
        stage('Building') {
            steps {
                sh './build.sh'
            }
        }
        stage('Testing') {
            steps {
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
