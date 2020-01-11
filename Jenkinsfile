pipeline {
    agent any

    stages {
       stage('checkout') {
            steps {
                echo 'Cleaning..'
                node {
                cleanWs()
                checkout scm
                }
            }
        }
        stage('Build') {
            steps {
                echo 'Building..'
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
