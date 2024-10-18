pipeline {
    agent any
    triggers {
        githubPush()
    }
    stages {
        stage('Requirements installation') {
            steps {
                sh './requirements_ubuntu.sh'
            }
        }
        stage('Building') {
            steps {
                sh './update_submodules.sh'
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
