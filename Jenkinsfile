pipeline {
  agent any
  stages {
    stage('checkout ') {
      steps {
        git(url: 'https://github.com/danishmahmood30/setinel-testing', branch: 'main')
      }
    }

    stage('Sentinel Test') {
      steps {
        sh 'pwd'
        sh 'ls -al'
      }
    }

  }
}