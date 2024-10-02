# Self serice totem Database 
[![Terraform Plan](https://github.com/evilfeeh/sst-sgdb/actions/workflows/pullrequest.yml/badge.svg)](https://github.com/evilfeeh/sst-sgdb/actions/workflows/pullrequest.yml)

In order to ensure the righteous functioning of the self service totem application and to follow the requirements of the FIAP to the third phase of postgraduation's Software Architecture course, we're implementing MYSQL database using AWS RDS service.

This repository have the terraform files responsible to run and keep updated the database in the cloud.

## JUSTIFICATION DATABASE
The Self Service Totem project uses RDS MySQL to store Product, Payment and Order data, due to the need for transactional consistency and complex relationships between these entities, characteristics well supported by relational databases. DynamoDB is used to store user information, taking advantage of its high scalability and low latency for frequent queries and quick access. Authentication is reinforced by the use of a Lambda Authorizer in the authentication flow via API Gateway, ensuring efficient access control and integrated with the rest of the serverless architecture.

## how to use:

- Download the repository
``` bash
  git clone https://github.com/evilfeeh/sst-sgdb
```
- Run init to download providers and resources
``` bash
  terraform init
```
- Validate and format to ensure good practices
``` bash
  terraform fmt
  terraform validate
```
- Fill the env.auto.tfvars with your values
- Change the enviroments and provider's properties as you need


## RDS MySql
![MER BANDO DE DADOS](./diagrams/mer-database.png)
## DynamoDB
![MER BANDO DE DADOS](./diagrams/mer-auth-database.png)