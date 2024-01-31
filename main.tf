//--------------------------------------------------------------------
// Variables



//--------------------------------------------------------------------
// Modules
module "compute" {
  source  = "app.terraform.io/cminatoro/compute/aws"
  version = "1.1.0"

  aws_region          = "us-east-1"
  public_key_material = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDCVuRzQyd1Qvp/D7nx09SVA+C8CQHCxZWsvS5IRBuzFdJ45YaLytZL2JO/Hr39FYfy8ETWFny43RfvcmpisiefoVhnTPXoKGnBcGG6P9s1FT0yJlhN06eXzn3PIaSJel/Yf8FHK1mEwgrBg165L3ghYqDzKK5HXxYyvviOdK13G2XE9lNXG84eJbCNDLUnyO7vtsPvqlnKIKgen6whcAFRm6TKB/eR8DVAZ6YKds60Xu+gHxWCT8OEIYodaueOJQom91DQHjcw/+A72mvu7W9m2lWRARzM+zU/1MDz2jGsbuBAiWss5IEh8IrH0BIahlfa7aGokFtSdRd7PjJYuirRd8S/drxLTV1KYNmtpqDZv+3i9d4eKwIIgzGqWO4UUKwXWs1obJAk+CMNLlwA+orwUJB3YFwjyZV6jjuxbFQDXQV0WypWVf6Yd1Dg0sOA7BH6XkCoDdPcbM9O4pbLf/3vIUuQ48+6Km0Ws6PkQjqhgUKZg6zULQN7++UwjCxrKMs= ubuntu@ip-172-31-15-229"
  public_sg           = module.networking.public_sg
  public_subnets      = module.networking.public_subnets
}

module "networking" {
  source  = "app.terraform.io/cminatoro/networking/aws"
  version = "1.0.0"

  access_ip  = "0.0.0.0/0"
  aws_region = "us-east-1"
}