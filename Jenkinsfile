pipeline {
 environment {
 imagename = “selvam2292/docker_jenkins_resume”
 registryCredential = ‘d7fiynhhRVesnE6’
 dockerImage = ‘’
 }
 agent any
 stages {
 stage(‘Cloning Git Repo’) {
 steps {
 git([url: ‘https://github.com/ruthra2292/sl_Docker_Jenkins.git', branch: ‘master’])
 }
 }
 stage(‘Building Docker image’) {
 steps{
 script {
 dockerImage = docker.build imagename
 }
 }
 }
 stage(‘Running Docker image’) {
 steps{
 script {
 sh “docker run ${imagename}:latest”
 }
 }
 }
 stage(‘Deploy Docker Image to Docker Hub’) {
 steps{
 script {
 docker.withRegistry( ‘’, registryCredential ) {
 dockerImage.push(“$BUILD_NUMBER”)
 dockerImage.push(‘latest’)
 }
 }
 }
 }
 }
}
