PROJECT TITLE: " TERRAFORM AUTOMATES INFRASTRUCTURE PROVISIONING IN AWS "

"AWS VPC with EC2 Instances and Load Balancer,s3 as well" 

INTRODUCTION :

Hello everyone, I Elamparithi M, am a DevOps Engineer, I am very passionate about contributing innovative projects in Cloud and DevOps cultures.
recently successfully implemented Automate infrastructure provisioning through Terraform in AWS, I am going to describe how was i doing this project as well as which steps were involved
in this project and what were the errors and problems when I did this project.

PROJECT EXPLANATION :

This project aims to securely deploy a web application into AWS. To achieve this, I created components such as a VPC, public subnets in both availability zones,
an internet gateway for external access to our VPC resources, a route table for routing traffic to the subnets, and security groups for both incoming and outgoing external traffic for
both the load balancer and EC2 servers. Additionally, I configured EC2 instances in both subnets, created an S3 bucket for storing application logs, 
and attached an IAM role and necessary permission policy for EC2 to connect with the S3 bucket and store logs. Finally, I set up an AWS Application Load Balancer in front of my instances, 
with a DNS allowing external traffic to access the application. I successfully implemented this project 
and obtained a load balancer DNS allowing access to the application from the external world.

PROJECT HIGH-LEVEL STEPS :

Configure an AWS and terraform setup
Create a custom vpc in aws
create a subnet in both the availability zones (us-east-1a, 1b)
attach an internet gateway in vpc
configure a route table and attach it to the internet gateway
associate a routeing table to subnets
create a security group
launch ec2 instance in both the subnets
write a user-data script for installing software and deploy an HTML web page when ec2 instances creation
create a s3 bucket for storing application logs
create an IAM role to give the necessary permission and policies
finally, create a load balancer to route traffic to both instances.
(all the above-mentioned things are written terraform configuration files to create in aws)

PROBLEM INCLUDE THIS PROJECT WHEN AM DOING :

IAM PERMISSIONS: "Ensuring Secure Access with IAM Permissions"
UNIQUE S3 BUCKET NAME: " Maintaining S3 Bucket Integrity with Globally Unique Names"
LOADBALANCER LISTENER: "Configure a correct load balancer port forwarding to the application"
STORE AWS CREDENTIALS: "Make sure to store AWS credentials, in my case I used AWS CLI to configure.

GITHUBLINK : 
[ https://github.com/elam1234/Terraform_aws_automation.git ]

CONCLUSION :

After successfully automating infrastructure provisioning using Terraform in AWS to deploy a web application, I encountered several challenges.
These included ensuring secure access with IAM permissions, maintaining S3 bucket integrity with globally unique names, configuring load balancer listeners correctly,
and securely storing AWS credentials. Despite these hurdles, I managed to overcome them by implementing best practices and thorough testing.
The GitHub repository [https://github.com/elam1234/Terraform_aws_automation.git] contains detailed Terraform configurations and insights into the infrastructure automation process.



