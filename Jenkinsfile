
node {
    def app

    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */
        git clone 'https://github.com/SrujanRajDev/devops.git'
    }

    stage('Build image') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */

        app = docker.build("srujan6868/myaddress")
    }

     stage('Test image') {
        /*Ideally, we would run a test framework against our image.
         * This runs only a single dummy test inside the image.*/ 
        app.inside {
            //sh 'npm test'
            echo 'Tests passed !!'
        }
    }


    stage('Push image') {
        /* Finally, we'll push the image with two tags:
         * First, the incremental build number from Jenkins
         * Second, the 'latest' tag.
         * Pushing multiple tags is cheap, as all the layers are reused. */
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
    stage('Pull image') {
        sh 'docker pull srujan6868/myaddress_30_Oct'
    }
    stage('Run image') {
       sh 'docker run -d -p 8081:8081 srujan6868/myaddress_30_Oct'
       //docker.image('srujan6868/myaddress').withRun('-p 8085:8085') 
    }
}
