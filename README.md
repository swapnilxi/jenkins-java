# jenkins-java
 In this projcet I have just connected and uploaded a spring boot application to AWS EC2
 I have a added Docker and jenkins file to upload the Spring boot app to AWS 

# If you want to upload your file to EC2 with jenkins pipeline, here is the step I followed 



## Introduction

This README file provides instructions on how to set up, build, and deploy the application using Docker, Jenkins, and AWS EC2.

## Prerequisites

Before proceeding, ensure you have the following installed and set up:

- Docker: [Install Docker](https://docs.docker.com/get-docker/)
- Jenkins: [Install Jenkins](https://www.jenkins.io/doc/book/installing/)
- AWS Account: [Sign up for AWS](https://aws.amazon.com/free/) and configure AWS CLI on your local machine

## Getting Started

1. Clone the repository:
   ```shell
   git clone https://github.com/your-username/your-repo.git
   cd your-repo
   ```

2. Build the Docker image:
   ```shell
   docker build -t your-image-name .
   ```

3. Run the Docker container locally:
   ```shell
   docker run -p 8080:8080 your-image-name
   ```

4. Access the application in your browser at `http://localhost:8080`.

## Setting up Jenkins

1. Open Jenkins in your browser and log in.

2. Create a new Jenkins job:
   - Click on "New Item" on the Jenkins dashboard.
   - Enter a name for your job and select "Freestyle project."
   - Configure the job as needed (e.g., source code management, build triggers, etc.).

3. Add a build step to build the Docker image:
   - In the job configuration, go to "Build" > "Add build step" > "Execute shell" (or "Execute Windows batch command" for Windows).
   - Add the Docker build command:
     ```shell
     docker build -t your-image-name .
     ```

4. Add a post-build step to push the Docker image to Docker Hub or a private registry:
   - Go to "Post-build Actions" > "Add post-build action" > "Push Docker image."
   - Configure the Docker registry credentials if required.

5. Save the Jenkins job configuration.

## Deploying to AWS EC2

1. Connect to your AWS EC2 instance:
   ```shell
   ssh -i your-key.pem ec2-user@your-instance-ip
   ```

2. Pull the Docker image from Docker Hub or your registry:
   ```shell
   docker pull your-docker-image:tag
   ```

3. Run the Docker container on your EC2 instance:
   ```shell
   docker run -d -p 80:8080 your-docker-image:tag
   ```

4. Access your application using your EC2 instance's public IP address.

## Additional Notes

- Customize the Dockerfile and Jenkins job configuration according to your application's requirements.
- Ensure that security groups and firewall settings allow traffic to your EC2 instance on the necessary ports.

## Troubleshooting

- If you encounter issues during setup or deployment, refer to Docker, Jenkins, and AWS EC2 documentation for troubleshooting guidance.
1. Docker Documentation:
   - [Docker Troubleshooting](https://docs.docker.com/get-help/)
   - [Docker Forums](https://forums.docker.com/)

2. Jenkins Documentation:
   - [Jenkins Troubleshooting](https://www.jenkins.io/doc/book/troubleshooting/)
   - [Jenkins Support](https://www.jenkins.io/support/)

3. AWS EC2 Documentation:
   - [EC2 Troubleshooting](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/troubleshooting.html)
   - [AWS Support](https://aws.amazon.com/premiumsupport/)
