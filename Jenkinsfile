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
    }
    post {
        always {
            archiveArtifacts artifacts: 'TestsResult.xml'
        }
    }
}
