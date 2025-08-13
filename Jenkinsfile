pipeline{
    agent any
    tools {
        nodejs 'NodeJS'
    }

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out code...'
                checkout scm
            }
        }
        stage('Build') {
            steps {
                echo 'Building completed...'
                sh 'npm run build'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
                sh 'node -v'
                sh 'npm -v'

            }
        }
    }

    post {
        always {
            echo 'Cleaning up...'
        }
    }
}