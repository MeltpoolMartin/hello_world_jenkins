pipeline {
    agent {
        docker {
            image 'alpine'
            args '-u root'
        }
    }
    stages {
        stage('Clena up') {
            steps {
                sh 'rm -'
            }
        }
        stage('Init package manager') {
            steps {
                sh 'apk --version'
                sh 'whoami'
                sh 'apk update'
            }
        }
        stage('Setup build environment') {
            steps {
                sh 'apk add --upgrade make'
                sh 'apk add --upgrade cmake'
                sh 'apk add --upgrade gcc'
                sh 'apk add --upgrade g++'
                sh 'apk add --upgrade bash'
            }
        }
        stage('Check installed software') {
            steps {
                sh 'make --version'
                sh 'cmake --version'
                sh 'gcc --version'
                sh 'g++ --version'
                sh 'bash --version'
                sh 'ls -la /usr/bin'
                sh 'ls -la /bin'
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