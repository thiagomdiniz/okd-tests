pipeline {
    environment {
        registry = "registry.fiesc.com.br/di-ci/jenkins-dockerfileee"
        registryCredential = 'oc-registry'
        dockerImage = ''
    }
    agent any
    stages {
        stage('Build Image') {
            steps {
                script {
                    dockerImage = docker.build registry + ":latest"
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
            sh "docker rmi " + registry + ":latest"
          }
       }
    }
}
