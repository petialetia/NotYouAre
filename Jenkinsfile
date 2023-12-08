pipeline {
    agent any
    triggers {
        githubPush()
    }
    stages {
        stage('Test') {
            steps {
                sh 'echo "Hello world"'
                sh 'ls'
            }
        }
    }
}
