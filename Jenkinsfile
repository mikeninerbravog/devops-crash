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
        echo '🔧 Setting up Python virtual environment...'
        sh '''
            python3 -m venv .venv
            . .venv/bin/activate
            pip install --upgrade pip
            pip install -r requirements.txt
        '''
    }
}


stage('Test') {
    steps {
        echo '🧪 Running tests with pytest...'
        sh '''
            . .venv/bin/activate
            pytest tests
        '''
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
