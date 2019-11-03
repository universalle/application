#!/usr/bin/env groovy
pipeline {
    agent {
        kubernetes {
            label 'jenkins-slave-docker'
            defaultContainer 'jnlp-docker'
        }
    }
    stages {
        stage('Building App Image') {
            steps {
                script {
                    appimage = docker.build("gcr.io/identityplatform/myimages/jenkins-server:${env.BUILD_ID}")
                }
            }
        }
        stage('Push Image to GCR') {
            steps {
                script {
                    docker.withRegistry('https://gcr.io/identityplatform', 'gcr:identityplatform') {
                        sh '''
                            docker --version
                            docker images
                            '''
//                        appimage = docker.image("gcr.io/identityplatform/myimages/busybox")
                        appimage.push()
                        appimage.push('latest')
                    }
                }
            }
        }
    }
}
