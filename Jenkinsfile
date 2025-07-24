pipeline {
    agent any

    // tools {
        // maven 'MAVEN_HOME'  // Make sure Maven is configured with this name
    // }

    stages {
        stage('Clone GitHub Repo') {
            steps {
                git url: 'https://github.com/panugantisailalithasri/NEWREPO.git', branch: 'master'
            }
        }

        stage('Build using pom.xml') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Archive .jar Artifact') {
            steps {
                archiveArtifacts artifacts: 'target/*.jar', fingerprint: true
            }
        }
    }
}
