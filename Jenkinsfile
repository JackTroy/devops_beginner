pipeline {
    agent { dockerfile true  }
    stages {
        stage('build') {
            steps {
                sh 'curl localhost:4000'
            }
        }
    }
}
