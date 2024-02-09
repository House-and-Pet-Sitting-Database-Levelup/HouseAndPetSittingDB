# configured aws provider with proper credentials
provider "aws" {
  region  = "eu-west-1"
  profile = "Timo"
}

#Our main vpc in eu-west1
#eu-west1 has 3 az's. We want to mirror our db accross all three
resource "aws_vpc" "mainVPC" {
  cidr_block       = "10.0.0.0/16"

  tags = {
    Name = "main"
    owner = "timo.vdmerwe@bbd.co.za"
    created-using = "terraform"
  }
}

#Our first subnet in the vpc for az eu-west-1a
resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.mainVPC.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "eu-west-1a"

  tags = {
    Name = "subnet1"
    owner = "timo.vdmerwe@bbd.co.za"
    created-using = "terraform"
  }
}

#Our second subnet in the vpc for az eu-west-1b
resource "aws_subnet" "subnet2" {
  vpc_id     = aws_vpc.mainVPC.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "eu-west-1b"

  tags = {
    Name = "subnet2"
    owner = "timo.vdmerwe@bbd.co.za"
    created-using = "terraform"
  }
}

#Our third subnet in the vpc for az eu-west-1c
resource "aws_subnet" "subnet3" {
  vpc_id     = aws_vpc.mainVPC.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "eu-west-1c"

  tags = {
    Name = "subnet3"
    owner = "timo.vdmerwe@bbd.co.za"
    created-using = "terraform"
  }
}


/*# create default vpc if one does not exit
resource "aws_default_vpc" "default_vpc" {

  tags = {
    Name = "default vpc"
  }
}


/*# use data source to get all avalablility zones in region
data "aws_availability_zones" "available_zones" {}


# create a default subnet in the first az if one does not exit
resource "aws_default_subnet" "subnet_az1" {
  availability_zone = 
}

# create a default subnet in the second az if one does not exit
resource "aws_default_subnet" "subnet_az2" {
  availability_zone = 
}

# create security group for the web server
resource "aws_security_group" "webserver_security_group" {
  name        = "webserver security group"
  description = "enable http access on port 80"
  vpc_id      = 

  ingress {
    description      = "http access"
    from_port        = 
    to_port          = 
    protocol         = 
    cidr_blocks      = 
  }

  egress {
    from_port        = 
    to_port          = 
    protocol         = 
    cidr_blocks      = 
  }

  tags   = {
    Name = 
  }
}

# create security group for the database
resource "aws_security_group" "database_security_group" {
  name        = "database security group"
  description = "enable mysql/aurora access on port 3306"
  vpc_id      = 

  ingress {
    description      = "mysql/aurora access"
    from_port        = 
    to_port          = 
    protocol         = 
    security_groups  = 
  }

  egress {
    from_port        = 
    to_port          = 
    protocol         = 
    cidr_blocks      = 
  }

  tags   = {
    Name = 
  }
}


# create the subnet group for the rds instance
resource "aws_db_subnet_group" "database_subnet_group" {
  name         = 
  subnet_ids   = 
  description  = 

  tags   = {
    Name = 
  }
}


# create the rds instance
resource "aws_db_instance" "db_instance" {
  engine                  = 
  engine_version          = 
  multi_az                = 
  identifier              = 
  username                = 
  password                = 
  instance_class          = 
  allocated_storage       = 
  db_subnet_group_name    = 
  vpc_security_group_ids  = 
  availability_zone       = 
  db_name                 = 
  skip_final_snapshot     = 
}*/