pipeline {
    agent any

    stages {
        stage('Preparation') {
            steps {
                // Clean the workspace before cloning
                deleteDir()
            }
        }
        stage('git clone') {
            steps {
                sh 'git clone https://github.com/chaimco579/ex1.git'
            }
        }
    stage('docker image') {
      steps {
        sh 'docker build -t ex1flaskft ./ex1'
      }
    }

        stage('docker images') {
            steps {
                sh 'docker images'
            }
        }

        stage('Create and Run Container') {
            steps {
                // Assuming flask-app as image name and flask-container as container name
                // Change 5000:5000 if your app listens on a different port
                sh 'docker run -dit -p 5001:5001 --name ex1flskftcntr ex1flaskft'
            }
        }

        stage('Verify Container') {
            steps {
                sh 'docker start ex1flskftcntr'
                sh 'docker ps'
            }
        }
    }
}
