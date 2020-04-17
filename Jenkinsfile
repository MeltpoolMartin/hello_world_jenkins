pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'echo "Building ..."'
                sh 'ls -la'
                sh 'pwd'
            }
        }
        stage('CMake') {
            steps {
                cmakeBuild
                    generator: 'Unix Makefiles',
                    buildDir: 'build',
                    sourceDir: 'source',
                    installation: 'InSearchPath',
                    steps: [
                        [args: 'all install', envVars: 'DESTDIR=${WORKSPACE}/artifacts']
      ]
            }
        }
    }
}