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

        stage("SonarQube analysis") {
           steps {
            script {
                def scannerHome = tool 'SonarQube Scanner';
                withSonarQubeEnv('SonarQube Server') {
                    sh 'npm package sonar:sonar'
                   }
                }
            }
       }

    }
}
