pipeline {
    agent {
        docker {
            image 'alpine'
            args '-u root'
        }
    }
    stages {
        stage('Init package manager') {
            steps {
                sh 'apk --version'
                sh 'whoami'
                sh 'apk update'
            }
        }
        stage('Collect packages') {
            steps {
                sh 'apk add make'
                sh 'apk add cmake'
                sh 'apk add gcc'
            }
        }
        stage('Check installed software') {
            steps {
                sh 'make --version'
                sh 'cmake --version'
                sh 'gcc --version'
                sh 'ls -la /usr/bin'
            }
        }
    }
}