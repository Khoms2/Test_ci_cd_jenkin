pipeline {
    agent any

    tools {
        nodejs "Nodejs"   // NodeJS tool đã config trong Jenkins
    }

    environment {
        DOCKER_HUB_USER = "ten_tai_khoan_dockerhub"
        DOCKER_IMAGE = "ten_tai_khoan_dockerhub/my-node-app"
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Khoms2/Test_ci_cd_jenkin.git'
            }
        }

        stage('Test Node.js') {
            steps {
                sh 'node -v'
                sh 'npm -v'
            }
        }

        stage('Build App') {
            steps {
                sh 'npm install'
                sh 'npm run build'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t my-node-app:2.0. '
                // script {
                //     sh 'docker build -t $DOCKER_IMAGE:latest .'
                // }
            }
        }

        stage('Push Docker Image') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub-cred', usernameVariable: 'USER', passwordVariable: 'PASS')]) {
                    sh 'echo $PASS | docker login -u $USER --password-stdin'
                    sh 'docker push $DOCKER_IMAGE:latest'
                }
            }
        }
    }
}


// pipeline {

//     agent any
//     tools {
//         nodejs "Nodejs"

//     }
//     stages {
    
//             stage('checkout') {
//                 steps {
//                   git branch: 'main', url: 'https://github.com/Khoms2/Test_ci_cd_jenkin.git'
//                 }
//             }
//         }
//         stage('Test'){
//             steps {
//                 sh 'node -v'
//                 sh 'npm -v'
//             }
//         }
//         stage('Build') {
//             steps {
//                 sh 'npm install'
//                 sh 'npm run build'
//             }
//         }
//         stage('Build Docker Image') {
//             steps {
//                 sh 'docker build -t my-node-app:2.0 .'
//     }
// }
// }
