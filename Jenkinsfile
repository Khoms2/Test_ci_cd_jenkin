// // pipeline { // cú pháp của Jenkins Pipeline
// //     agent any // sử dụng bất kỳ jenkins agent nào có sẵn

// //     tools { // khai báo công cụ cần thiết
// //         nodejs 'NodeJS' // sử dụng NodeJS đã được cài đặt trong Jenkins
// //     }

// //     stages { // các giai đoạn của pipeline
// //         stage('Checkout') {
// //             steps {
// //                 echo 'Checking out code...'
// //                 checkout scm // lấy code từ SCM (GitHub, Git,...)
// //             }
// //         }

// //         stage('Test') {
// //             steps {
// //                 echo 'Testing...'
// //                 sh 'node -v' // kiểm tra phiên bản Node.js
// //                 sh 'npm -v'  // kiểm tra phiên bản npm
// //             }
// //         }

// //         stage('Build Docker Image') {
// //             steps {
// //                 script {
// //                     docker.build("my-node-app:2.0")
// //                 }
// //             }
// //         }

// //         stage('Push Docker Image') {
// //             steps {
// //                 withDockerRegistry([ credentialsId: 'docker-hub-cred', url: '' ]) {
// //                     script {
// //                         docker.image("my-node-app:2.0").push()
// //                     }
// //                 }
// //             }
// //         }
// //     }

// //     post { // các hành động sau khi hoàn thành pipeline
// //         always {
// //             echo 'Cleaning up...'
// //         }
// //         success {
// //             echo 'Build completed successfully!'
// //         }
// //         failure {
// //             echo 'Build failed!'
// //         }
// //     }
// // }
// pipeline {
//     agent any
//     tools {
//         nodejs 'NodeJS'
//     }
//     stages {
//         stage('Checkout') {
//             steps {
//                 checkout scm
//             }
//         }
//         stage('Test') {
//             steps {
//                 sh 'node -v'
//                 sh 'npm -v'
//             }
//         }
//         stage('Build Docker Image') {
//             steps {
//                 sh 'docker build -t my-node-app:2.0 .'
//             }
//         }
//         stage('Push Docker Image') {
//             steps {
//                 withCredentials([usernamePassword(credentialsId: 'docker-hub-cred', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
//                     sh '''
//                         echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
//                         docker tag my-node-app:2.0 $DOCKER_USER/my-node-app:2.0
//                         docker push $DOCKER_USER/my-node-app:2.0
//                     '''
//                 }
//             }
//         }
//     }
// }


pipeline {
    agent any

    tools {
        nodejs 'NodeJS'
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

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t my-node-app:2.0 .'
            }
        }
    }
}
