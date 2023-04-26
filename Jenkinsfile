pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'script scripts/build.sh'
      }
    }

  }
  environment {
    registry = 'zakroj/ci_cd_jenkins'
  }
}