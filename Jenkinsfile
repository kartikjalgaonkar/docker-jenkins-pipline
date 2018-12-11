pipeline {
    def app
    stage('clone repository') {
      checkout scm
    }    
    stage('build image') {
      app=docker.build("ishatiwari26/docker-jenkins-pipline")
    }    
}
