pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh './scripts/build.sh'
      }
    }

    stage('Build The Application') {
      steps {
        script {
          docker.image("${registry}:${env.BUILD_ID}").inside {c ->
          sh 'npm install'}
        }

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