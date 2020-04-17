pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'echo "Building with CMake ..."'
                cmakeBuild buildType: 'Debug', cleanBuild: true, installation: 'InSearchPath', steps: [[withCmake: true]]
            }
        }
    }
}