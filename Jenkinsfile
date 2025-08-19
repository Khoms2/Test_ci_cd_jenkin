pipeline {
    agent any

    tools {
        nodejs "Nodejs"
    }

    environment {
        // repo DockerHub của bạn
        DOCKER_HUB_REPO = "VodongTao/tesh_push"
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Test') {
            steps {
                sh 'node -v'
                sh 'npm -v'
            }
        }

        stage('Build Image') {
            steps {
                sh 'docker build -t ${DOCKER_HUB_REPO}:1.0 .'
            }
        }

        stage('Push to Docker Hub') {
            steps {
                script {
                    withCredentials([usernamePassword(
                        credentialsId: 'testpush',   // ID credential trong Jenkins
                        passwordVariable: 'DOCKER_PASSWORD',
                        usernameVariable: 'DOCKER_USERNAME'
                    )]) {
                        sh '''
                            echo $DOCKER_PASSWORD | docker login -u $DOCKER_USERNAME --password-stdin
                            docker push ${DOCKER_HUB_REPO}:1.0
                            docker logout
                        '''
                    }
                }
            }
        }
    }
}
