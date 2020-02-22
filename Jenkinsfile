pipeline
  { 
	  agent {label "maven"} 
	stages
	{
	    stage ('scm checkout')
		{
		  steps {
			git branch: 'master', url: 'https://github.com/Sopi-Github/maven-project.git'
		       }
	    }
		stage ('Build')
		{
		  steps {
		   withMaven(jdk: 'localjdk-1.8', maven: 'localmevan') {
            sh 'mvn clean package'
			}
}
}
		
	}
 }
		  
