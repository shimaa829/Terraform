# Infrastructure-As-Code Using Terraform

this pipeline is to implement the following infrastructure using terraform , Jenkins and Ansible:

![alt text](https://github.com/shimaa829/Terraform/blob/master/architecture.png)

<!-- TABLE OF CONTENTS -->
## Table of Contents

* VPC
* Two Public Subnets
* Two Private Subnets
* Internet Gateway
* Public Routing table
* Private Routing table
* Five EC2 (3 in Public Subnets , 2 in Private Subnets)
* Two Environments (Dev , Prod)

<!-- ABOUT THE PROJECT -->
## About The Project

* The dockerfile is to build image for jenkins and install terraform
* I run container from this image
* I make sure that jenkins is running and terraform is installed inside the container
* I create pipeline in jenkins which build my infrastructure using terraform commands
* I configure ansible on my computer to run using the bastion server i have created
* I run nginx playbook to configure the two proxies
* I run nexus playbook on the private ec2 servers
