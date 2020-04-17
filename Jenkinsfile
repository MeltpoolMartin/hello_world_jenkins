pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'echo "Building ..."'
                sh 'chmod +x build.sh'
                sh 'ls -la'
                sh './build.sh'
                archiveArtifacts artifacts: 'bin/*', fingerprint: true
            }
        }
    }
}