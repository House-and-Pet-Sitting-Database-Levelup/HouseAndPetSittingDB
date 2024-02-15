# PetAndHouseSitting-DatabasesLevelUp
 Repository for database fundamentals level up

 _"This Level-Up focuses on relational databases with a specific focus on database design using Microsoft SQL Server."_

 ## Setting up our database from this Github repository
 Terraform is required to deploy our database instances on AWS. Terraform can be downloaded [here](https://developer.hashicorp.com/terraform/install?product_intent=terraform)

 Once Terraform is installed, open a terminal window in the terraform directory of this repository and execute the command: **terraform apply**. This will create a VPC in the eu-west-1 region, and an RDS instance in the availability zones eu-west1a and eu-west-1b. If you would like to remove the resources that were created on AWS, execute the command: **terraform destroy**.


 ## NAMING CONVENTIONS
 For Primary Keys please name the columns as PK_ColumnName


 For Foreign Keys please name the columns as FK_ColumnName

 ## USING
 
 Microsoft SQL Server Management Studio v19.3.40

 [Download here](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16) 

 MYSQL 8.0

 [Find reference manual here](https://dev.mysql.com/doc/refman/8.0/en/)

 ## Team Members:
 - Lior Becker
 - Thato Tladi
 - Rotenda Mantsha
 - Timo Van Der Merwe
 - Jenna Dunford

## Trello Board (Will update when have JIRA board)
[Trello](https://trello.com/b/83zfvsd2/house-and-pet-sitting-level-up)


## Please name branches accordingly:

YourName/Whatyoureworkingoninthisbranch

## Confluence:
[Confluence](https://bbd-dane.atlassian.net/wiki/spaces/~7120202a6a27770cfb4b758960e5fdd798c2cc/pages/1048622/House+and+Pet+Sitting+Database+Level+Up)

## Jira:
[Jira](https://bbdcloud.atlassian.net/jira/software/projects/HPSDLU/boards/27?atlOrigin=eyJpIjoiODVkN2Q4MDg2NDliNDBjOGIyMjRlNGNiMDg5OGJmNzciLCJwIjoiaiJ9)

Remove Whitespace
