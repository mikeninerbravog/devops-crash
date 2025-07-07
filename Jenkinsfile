pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo '📥 Cloning project...'
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo '🔧 Installing dependencies...'
                sh 'pip install -r requirements.txt'
            }
        }

        stage('Test') {
            steps {
                echo '🧪 Running tests with pytest...'
                sh 'pytest tests'
            }
        }
    }

    post {
        always {
            echo '📦 Pipeline finished (build + test)'
        }
        success {
            echo '✅ All tests passed!'
        }
        failure {
            echo '❌ Build or tests failed!'
        }
    }
}
