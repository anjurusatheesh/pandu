pipeline {
    agent any

    stages {
        stage('git clone') {
            steps {
                git branch: 'main', url: 'https://github.com/anjurusatheesh/pandu.git'
            }
        }
        
        stage('image build') {
            steps {
                sh 'docker build -t httpd .'
            }
        }
        
        stage('image run') {
            steps {
                sh 'docker run -itd -p 82:80 httpd'
            }
        }
    }
}
