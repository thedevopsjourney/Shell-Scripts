#!/usr/bin/bash

##################################################################################################################

# This script lists all AWS resources in the specified service in the specified region of the AWS account and .
# Author: Suganthavanan
# Version: 0.1.0
#
# Following services are supported in AWS in this script:
#           1. EC2
#           2. S3
#           3. RDS
#           4. Lambda
#           5. CloudFormation
#           6. CloudWatch
#           7. IAM
#           8. VPC
#           9. EBS
#           10. ELB
#           11. SNS
#           12. SQS
#           13. CloudFront
#           14. Route53
#           15. DynamoDB


# Usage: ./aws_resource_list.sh <region> <service>
# Example: ./aws_resource_list.sh us-east-1 ec2

##################################################################################################################

# Check if the required arguments are provided
if [ $# -ne 2 ]; then
    echo "Usage : $0 <region> <service>"
    exit 1
fi

# Check if AWS CLI is installed
if [ ! command -v aws &> /dev/null ]; then      
    echo "AWS CLI is not installed. Please install it and try again."
    exit 1
fi

# Check if AWS cli credentials are configured
if [ ! -d ~/.aws ]; then
    echo "AWS credentials not found. Please configure them and try again."
    exit 1
fi


region=$1
service=$2


case $service in
    "EC2")
        echo "Listing all EC2 instances in region $region"
        aws ec2 describe-instances --region $region --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text
	;;
    "S3")
        echo "Listing all S3 buckets in region $region"
        aws s3api list-buckets --query "Buckets[].Name" --region $region
        ;;
    "RDS")
        echo "Listing all RDS instances in region $region"  
        aws rds describe-db-instances --region $region  
        ;;
    "Lambda")
        echo "Listing all Lambda functions in region $region"               
        aws lambda list-functions --region $region
        ;;
    "CloudFormation")
        echo "Listing all CloudFormation stacks in region $region"  
        aws cloudformation describe-stacks --region $region
        ;;
    "CloudWatch")
        echo "Listing all CloudWatch alarms in region $region"  
        aws cloudwatch describe-alarms --region $region
        ;;
    "IAM")
        echo "Listing all IAM users in region $region"  
        aws iam list-users --region $region
        ;;
    "VPC")
        echo "Listing all VPCs in region $region"
        aws ec2 describe-vpcs --region $region
        ;;
    "EBS")
        echo "Listing all EBS volumes in region $region"
        aws ec2 describe-volumes --region $region
        ;;
    "ELB")
        echo "Listing all ELBs in region $region"
        aws elb describe-load-balancers --region $region
        ;;
    "SNS")
        echo "Listing all SNS topics in region $region"
        aws sns list-topics --region $region
        ;;
    "SQS")
        echo "Listing all SQS queues in region $region"
        aws sqs list-queues --region $region
        ;;
    "CloudFront")
        echo "Listing all CloudFront distributions in region $region"
        aws cloudfront list-distributions --region $region
        ;;
    "Route53")
        echo "Listing all Route53 hosted zones in region $region"
        aws route53 list-hosted-zones --region $region
        ;;
    "DynamoDB")
        echo "Listing all DynamoDB tables in region $region"
        aws dynamodb list-tables --region $region
        ;;
    *)
        echo "Service $service is not supported. Please provide a valid service name."
        exit 1
        ;;
esac

