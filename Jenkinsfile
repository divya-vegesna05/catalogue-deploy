pipeline{
    agent{
         node {
        label 'agent-1'
    }
    }
    options {
        timeout(time: 1, unit: 'HOURS') 
         disableConcurrentBuilds()
         ansiColor('xterm')
    }
    parameters {
         string(name: 'version', defaultValue: '', description: 'Pick version')
         string(name: 'environment', defaultValue: '', description: 'Pick environment')
     }
    stages{
         stage("version")
         {
        steps{
             
            sh """
              echo "version: ${params.version}"
              echo "environment: ${params.environment}"
            """
            }
         }

    //      stage("init")
    //      {
    //     steps{
             
    //         sh """
    //         cd 01-vpc
    //         terraform init -reconfigure
    //         """
    //         }
    //      }
    //     stage("plan")
    //      {
    //     steps{
            
    //         sh """
    //         cd 01-vpc
    //         terraform plan
    //         """   
          
    //     }
    // }
    // stage("apply")
    // {
    //    when
    //    {
    //     expression
    //     {
    //         params.Action == 'apply'

    //     }
    //    }
    //     input {
    //             message "Should we continue?"
    //             ok "Yes, we should."
    //     }
    //     steps{
             
    //         sh """
    //         cd 01-vpc
    //         terraform apply -auto-approve
    //         """
    //     }
    // }
    // stage("destroy")
    // {
    //    when
    //    {
    //     expression
    //     {
    //         params.Action == 'destroy'

    //     }
    //    }
    //     input {
    //             message "Should we continue?"
    //             ok "Yes, we should."
    //     }
    //     steps{
             
    //         sh """
    //         cd 01-vpc
    //         terraform destroy -auto-approve
    //         """
    //     }
    // }
}    

 post { 
        always { 
            echo 'I will always say Hello again!'
        }
        success { 
            echo 'I will always say success!'
        }
                failure { 
            echo 'I will always say success!'
        }
    }
}