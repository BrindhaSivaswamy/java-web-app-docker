node{
    def buildNumber = BUILD_NUMBER
    stage("Git Checkout"){
        git url:'https://github.com/BrindhaSivaswamy/java-web-app-docker.git',branch: 'master'
    }
    
    stage("Maven Build"){
        def mavenHome= tool name: 'Maven', type: 'maven'
        sh "${mavenHome}/bin/mvn clean package" 
    }
    
    stage("Build Docker Image"){
        sh "docker build -t brindhasivaswamy/java-web-app-docker:${buildNumber} ."
    }

    stage("Docker Push"){
    withCredentials([string(credentialsId: 'DockerHub_Pwd', variable: 'DockerHub_Pwd')]) {
    sh "docker login -u brindhasivaswamy -p ${DockerHub_Pwd}"
    }
    sh "docker push brindhasivaswamy/java-web-app-docker:${buildNumber}"
    }
    
    stage("Docker Deploy"){
        sshagent(['Docker_Dev_Server_SSH']) {
        sh "ssh -o StrictHostKeyChecking=no ubuntu@172.31.41.50 docker rm -f javawebappcontainer || true"
        sh "ssh -o StrictHostKeyChecking=no ubuntu@172.31.41.50 docker run -d -p 8080:8080 --name javawebappcontainer brindhasivaswamy/java-web-app-docker:${buildNumber}"
    }
    }
}
