pipeline {
    agent { dockerfile true }
    stages {
        stage('Docker Build') {
            steps {
                def customImage = docker.build("diniz-image:${env.BUILD_ID}")
                customImage.push()
            }
        }
    }
}
