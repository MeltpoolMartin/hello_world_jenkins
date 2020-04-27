pipeline {
    agent {
        docker {
            image 'alpine'
            args '-u root'
        }
    }
    stages {
        stage('Package Manager') {
            steps {
                sh 'apk --version'
                sh 'whoami'
                sh 'apk update'
            }
        }
        stage('Setup Environment') {
            steps {
                sh 'apk add --upgrade make'
                sh 'apk add --upgrade cmake'
                sh 'apk add --upgrade gcc'
                sh 'apk add --upgrade g++'
                sh 'apk add --upgrade bash'
            }
        }
        stage('Verify Software') {
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
                sh 'echo "Building ..."'
                sh 'chmod +x scripts/build.sh'
                sh 'pwd'
                sh 'ls -la .'
                sh 'scripts/build.sh'
                archiveArtifacts artifacts: 'build/bin/*', fingerprint: true
            }
        }
        stage('Run') {
            steps {
                sh 'chmod +x scripts/run.sh'
                sh 'scripts/run.sh'
            }
        }
    }
    post {
        always {
            echo 'Clean up workspace...'
            echo "Remove (root) build folder..."
            sh 'rm -fr build'
            deleteDir()
        }
    }
}