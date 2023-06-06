pipeline {
    agent any
    stages {
        stage('git_clone'){
            steps{
                git credentialsId: 'git', url: 'https://github.com/morampudi123/node-js-sample.git'
            }
        }
        stage('sonarqube analysis'){
           steps{
           nodejs(nodeJSInstallationName: 'nodejs'){
               sh "npm install"
               withSonarQubeEnv('sonar'){
                   sh "npm install sonar-scanner"
                   sh "npm run sonar"
               }
           }
        }
    }
}
}
