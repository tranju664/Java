pipeline{
    agent {label 'jfrog'}
    stages{       
       stage('Build Stage'){
            steps{
                sh 'mvn clean install'
            }
         }
       stage('SonarQube Analysis Stage') {
            steps{
                withSonarQubeEnv('sonarqube') { 
                    sh "mvn clean verify sonar:sonar -Dsonar.projectKey=Sonar-test"
                }
            }
        }
    }
}
