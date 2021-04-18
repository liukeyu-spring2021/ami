# serverless
This repository is used to log sns events in cloud watch.
It's running on aws lambda.

Secret:
- 'cicd_lambda' user credentials in `dev` or `prod`
- bucketname to store serverless application

Reference:
https://docs.aws.amazon.com/lambda/latest/dg/golang-logging.html

Instructions:
1. Prerequisites for building and deploying your application locally
    - Install [Golang](https://golang.org/dl/)
    - Place the codebase in `GOPATH/src/`
    - Install the dependencies listed in go.mod(optional)

2. Build and Deploy instructions for web application
    - Build: `go build`
    - Build for ubuntu: `env GOOS=linux GOARCH=amd64 go build`
    - Test: `go test ./...`
    - Run: `go run main.go`

Demo steps:
- log in dev and prod aws accounts, any AMIs shared by dev can be found in private images in prod AMIs
- Run Ec2 instance with network at 8080 inbound rule
- Build go binary for ubuntu
  - `env GOOS=linux GOARCH=amd64 go build`
- `scp -i "~/.ssh/ubuntu" webapp ubuntu@ec2-3-238-43-225.compute-1.amazonaws.com:/home/ubuntu`
- `sudo mysql`
- `set password=password('your password');`
- `ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'your password';`
- `create database `db_cloud`;`
- `exit`
- `./webapp`
- send requests to the public IP addr