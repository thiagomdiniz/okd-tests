pipeline {
    agent { dockerfile true }
    stages {
        stage('Docker Build') {
            steps {
                script {
                  docker.build "diniz-image:$BUILD_NUMBER"
                }
            }
        }
    }
}
