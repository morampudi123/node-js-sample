pipeline {
    agent any
    stages {
        stage('git_clone'){
            steps{
                git credentialsId: 'git', url: 'https://github.com/morampudi123/node-js-sample.git'
            }
        }
        stage('Build'){
           steps{
                 sh "npm install"
                 sh "npm test"
                 sh "npm run"
               }
           }
        stage('SonarQube') {
                 steps {
                       sh '''sonar-scanner \
                       -Dsonar.projectKey=nodejs \
                       -Dsonar.sources=. \
                       -Dsonar.host.url=http://65.0.99.19:9000 \
                       -Dsonar.login=b3e809433da0b83f76b72fd4f18cf95dc2cbdb57'''
                        }
                    }
                }
            }
        
                
