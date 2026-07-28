pipeline {
    //agent any
    agent {
        docker {
            image "mariadb:12.3"
			args '-p 3306:3306  --env MARIADB_ROOT_PASSWORD=root'
			//image "my_mariadb"
        }
    }
  environment{
	dockerhub_credential_id='credential_dockerhub_didierdefrance69'
	docker_registry= 'https://registry.hub.docker.com'
	docker_image_name='didierdefrance69/geodb:1'
  }
    stages {
        //stage('from_git') {
        //    steps {
        //        git url : 'https://github.com/didier-tp/sql2026' , branch : 'main'
        //        }
        //}
        stage('ls sql') {
            steps {
                sh 'ls *.sql'
            }
		}
	stage('init db') {
            steps {	
			     sh 'mariadb --version'
				 sh 'mariadb -u root -proot  < init-db.sql'
			}
        }
	//stage('build_docker_image') {
	//	steps {
	//		script{
	//			dockerImage = docker.build(docker_image_name)
	//				}
	//		}
	//}
	//stage('push_docker_image') {
	//	steps {
	//		script{
	//			docker.withRegistry( docker_registry, dockerhub_credential_id ) {
	//				dockerImage.push()
	//			}
	//		}
	//	}
	//}
  }
}
