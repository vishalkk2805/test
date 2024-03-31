#---------------------------------Security Group ----------------------------------#

security_name                 = "Dev-Frontend-sg"
Security_description          = "Security group for Dev-Frontend-API"
SG_vpc_id                     = "vpc-0a5873d6063e0cc06"

inbound_ports                 = [
    { port = 22, protocol = "tcp",cidr_blocks = "0.0.0.0/0" }, 
    { port = 22, protocol = "tcp", security_group_ids = "sg-0004a4ea2f847d247" },    
  ]

outbound_ports                = [
    { port = 0, protocol = "-1", cidr_blocks = "0.0.0.0/0", },
  ]

Sg_tags                       = {
    Name          = "Dev-Frontend-sg"
    Enviroment    = "dev"
    Owner         = "Vishal"
  }   

#-----------------------xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx -----------------------#
