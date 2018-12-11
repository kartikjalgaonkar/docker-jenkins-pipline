pipeline {    
    stages {
        stage('clone repository') {
            checkout scm
        }
        stage('build image') {
           def app=docker.build("ishatiwari26/docker-jenkins-pipline")
        }    
    }
}
