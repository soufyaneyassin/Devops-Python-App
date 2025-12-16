resource "aws_instance" "minikube-app-server" {
     ami           = "ami-0e86e20dae9224db8"
     instance_type = "t3.medium"
     vpc_security_group_ids = [
        aws_security_group.my_ip_ssh.id,
        aws_security_group.https_world.id
     ]





}