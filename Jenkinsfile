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
        sh '''wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform'''
      }
    }

  }
}