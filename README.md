# Cloud-Native Architecture for Hosting a Dynamic Web Application

## Project Overview
This project was developed as part of the Advanced Cloud Architecting course. The objective was to design and implement a cloud-native architecture for hosting a well-established, open-source web application. The application chosen for this project is a community-driven application with over 100 commits and 50 stars, ensuring its quality and reputation.

The architecture was designed following the **AWS Well-Architected Framework** to ensure scalability, security, reliability, cost-efficiency, and operational excellence. The implementation showcases how to host modern, high-traffic web applications effectively on AWS.

---

## Architecture Diagram
![Architecture Diagram](![Cloud-Final-Arch-diagram](https://github.com/user-attachments/assets/73569ae8-b23d-41a6-ba03-c8cfd97253fa)
)

---

## Key Features

### Frontend
- Hosted on **AWS Amplify** with a global CDN for fast and reliable content delivery.
- Provides seamless handling of traffic spikes through AWS Amplify's scalability features.

### Backend
- **Amazon EC2** instances deployed in an **Auto Scaling Group** for dynamic scalability and fault tolerance.
- Load balanced with an **Application Load Balancer (ALB)** to ensure even traffic distribution and high availability.

### Database
- **Amazon DocumentDB (MongoDB-compatible)** for a secure and scalable NoSQL database solution.
- Multi-AZ deployment ensures high availability and data durability.

### Storage
- **Amazon S3** is used for storing application assets such as images.
- Integrated with a **VPC Endpoint** to reduce NAT Gateway costs while maintaining secure access.

### Notifications and Monitoring
- **Amazon SNS** sends real-time notifications for critical events during builds and application operations.
- **Amazon CloudWatch** monitors application performance and logs, ensuring proactive issue resolution.

### Automation
- Infrastructure provisioned and managed using **AWS CloudFormation**, enabling consistency and repeatability.

---

## AWS Well-Architected Framework Alignment

### Operational Excellence
- **Infrastructure as Code (IaC):** Automated resource provisioning and management using AWS CloudFormation.
- CI/CD pipeline implemented with AWS Amplify for frontend deployments.

### Security
- Private subnets for backend EC2 instances and DocumentDB, ensuring no direct internet exposure.
- **VPC Endpoint** for secure access to S3.
- Strict IAM policies and security group configurations.

### Reliability
- Multi-AZ deployment for backend instances and DocumentDB ensures high availability.
- **Application Load Balancer** distributes traffic to healthy instances.

### Performance Efficiency
- Global CDN via AWS Amplify for low-latency content delivery.
- Auto Scaling dynamically adjusts backend resources based on demand.

### Cost Optimization
- **VPC Endpoint** reduces NAT Gateway costs for accessing S3.
- Auto Scaling ensures efficient resource utilization by adding/removing EC2 instances as needed.

---

## Services Used
- **AWS Amplify**: Frontend hosting and CI/CD pipeline.
- **Amazon EC2**: Backend compute instances with Auto Scaling.
- **Amazon DocumentDB**: NoSQL database solution for the application.
- **Amazon S3**: Scalable object storage for application assets.
- **Application Load Balancer (ALB)**: Distributes traffic to backend instances.
- **Amazon SNS**: Notifications for build and monitoring alerts.
- **Amazon CloudWatch**: Application monitoring and logging.
- **AWS CloudFormation**: Infrastructure as Code for consistent resource provisioning.

---

## Setup Instructions

### Prerequisites
- AWS account with administrative access.
- AWS CLI installed and configured.
- Terraform or CloudFormation setup for IaC.

### Steps
1. Clone this repository:
   ```bash
   git clone <repository-url>
   ```
2. Deploy the frontend using AWS Amplify.
3. Use the CloudFormation template provided to set up the backend architecture.
4. Update the `parameters.json` file with your custom values for deployment.
5. Deploy the CloudFormation stack:
   ```bash
   aws cloudformation deploy --template-file template.yaml --stack-name <stack-name>
   ```
6. Verify the deployment through the AWS Management Console.

---

## Future Improvements
- Implementing a WAF (Web Application Firewall) for additional security.
- Adding Redis or DynamoDB caching for enhanced performance.
- Migrating backend deployments to containers with Amazon ECS or EKS.

---

## License
This project is licensed under the MIT License. Please see the `LICENSE` file for details.

---

## Acknowledgments
- Original application development credit to the open-source project contributors.
- Special thanks to the Advanced Cloud Architecting course instructors for guidance.

---

## Contact
Feel free to reach out via GitHub issues or LinkedIn for any queries or discussions related to this project.
