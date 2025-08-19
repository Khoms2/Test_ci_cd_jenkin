pipeline {
    agent any

    tools {
        nodejs 'NodeJS '
    }
    stages {

        stage('checkout') {
            steps { 

             checkout scm
                
            }
        }
    }
        stage('Test') {
            steps {
               
         sh 'node -v'
         sh 'npm -v'
                
            }
        }
    stage('Build Docker Image') {
         steps{
        sh'npm run build -t my-node-app:2.0 .'
        }
    }
}
