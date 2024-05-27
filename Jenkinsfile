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
                sh 'docker build -t selvam2292/personal_portfolio:${BUILD_NUMBER} .'
                }
            }        
        stage('Push image to docker hub ') {
            steps {
                script {
                    docker.withRegistry( '', '1f1b7c40-4dbc-444a-a9b6-a71d3c8f9509' ) {
                        sh 'docker push selvam2292/personal_portfolio:${BUILD_NUMBER}'
                    }
                }
            }
        }
        stage('Deploy our application') {
            steps{
                sh 'docker run -d --name docker_project${BUILD_NUMBER} -p 8000:80 selvam2292/personal_portfolio:${BUILD_NUMBER}'

                    }
                }
    }
}
