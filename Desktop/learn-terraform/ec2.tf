//ec2 instance creation for myself//
resource "aws_s3_bucket" "mogul-bucket" {
  bucket = "mogul-bucket"
}

resource "aws_instance" "web" {
  ami           = "ami-0440d3b780d96b29d"
  count = 2
  instance_type = var.size
  depends_on = [ aws_s3_bucket.mogul-bucket ]

  tags = {
    Name = "Mogul-World.${count.index+1}"
  } 
}

