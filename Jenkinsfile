node{
    // stage('Deploy'){
    //     sh "ssh root@192.168.1.114 /root/script/sf_deploy/sf_deploy.sh"
    // }
    stage('Check Status NLU'){
        sh "ssh root@192.168.1.114 curl http://172.30.149.188:9000/"
    }
}