pipeline {
    environment {
        registry = "https://registry.fiesc.com.br/di-ci"
        registryCredential = 'oc-registry'
        dockerImage = ''
    }
    agent any
    stages {
        stage('Build Image') {
            steps {
                script {
                    dockerImage = docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry('', registryCredential) {
                        dockerImage.push()
                    }
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
