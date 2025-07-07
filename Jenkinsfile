pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Install') {
            steps {
                sh 'pip install -r requirements.txt'
            }
        }

        stage('Test') {
            steps {
                sh 'pytest tests'
            }
        }
    }

    post {
        failure {
            echo '❌ Tests failed.'
        }
        success {
            echo '✅ All tests passed.'
        }
    }
}
