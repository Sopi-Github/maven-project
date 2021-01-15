pipeline 
{
agent any
stages
{
  stage("scm checkout")
   {
     steps
     {
         git branch: 'master' , url: 'https://github.com/Sopi-Github/maven-project'
     }
   }
   stage("build the job")
    {
      steps
      {
          withMaven(jdk: 'localjdk', maven: 'localmaven')
          {
              sh 'mvn package'
          }
      }
    }
    stage("docker image creation")
    {
        steps
        {
            sh 'docker build -t sopi0708/mytomcat:0.2 .'
        }
    }
    stage("docker image push")
    {
       withCredentials([string(credentialsId: 'mydocker', variable: '')]) {
       sh "docker login -u sopi0708 -p ${mydocker}"
       sh 'docker push sopi0708/mytomcat:0.2'
       sh 'docker rmi sopi0708/mytomcat:0.2'
} 
    }
}
}
