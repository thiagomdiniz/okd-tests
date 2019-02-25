pipeline {
    agent any
    stages {
        stage('Build Image') {
            steps {
                script {
                    dockerImage = docker.build("diniz-image:$BUILD_NUMBER")
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry('https://registry.fiesc.com.br/thiago/di-ci', 'oc-registry') {
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
