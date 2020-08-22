# fluentd-nginx-s3

# Terraform
Before you execute the commands please make sure the AWS credentials are configured in you local.
## prerequisites 
```
AWS Account
AWS Access key and secret key
Terraform > ~0.11 
[Installation](https://learn.hashicorp.com/tutorials/terraform/install-cli).
aws-cli 
[Installation](https://docs.aws.amazon.com/cli/latest/userguide/install-linux.html).
docker-compose
[Installation](https://docs.docker.com/compose/install/)
```

Once the above installed in your local depends on your machine Type please configure AWS credentials with below commands
```
aws configure
AWS_ACCESS_KEY_ID=xxxx
AWS_SECRETE_KEY=xxx

change the profile name to Testing from default in the ~/aws/credentials file
```
Once the credentials configured execute below commands

```
git clone https://github.com/Shravan6488/fluentd-nginx-s3.git
cd terraform
terraform init
terraform plan
terraform apply
```
The above will spin up the S3 bucket you can change the bucket name in main.tf file if you wanted to

Before you start to run docker commands you need to have .env file in place and update the aws access key,seceret key and bucketname with your values
```
cd fluentd-nginx-s3
cat > .env
KEY=AWS ACCESS KEY
SECRET_KEY=AWS SECRETE KEY
S3_BUCKET=challengebucket1234
S3_REGION=ap-southeast-1
```
Once the .env file in place run the below
# Start

```
$ docker-compose up -d
```


You will be able to see the logs under your bucket.
