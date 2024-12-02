# Self-service totem Database 
[![Terraform Plan](https://github.com/fiap-soat-sst/sst-sgdb/actions/workflows/pullrequest.yml/badge.svg)](https://github.com/fiap-soat-sst/sst-sgdb/actions/workflows/pullrequest.yml) [![Terraform Apply](https://github.com/fiap-soat-sst/sst-sgdb/actions/workflows/apply.yml/badge.svg)](https://github.com/fiap-soat-sst/sst-sgdb/actions/workflows/apply.yml)

To ensure the correct behavior of the self-service totem application and follow the requirements of the FIAP to the third phase of postgraduation's Software Architecture course, we're implementing the MYSQL database using AWS RDS service.

This repository has terraform files for running and keeping the database in the cloud.

## JUSTIFICATION DATABASE
The Self Service Totem project uses RDS MySQL to store Product, Payment, and Order data, due to the need for transactional consistency and complex relationships between these entities, characteristics well supported by relational databases. DynamoDB stores user information, taking advantage of its high scalability and low latency for frequent queries and quick access. Authentication is reinforced using the Lambda Authorizer in the authentication flow via API Gateway, ensuring efficient access control and integration with the rest of the serverless architecture.

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
- Change the environments and provider's properties as you need


## RDS MySql
![MER BANDO DE DADOS](./diagrams/mer-database.png)
## DynamoDB
![MER BANDO DE DADOS](./diagrams/mer-auth-database.png)
