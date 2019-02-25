pipeline {
    environment {
        registry = "registry.fiesc.com.br/di-ci/diniz-image"
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
                    docker.withRegistry('https://registry.fiesc.com.br', registryCredential) {
                        dockerImage.push()
                    }
                }
            }
        }
        stage('Remove Unused docker image') {
          steps {
            sh "docker rmi " + registry + ":$BUILD_NUMBER"
          }
       }
    }
}
