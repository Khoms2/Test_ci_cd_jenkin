pipeline {

    agent any
    tools {
        nodejs "Nodejs"

    }
    stages {
    
            stage('checkout') {
                steps {
                  git branch: 'main', url: 'https://github.com/Khoms2/Test_ci_cd_jenkin.git'
                }
            }
        }
        stage('Test'){
            steps {
                sh 'node -v'
                sh 'npm -v'
            }
        }
        stage('Build') {
            steps {
                sh 'npm install'
                sh 'npm run build'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t my-node-app:2.0 .'
    }
}