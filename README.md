# Eburying

This is an example of a company building a new web application with a microservices architecture. They want to deploy this application in the cloud using terraform to manage the
infrastructure. The application consists of several microservices, each with its own data
storage requirements.

## Structure

### Cloud provider

The company wants to have a microservices architecture using K8S and it is cloud agnistic. Therefore we will diviate from overusing an specific cloud provider.

In this case, we will start by using AWS with Terraform instead of Cloudformation.

###### AWS creds
In this example, I will just use OICD (OpenID) for github, as the repo will have a pipeline init, fmt and planning the terraform, potentially adding more commands as I go (I will not be applyiing for this example).

###### Terraform

We will use terraform, with the AWs provider. We will save the state in a S3 bucket. We will use the latest version `6.11.0`.

### Networking

We want to have both public and private subnets for the microservices:

##### *Proposal*:

- NAT Getaway -> For private subnets to get outbound internet access
- Internet Getaway -> For the public subnets to be accesable
- Trafic routing for both private and public
- All of them within a VPC. For this purpose we will just create one VPC for it.

### Compute

As stated, we want to deviate from AWS.

##### *Proposal*:
- EKS: We will use EKS in this case for our container orchestration.
- HPA: For this example we will assume that CPU is important. Therefore we will set a condition for CPU usage.

### DB

For this specific example the microservices need:
- RDS
- ElastiCache
- A Managed Kafka service -> MSK in our case.

