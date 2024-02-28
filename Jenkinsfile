pipeline {
    agent any

    stages {
        stage('Preparation') {
            steps {
                // Clean the workspace before cloning
                deleteDir()
            }
        }
        stage('docker image') {
            steps {
                dir('ex1') {
                    sh 'docker rmi ex1flaskprod'
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
                // Assuming flask-app as image name and flask-container as container name
                // Change 5000:5000 if your app listens on a different port
                sh 'docker rm ex1flskprodcntr'
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
