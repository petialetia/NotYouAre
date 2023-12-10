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
    }
}
