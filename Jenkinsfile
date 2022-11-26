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
        sh '''curl https://releases.hashicorp.com/sentinel/0.18.12/sentinel_0.18.12_linux_amd64.zip -o ~/sentinel.zip

sudo apt install unzip

unzip ~/sentinel.zip'''
        sh 'ls -l'
      }
    }

    stage('Terraform Plan') {
      steps {
        sh 'curl https://releases.hashicorp.com/terraform/1.3.5/terraform_1.3.5_linux_amd64.zip -o terraform.zip'
        sh 'unzip terraform.zip'
        sh 'ls -l'
      }
    }

  }
}