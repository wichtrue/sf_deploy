node{
    stage('Deploy'){
        sh "ssh root@192.168.1.114 /root/script/sf_deploy/sf_deploy.sh"
    }
    stage('Check Status NLU'){
        sh "ssh root@192.168.1.114 curl http://172.30.149.188:9000/"
    }
    stage('Check Status Service'){
        sh "ssh root@192.168.1.114 ssh root@172.30.149.188 systemctl status nlu"
        sh "ssh root@192.168.1.114 ssh root@172.30.149.188 systemctl status nginx"
    }
}