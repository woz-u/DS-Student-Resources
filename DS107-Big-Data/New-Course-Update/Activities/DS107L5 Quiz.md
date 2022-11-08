```c-lms
activity-type: quiz
activity-name: DS107L3.14 AWS Compute Quiz
max-attempts: 3
shuffle-questions: false
points-per-question: 0
due-at: 100%
close-at: end-of-module
```

When launching an EC2 instance, what are the choices you need to make decisions on?
- **Select an AMI, select an instance type, network settings, IAM tole, User data, Storage options, Tags, Security group, and Key pair.**
    * When launching an EC2 instance, there are nine choices that comprise: Select an AMI, select an instance type, network settings, IAM tole, User data, Storage options, Tags, Security group, and Key pair.
- Select an AMI, select an instance type, and launch the instance.
- Select an AMI, select an instance type, ensure to look both ways, and configure the instance.
- Select an AMI, select an instance type, and deploy the instance .

True or False? You can attach an IAM role when you launch the instance and an already running EC2 instance.
- **True**
    * You can attach an IAM role when you launch the instance and an already running EC2 instance.
- False

When you create an EC2 instance you have the option of passing user data to the instance. What is an example of passing user data?
- **A script that installs and configures a web server.**
    * When you create an EC2 instance you have the option of passing user data to the instance. For example, you can pass a script that installs and configures a web server.
- A database.
- A storage device.
- A network device.
- All of the above.

What are the two types of storage options for EC2 instances?
- **EBS and Instance Store**
    * There are two types of storage options for EC2 instances: EBS and Instance Store.
- EBS and S3
- EBS and CloudFront
- EBS and RDS

In AWS, what are tags used for?
- **To identify resources.**
    * A tag is a label that you assigned to an AWS resource, such as an EC2 instance. Each tag consists of a key and an optional value, both of which you define. Tags enable you to categorize your AWS resources in different ways, for example, by purpose, owner, or environment. You can also use tags to manage access (IAM), cost allocation, and application configuration.
- To shutdown the EC2 instance.
- To startup the EC2 environment.
- To pause the EC2 instance.

What is a security group in AWS?
- **A set of firewall rules that control the traffic for your instance.**
    * A security group acts as a virtual firewall for your instance to control inbound and outbound traffic. When you launch an instance in a VPC, you can assign up to five security groups to the instance. Security groups act at the instance level, not the subnet level. Therefore, each instance in a subnet in your VPC can be assigned to a different set of security groups. Security groups are stateful. This means that if you allow inbound traffic to reach an instance, the outbound traffic is automatically allowed, regardless of the security group rules.
- A team of people that control the traffic for your subnet.
- A team that sets the rules that control the traffic for your VPC.
- An organization dedicated to security.

What is a key pair used for on AWS EC2 instances?
- **A pair of public and private keys that are used to encrypt and decrypt login information.**
    * A key pair is a set of public and private keys that are used to encrypt and decrypt login information. When you launch an instance, you can store the public key on AWS so you can use it to log into the instance. You must store the corresponding private key in a secure place. You can use the private key to log into your instance. For Linux instances, you can only use key pairs when you launch an instance. You cannot use key pairs to log into a running instance.
- A pair of public and private keys that are used to encrypt and decrypt data.
- A pair of public and private keys that are used to encrypt and decrypt storage.
- A pair of public and private keys that are used to encrypt and decrypt network traffic.

What is the difference between EBS and Instance Store?
- **Instance Store is temporary storage that is erased when the instance is stopped. EBS is persistent storage that is not erased when the instance is stopped.**
    * The instance store is ideal for temporary storage, because the data stored in instance store volumes is not persistent through instance stops, terminations, or hardware failures. For data you want to retain longer, or if you want to encrypt the data, use Amazon Elastic Block Store (Amazon EBS) volumes instead.
- Instance Store is persistent storage that is not erased when the instance is stopped. EBS is temporary storage that is erased when the instance is stopped.

What is the difference between EBS and S3?
- **EBS is block storage that is attached to an EC2 instance. S3 is object storage that is not attached to an EC2 instance.**
    * EBS is block storage that is attached to an EC2 instance. S3 is object storage that is not attached to an EC2 instance.
- EBS is object storage that is not attached to an EC2 instance. S3 is block storage that is attached to an EC2 instance.

What is the AWS CLI?
- **A command line interface that allows you to interact with AWS services.**
    * The AWS Command Line Interface (CLI) is a unified tool to manage your AWS services. With just one tool to download and configure, you can control multiple AWS services from the command line and automate them through scripts.
- A code line tool that allows you to delete Azure instances.
- A command line interface that allows you to interact with GCP storage.

What is the AWS SDK?
- **A set of libraries that allow you to interact with AWS services.**
    * The AWS SDK for Python (Boto3) is the AWS SDK for Python. It enables Python developers to create, configure, and manage AWS services, such as EC2 and S3. Boto3 provides an easy to use, object-oriented API, as well as low-level access to AWS services.
- A set of libraries that allow you to interact with Azure services.
- A set of libraries that allow you to interact with GCP services.





