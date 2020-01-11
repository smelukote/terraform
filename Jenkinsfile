try {
  stage('checkout') {
    node {
      cleanWs()
      checkout scm
    }
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

  // Run terraform plan
  stage('plan') {
    {
          sh 'terraform plan'
        }
      }
    }
  }

  if (env.BRANCH_NAME == 'master') {

    // Run terraform apply
    stage('apply') {
      {
            sh 'terraform apply -auto-approve'
          }
        }
      }
    }
// Run terraform show
    stage('show') {
      {
            sh 'terraform show'
          }
        }
    }
  currentBuild.result = 'SUCCESS'
}
catch (org.jenkinsci.plugins.workflow.steps.FlowInterruptedException flowError) {
  currentBuild.result = 'ABORTED'
}
catch (err) {
  currentBuild.result = 'FAILURE'
  throw err
}
finally {
  if (currentBuild.result == 'SUCCESS') {
    currentBuild.result = 'SUCCESS'
  }
}
