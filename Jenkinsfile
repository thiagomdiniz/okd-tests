pipeline {
    agent { dockerfile true }
    stages {
        stage('Initialize') {
            def dockerHome = tool 'docker'
            env.PATH = "${dockerHome}/bin:${env.PATH}"
        }
        stage('Build Docker Image') {
            steps {
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
          steps{
            sh "docker rmi diniz-image:$BUILD_NUMBER"
          }
       }
    }
}
