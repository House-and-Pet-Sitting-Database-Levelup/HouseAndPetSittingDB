# Pet and house sitting - databases level up
 *_"This Level-Up focuses on relational databases with a specific focus on database design."_*

 ## Confluence:
 [Confluence](https://bbd-dane.atlassian.net/wiki/spaces/~7120202a6a27770cfb4b758960e5fdd798c2cc/pages/1048622/House+and+Pet+Sitting+Database+Level+Up)

 ## Jira:
 [Jira](https://bbdcloud.atlassian.net/jira/software/projects/HPSDLU/boards/27?atlOrigin=eyJpIjoiODVkN2Q4MDg2NDliNDBjOGIyMjRlNGNiMDg5OGJmNzciLCJwIjoiaiJ9)

 ## Setting up our database
 Terraform is required to deploy our database instances on AWS. Terraform can be downloaded [here](https://developer.hashicorp.com/terraform/install?product_intent=terraform)

 Once Terraform is installed, open a terminal window in the terraform directory of this repository and execute the command: `terraform apply`. This will create a VPC in the eu-west-1 region, and an RDS instance in the availability zones eu-west1a and eu-west-1b. If you would like to remove the resources that were created on AWS, execute the command: `terraform destroy`.

 Flyway is recommended to apply the migrations in this repository to our database. Flyway can be downloaded [here](https://flywaydb.org/)

 Once the RDS instances are deployed, open a terminal window in the flyway directory and execute the command: `flyway migrate`.
 This will apply all of the migrations that are in the directory **flyway/migrations** to the RDS instances that were created in the previous step. If you would like to reset the database, you can execute the command: `flyway clean`. 

 ## Using

  - MYSQL 8.0
  [Download here](https://dev.mysql.com/downloads/mysql/)

  - Terraform
  [Download here](https://developer.hashicorp.com/terraform/install?product_intent=terraform)

  - Flyway
  [Download here](https://flywaydb.org/)

  - DBeaver
  [Download here](https://dbeaver.io/download/)

## Team Members:
 - Lior Becker
 - Thato Tladi
 - Rotenda Mantsha
 - Timo Van Der Merwe
 - Jenna Dunford

 ## Trello Board
[Trello](https://trello.com/b/83zfvsd2/house-and-pet-sitting-level-up)
