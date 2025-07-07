pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo '📥 Cloning source code...'
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo '🔨 Building project...'
                sh 'echo Simulating build && sleep 2'
            }
        }

        stage('Test') {
            steps {
                echo '🧪 Running tests...'
                sh 'echo Simulating tests... All passed! ✅'
            }
        }
    }
}
