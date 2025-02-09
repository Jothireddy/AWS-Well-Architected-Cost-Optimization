# AWS Well-Architected Cost Optimization

This project demonstrates a cost-optimized architecture on AWS by leveraging Auto Scaling, Spot Instances, and recommendations for Savings Plans. The solution uses Terraform to provision a scalable and resilient infrastructure that automatically adjusts capacity based on demand while taking advantage of the cost benefits provided by Spot Instances.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Project Structure](#project-structure)
- [Prerequisites](#prerequisites)
- [Setup & Deployment](#setup--deployment)
- [Cost Optimization Strategies](#cost-optimization-strategies)
- [Troubleshooting](#troubleshooting)
- [Contributing](#contributing)
- [License](#license)

## Overview

The solution provisions an Auto Scaling Group (ASG) using a Launch Template configured for Spot Instances. It also sets up scaling policies via CloudWatch alarms to ensure that capacity dynamically adjusts with workload demand. This approach minimizes costs by:
- **Using Spot Instances:** Running workloads on spare AWS capacity at a fraction of the on‑demand price.
- **Auto Scaling:** Automatically scaling the number of instances based on real-time demand.
- **Savings Plans (Recommended):** For workloads with predictable usage, Savings Plans can provide further cost savings (to be purchased via AWS).

## Features

- **Auto Scaling with Spot Instances:** Deploy an Auto Scaling Group that utilizes EC2 Spot Instances for cost savings.
- **Dynamic Scaling:** CloudWatch alarms trigger scaling policies to adjust capacity in response to changes in demand.
- **Infrastructure as Code:** All resources are defined and managed with Terraform for reproducibility and version control.
- **Extensible Architecture:** Easily extend or modify the configuration for additional cost-optimization strategies.

## Technologies Used

- **Terraform:** For infrastructure provisioning and management.
- **AWS Auto Scaling:** To automatically adjust compute capacity.
- **EC2 Spot Instances:** To lower costs by using spare AWS capacity.
- **CloudWatch:** For monitoring and scaling triggers.

## Project Structure

aws-cost-optimization/ ├── README.md ├── terraform/ │ ├── provider.tf │ ├── variables.tf │ ├── main.tf │ └── outputs.tf └── scripts/ └── deploy.sh


## Prerequisites

- **AWS Account:** With sufficient permissions to create VPCs, EC2 instances, and Auto Scaling Groups.
- **Terraform (v1.0+):** [Download and Install Terraform](https://www.terraform.io/downloads.html)
- **AWS CLI:** Configured with your AWS credentials.
- **Git:** To clone the repository.

## Setup & Deployment

1. **Clone the repository:**

 ```bash
   git clone <repository_url>
 ```
Configure Variables:

Edit terraform/variables.tf as needed (e.g., region, instance type, key name).

Initialize and Deploy with Terraform:
```
cd terraform
terraform init
terraform plan -out=tfplan
terraform apply -auto-approve tfplan
```
View Outputs:

After deployment, Terraform will output key information such as the public IP of the instances in the Auto Scaling Group.

## Cost Optimization Strategies
EC2 Spot Instances: By configuring the Launch Template to use Spot pricing, you can significantly reduce your compute costs.
Auto Scaling: The ASG automatically scales the number of instances based on demand, ensuring you only pay for what you need.
Savings Plans (Recommended): For baseline workloads, consider purchasing Savings Plans through the AWS console to lock in lower rates.
## Troubleshooting
Terraform Deployment Errors: Verify that your AWS credentials and permissions are correctly configured.
Auto Scaling Issues: Check CloudWatch logs to ensure that scaling policies are triggering correctly.
Spot Instance Interruptions: Monitor instance health and ensure your application can handle Spot termination notices.
## Contributing
Contributions are welcome! Please fork this repository, make improvements, and open a pull request with your changes.

## License
This project is licensed under the MIT License. See the LICENSE file for details.

Happy optimizing!
