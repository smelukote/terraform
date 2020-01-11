pipeline {
    agent any

    stages {
        stage('init') {
            steps {
                /* `make check` returns non-zero on test failures,
                * using `true` to allow the Pipeline to continue nonetheless
                */
                sh 'terraform init' 
                
            }
        }
    }
}
