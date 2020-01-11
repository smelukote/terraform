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
                sudo sh '/home/jenkins/terraform init ./terraform '
            }
        }
        stage('terraform plan') {
            steps {
               sudo  sh '/home/jenkins/terraform  plan ./terraform '
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}
