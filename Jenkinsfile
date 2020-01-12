pipeline {
    agent {
        node {
            label 'master'
        }
    }

    stages {

        stage('terraform started') {
            steps {
                sh 'echo "Started...!" '
            }
        }
        stage('git clone') {
            steps {
                sh 'rm -r *;git clone https://github.com/smelukote/terraform.git'
            }
        }
        stage('terraform init') {
            steps {
                sh 'terraform init '
            }
        }
        stage('terraform plan') {
            steps {
               sh 'terraform  plan '
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}
