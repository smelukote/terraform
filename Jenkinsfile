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
                sh '/var/jenkins_home/workspace/terraform init ./terraform-pipiline_master/terraform'
            }
        }
        stage('terraform plan') {
            steps {
                sh '/var/jenkins_home/workspace/terraform-pipiline_master/terraform/terraform plan'
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}
