# Deploy a High-Availability Web App using CloudFormation Udacity 2020

NOTE: I Deploy my own website template, you can verify it in http://udaci-WebAp-1X89QITLHE8HD-1596378322.us-west-2.elb.amazonaws.com/ogani

Files:
* **ogani.zip**: Website deployed in AWS
* **AWS-Udacity-Project02.png** : Infrastructure diagram
* **networking.yml**: Script to create VPC, Subnets, Route Tables, NAT Gateways, Internet Gateway and so on ..
* **networking-params.json**: networking.yml needed parameters
* **servers.yml**: Script to create Security Gropus, Load Balancer, Elastic IP, VM Servers.
* **servers-params.json**: servers.yml needed parameters.
* **aws-create-stack.ps1**: Powershell script to create AWS CloudFormation Stack
* **aws-update-stack.ps1**: Powershell script to update AWS CloudFormation Stack

## Create AWS CloudFormation Stack

1. Script **"aws-create-stack.ps1"**
   Parameters:
  * **$stack**: CloudFormation Stack Name
  * **$template:** Filename (network.yml or servers.yml)
  * **$params**:params filename (networking-params.json servers-params.json )

   **Example 1: Create Networking Stack**
  
     `.\aws-create-stack.ps1 udacity-project-networking networking.yml networking-params.json`

   **Example 2: Create Servers Stack**
  
   `.\aws-create-stack.ps1 udacity-project-servers servers.yml servers-params.json`
  

2.  Script **"aws-update-stack.ps1"**
   Parameters:
  * **$stack**: CloudFormation Stack Name
  * **$template:** Filename (network.yml or servers.yml)
  * **$params**:params filename (networking-params.json servers-params.json )

   **Example 1: Update existing Networking Stack**
   
   `.\aws-update-stack.ps1 udacity-project-networking networking.yml networking-params.json`

   **Example 2: Update existing Servers Stack**
   
   `.\aws-update-stack.ps1 udacity-project-servers servers.yml servers-params.json`
