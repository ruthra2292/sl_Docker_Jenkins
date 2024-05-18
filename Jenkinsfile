pipeline {
    environment {
    registry = "selvam2292/personal_portfolio:1.0"
    registryCredential = 'selvam2292'
    dockerImage = ''
    }
    agent any

    stages {
        stage('Cloning Git Repo') {
            steps {
                git 'https://github.com/ruthra2292/sl_Docker_Jenkins.git'
            }
        }
        
         stage('Building Image') {
            steps {
                script {
                    dockerImage = docker.build imagename
                }
            }
        }
        
        stage('Running Image') {
            steps {
                script {
                    sh  "docker run ${imagename}:latest"
                }
            }
        }
        
        stage('Deploy our image') {
            steps{
                script {
                    docker.withRegistry( '', registryCredential ) {
                        dockerImage.push()
                    }
                }
            }
        }
    }
}
