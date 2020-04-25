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
        stage('Setup build environment') {
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
        stage('Build') {
            steps {
                sh 'chmod +x scripts/build.sh'
                sh 'pwd'
                sh 'ls -la .'
                sh 'scripts/build.sh'
            }
        }
        stage('Run') {
            steps {
                sh 'chmod +x scripts/run.sh'
                sh 'scripts/run.sh'
            }
        }
    }
}