variable "itype" {
    description = "the instance type"
    type = "list"
    default = ["t2.micro", "t3.micro", "t2.small"]
}