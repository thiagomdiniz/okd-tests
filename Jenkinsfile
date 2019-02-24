pipeline {
    agent {
        docker { image 'php:7.2-apache' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'php --version'
            }
        }
    }
}
