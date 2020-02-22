pipeline
  { 
	  agent none
	stages
	{
	    stage ('scm checkout')
		{
			agent { label 'maven' }
		  steps {
			git branch: 'master', url: 'https://github.com/Sopi-Github/maven-project.git'
		       }
	    }
		stage ('Build')
		{
			agent { label 'maven' }
		  steps {
		   withMaven(jdk: 'localjdk-1.8', maven: 'localmevan') {
            sh 'mvn clean package'
			}
}
}
		
	}
 }
		  
