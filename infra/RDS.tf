resource "aws_db_instance" "default" {
  allocated_storage    = 10
  db_name              = "root"
  engine               = "postgres"
  engine_version       = "13.18"
  instance_class       = "db.t3.micro"
  username             = "postgres"
  password             = "rootroot"
  skip_final_snapshot  = true
  publicly_accessible  = true
  db_subnet_group_name = module.vpc.database_subnet_group_name
  vpc_security_group_ids = [aws_security_group.db.id]
}
