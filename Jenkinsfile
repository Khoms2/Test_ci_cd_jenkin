pipeline {
    agent any

    tools {
        nodejs "Nodejs"   // NodeJS tool đã config trong Jenkins
    }

    environment {
        // DOCKER_HUB_USER = "ten_tai_khoan_dockerhub"
        // DOCKER_IMAGE = "ten_tai_khoan_dockerhub/my-node-app"
        DOCKER_HUB_REPO ="vodongtao2/test_push"
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
                sh 'docker build -t my-node-app:2.0 .'
                // script {
                //     sh 'docker build -t $DOCKER_IMAGE:latest .'
                // }
            }
        }
    stage('Push Docker Image') {
    steps {
        withCredentials([usernamePassword(credentialsId: 'dockerhub-cred', usernameVariable: 'USER', passwordVariable: 'PASS')]) {
            sh '''
                echo $PASS | docker login -u $USER --password-stdin
                docker tag my-node-app:2.0 khom202/test_push:2.0
                docker push khom202/test_push:2.0
                docker logout
            '''
        }
    }
}

        // stage('Push Docker Image') {
        //     steps {
        //         withCredentials([usernamePassword(credentialsId: 'dockerhub-cred', usernameVariable: 'USER', passwordVariable: 'PASS')]) {
        //             sh 'echo $PASS | docker login -u $USER --password-stdin'
        //               sh 'docker build -t my-node-app:2.0 khom202/test_push:2.0'
        //               sh 'docker push khom202/test_push:2.0'
        //         }
        //     }
        // }
        // ----------------------------
    //     stage('Push to Docker Hub') {
    //         steps {
    //             script {
    //                 withCredentials([usernamePassword(
    //                     credentialsId: 'testpush', 
    //                     usernameVariable: 'USER', 
    //                     passwordVariable: 'PASS'
    //                 )]) {

    //                  sh '''
    //                     echo $PASS | docker login -u $USER --password-stdin
    //                     docker tag my-node-app:2.0 $DOCKER_HUB_REPO:2.0   # tag image local thành image trên DockerHub
    //                     docker push $DOCKER_HUB_REPO:2.0
    //                     docker logout
    //                 '''
    //                 }
    //             }
    //         }
    // }


//     stage('Push to Docker Hub') {
//     steps {
//         withCredentials([usernamePassword(credentialsId: 'dockerhub-cred', usernameVariable: 'USER', passwordVariable: 'PASS')]) {
//             sh 'echo $PASS | docker login -u $USER --password-stdin'
//             sh 'docker push vodongdao/my-node-app:2.0'
//         }
//     }
// }

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
