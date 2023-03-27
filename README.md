Terraform

What is Terraform?
Terraform is a tool for building, changing, and versioning infrastructure safely and efficiently. It can manage popular service providers as well as custom in-house solutions. Terraform generates an execution plan describing what it will do to reach the desired state, and then executes it to build the described infrastructure. It is an open-source tool, and it can be used to manage infrastructure for multiple cloud providers like AWS, Azure, GCP, and more.
Terraform Basics
Basic terraform Commands are:
•	Terraform init
•	Terraform validate
•	Terraform plan
•	Terraform apply
•	Terraform destroy
•	Terraform fmt
These commands make up the terraform workflow.
Initialize terraform working directory		: terraform init
Validating a configuration			: terraform validate
Generating a terraform plan			: terraform plan
Applying a terraform plan/building resources	: terraform apply
Destroying terraform/Destroying resources	: terraform destroy
To apply code in correct format			: terraform fmt
Example:
 
In this exercise, we have created security group id and key pair in AWS console.
We have taken the security group ID and key name and AMI ID (Amazon Machine Image ID) from AWS.
The code is as follows:
provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "intro" {
    ami = "ami-0b5eea76982371e91"
    instance_type = "t2.micro"
    availability_zone = "us-east-1a"
    key_name = "instance-key"
    vpc_security_group_ids = ["sg-0f2a5f35554a6765f"]
    tags = {
      "Name" = "my_first_instance"
    }
}

•	Here we have taken AWS as provider and region us-east-1.
•	In this region we are going to launch our instance with the given resources.
•	Save the file with .tf extension.
Run the code in the terminal with below commands.
A.	terraform init 

Output:
 


B.	terraform fmt (optional)

Output:
 

C.	terraform validate

Output:
 

D.	terraform plan

Output:
 

E.	terraform apply

Output:
 

