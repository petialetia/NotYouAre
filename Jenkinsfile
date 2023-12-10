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
        stage('Testing') {
            steps {
                sh 'ls'
            }
        }
    }
    post {
        always {
            junit 'TestsResult.xml'
        }
    }
}
