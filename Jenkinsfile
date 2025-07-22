pipeline {
    agent { label 'dev' }

    environment {
        MESSAGE = "Hello from Jenkins!"
    }

    stages {
        stage('Initialization') {
            steps {
                echo 'Starting the pipeline...'
            }
        }

        stage('Build') {
            steps {
                echo 'Building the project...'
                echo "Build number is: ${env.BUILD_NUMBER}"
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying application...'
            }
        }
    }

    post {
        success {
            echo 'Pipeline executed successfully!'
        }
        failure {
            echo 'Pipeline failed. Please check the logs.'
        }
    }
}
