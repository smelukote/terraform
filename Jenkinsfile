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
                sh 'sudo rm -r *;sudo git clone https://github.com/smelukote/terraform.git'
            }
        }
        stage('terraform init') {
            steps {
                sh 'sudo /var/jenkins_home/workspace/terraform-pipiline_master init'
            }
        }
        stage('terraform plan') {
            steps {
                sh '/var/jenkins_home/workspace/terraform-pipiline_master plan'
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}
