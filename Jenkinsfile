try {
  stage('checkout') {
    node {
      cleanWs()
      checkout scm
    }
  }
  
  
  // Run terraform init
  stage('init') {
    node {
       {
          sh 'terraform init'
        }
      }
    }
}
