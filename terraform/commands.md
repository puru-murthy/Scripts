# terrafrom lifecycle commands

# initializes terraform working directory and downloading the necessary providers and modules  

terraform init

# checks the validity of the configuration files in the current working directory, helps syntax errors

terraform validate

# automatically format configuration files to ensure consistent style and structure

terraform fmt

# creates an execution plan. It analyzes the current state of infrastructure and desired state defined in the configuration files. It generates an execution plan outlining the actions that terraform will take

terraform plan

+ create: A new resource will be created.
~ update in-place: An existing resource will be updated in-place.
- destroy: An existing resource will be destroyed

# updates the state file with the real-worlds infrastructure's current state

terraform refresh

# it applies the changes defined in the configuration files

terraform apply 

# it is used to destroy the resources created by terraform 

terraform destroy

# it is used to import existing infrastructure into terraform 

terraform import

# provides functionality for advanced manipulation of terraform state

terraform state

# it displays the output of terraform configuration

terraform output