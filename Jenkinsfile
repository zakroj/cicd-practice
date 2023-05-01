pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh '''chmod +x ./scripts/build.sh
 ./scripts/build.sh'''
      }
    }

    stage('Test the application') {
      steps {
        sh '''chmod +x ./scripts/test.sh
 ./scripts/test.sh'''
      }
    }

    stage('Build Docker Image') {
      steps {
        script {
          docker build -t ci-cd-practice
        }

      }
    }

  }
  environment {
    registry = 'zakroj/ci_cd_jenkins'
  }
}