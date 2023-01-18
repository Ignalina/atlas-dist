pipeline {
  agent any
  stages {
    stage('') {
      steps {
        sh '''cd dev-support/atlas-docker
docker-compose -f docker-compose.atlas-base.yml -f docker-compose.atlas-build.yml up'''
      }
    }

  }
}