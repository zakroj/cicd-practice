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

    stage('Test') {
      steps {
        script {
          docker.image("${registry}:${env.BUILD_ID}").inside {c ->
          sh '/scripts/build.sh'}
        }

      }
    }

  }
  environment {
    registry = 'zakroj/ci_cd_jenkins'
  }
}