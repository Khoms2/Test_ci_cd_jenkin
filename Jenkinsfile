pipeline {

    agent any
    tools {
        nodejs "Nodejs"

    }
    stages {
        stages ('checkout') {
            stage('checkout') {
                steps {
                    checkout scm
                }
            }
        }
        stage('Test'){
            steps {
                sh 'node -v'
                sh 'npm -v'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t my-node-app:2.0 .'
                // sh 'npm run build'
            }
        }
    }
}