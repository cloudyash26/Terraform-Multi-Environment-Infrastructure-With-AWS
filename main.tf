module "dev-instance" {
    source = "./aws_infra_modules"
    ami_id = "ami-0360c520857e3138f"
    instance_type = "t2.micro"
    instance_count = 1
    my-env = "dev"
}

module "staging-instance" {
    source = "./aws_infra_modules"
    ami_id = "ami-0360c520857e3138f"
    instance_type = "t2.medium"
    instance_count = 2
    my-env = "stage"
}

module "production-instance" {
    source = "./aws_infra_modules"
    ami_id = "ami-0360c520857e3138f"
    instance_type = "t2.large"
    instance_count = 3
    my-env = "prod"
}