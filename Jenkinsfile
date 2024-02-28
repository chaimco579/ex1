pipeline {
  agent any
  stages {
    stage('Preparation') {
      steps {
        deleteDir()
      }
    }

    stage('docker image') {
      steps {
        dir(path: 'ex1') {
          sh 'docker build -t ex1flaskprod .'
        }

      }
    }

    stage('docker images') {
      steps {
        sh 'docker images'
      }
    }

    stage('Create and Run Container') {
      steps {
        sh 'docker run -dit -p 5000:5000 --name ex1flskprodcntr ex1flaskprod'
      }
    }

    stage('Verify Container') {
      steps {
        sh 'docker start ex1flskprodcntr'
        sh 'docker ps'
      }
    }

  }
}