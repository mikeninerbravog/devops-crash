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
                sh '''
                python3 -m venv .venv
                . .venv/bin/activate
                .venv/bin/pip install -r requirements.txt
                '''
            }
        }

        stage('Test') {
            steps {
                sh '''
                . .venv/bin/activate
                PYTHONPATH=. .venv/bin/pytest tests
                '''
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
