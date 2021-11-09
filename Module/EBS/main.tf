resource "aws_ebs_volume" "harold_ebs" {
  availability_zone = "us-east-1"
  size              = var.size_ebs

  tags = var.tag_ec2
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.harold_ebs.id
  instance_id = var.instance_id
}