# aws-terraform
This repo contains different terraform modules that spin various services on AWS cloud. 
The whole project is aimed to deploy a simple spring-boot web application that consists of a load balancer and auto scaling group to provide high availbility based on CPU utilization
A bash script is developed to deploy application in the EC2 instance while launching. 
And it is given as user data in launch configuration of Auto scaling group.

Commads to run terraform scripts

terraform init  : to initialize the terraform and download required libraries
terraform plan  : this command creates an execution plan, which lets you preview the changes
terraform apply : this command executes the actions proposed in a Terraform plan. And creates the proposed resources.

In provider.tf file provide the access key and secret access key to connect to the AWS account.

The spring-boot-application was setup to run on port number 8090

How to access the application?
To access the application use load balancer DNS-name:portnumber/controller endpoint

The jar file was uploaded in AWS s3 bucket and can be access through its object endpoint url
The jar file was provided in the user data script
