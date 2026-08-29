pipeline {
        agent any
        stages {
                stage('Checkout code') {
                        steps {
                                checkout scm
                                }
                        }
                stage('Build Image') {
                        steps {
                                sh 'docker build -t vyankatesh23/static-site:latest .'
                                }
                        }
                stage('Push Image') {
                        steps {
                                withCredentials([usernamePassword(credentialsId: 'dockerhub-creds', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                                sh 'echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin'
                                sh 'docker push vyankatesh23/static-site:latest'
                                }
                        }
                }
        }
}
