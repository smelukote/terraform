pipeline {
    agent any

    stages {
       stage('init') {
            steps {
                echo 'Building..'
            }
                node {
                 {
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
