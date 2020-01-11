pipeline {
    agent any

    stages {
       stage('init') {
            steps {
                sh 'terraform init'
                 }
              }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
