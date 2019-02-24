pipeline {
    agent { dockerfile true }
    stages {
        stage('Docker Build') {
            steps {
                script {
                  docker.build "diniz-image:$BUILD_NUMBER"
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
