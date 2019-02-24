pipeline {
    agent { dockerfile true }
    stages {
        stage('Docker Build') {
            steps {
                node {
                  checkout scm
                  def customImage = docker.build("diniz-image:${env.BUILD_ID}")
                  customImage.push()
                }
            }
        }
    }
}
