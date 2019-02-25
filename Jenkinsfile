pipeline {
    agent { dockerfile true }
    environment {
        PATH = "/usr/bin:/usr/local/bin:$PATH"
    }
    stages {
        stage('Build Docker Image') {
            steps {
                sh "echo $PATH"
                script {
                  docker.build "diniz-image:$BUILD_NUMBER"
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                script {
                  dockerImage.push()
                }
            }
        }
        stage('Remove Unused docker image') {
          steps {
            sh "docker rmi diniz-image:$BUILD_NUMBER"
          }
       }
    }
}
