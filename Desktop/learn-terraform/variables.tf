variable "size" {
    type = string
    default = "t2.micro"  
}

output "Privateip" {
    value = aws_instance.web[1].private_ip
}