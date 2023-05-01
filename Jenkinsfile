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
          checkout scm
	          def customImage = docker.build("${registry}:${env.BUILD_ID}")
        }

      }
    }

  }
  environment {
    registry = 'zakroj/ci_cd_jenkins'
    registryCredential = 'dockerhub_id'
  }
}
