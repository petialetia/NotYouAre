pipeline {
    agent any
    triggers {
        githubPush()
    }
    stages {
        stage('Test') {
            steps {
                sh 'ls'
            }
        }
    }
}
