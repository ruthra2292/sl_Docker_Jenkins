pipeline {
    environment {
    registry = "selvam2292/personal_portfolio:1.0"
    registryCredential = 'selvam2292'
    dockerImage = ''
    }
    agent any

    stages {
                
         stage('Building Docker Image') {
            steps {
                sh 'docker build -t selvam2292/personal-portfolio:${BUILD_NUMBER} .'
                }
            }
        stage('Push image to docker hub ') {
            steps {
                sh  'docker push selvam2292/personal_portfolio:${BUILD_NUMBER}'
                }
            }        
        stage('Deploy our application') {
            steps{
                sh 'docker run -d --name docker_project -p 8000:80 selvam2292/personal_portfolio:${BUILD_NUMBER}'

                    }
                }
    }
}
