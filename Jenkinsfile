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
        stage('Ls') {
            steps {
                sh 'ls'
            }
        }
    }
    post {
        always {
            junit 'TestsResults.xml'
        }
    }
}
