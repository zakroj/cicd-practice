pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        script {
	          checkout scm
	          def customImage = docker.build("${registry}:${env.BUILD_ID}")
	        }
      }
    }
    
	  stage('list OPT') {
      steps {
        script {
	          docker.image("${registry}:${env.BUILD_ID}").inside {c ->
	          sh 'ls ./scripts'}
	        }
      }
    }
	  
    stage('Build The Application') {
      steps {
        script {
	          docker.image("${registry}:${env.BUILD_ID}").inside {c ->
	          sh "chmod +x /scripts/build.sh; /scripts/build.sh"}
	        }
      }
    }

    stage('Test') {
      steps {
        script {
	          docker.image("${registry}:${env.BUILD_ID}").inside {c ->
	          sh "chmod +x /scripts/test.sh; /scripts/build.sh"}
	        }
      }
    }

  }
  environment {
    registry = 'zakroj/ci_cd_jenkins'
  }
}
