# Dev Env
module "dev-app" {
    source = "./My_app_module"
    my_env = "dev"
    instance_type = "t2.micro"
    ami = "ami-0eb260c4d5475b901"
}

# Prod Env
module "prod-app" {
    source = "./My_app_module"
    my_env = "prod"
    instance_type = "t2.micro"
    ami  = "ami-0eb260c4d5475b901"
}

# Test Env
module "test-app" {
    source = "./My_app_module"
    my_env = "test"
    instance_type = "t2.micro"
    ami = "ami-0eb260c4d5475b901"
}

module "module-test" {
    source = "./My_app_module/EC2_module.tf"
    my_env = "module-test"
    instance_type = "t2.micro"
    ami = "ami-0eb260c4d5475b901"
}

module "module-test-1" {
    source = "./My_app_module/EC2_module.tf"
    my_env = "module-test-1"
    instance_type = "t2.micro"
    ami = "ami-0eb260c4d5475b901"
}

