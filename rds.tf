resource "aws_db_instance" "default" {
  identifier             = "app-db"
  engine                 = var.db_engine
  instance_class         = "db.t3.micro"
  allocated_storage      = 20
  db_name                = var.db_name
  username               = jsondecode(aws_secretsmanager_secret_version.db_secret_version.secret_string)["username"]
  password               = jsondecode(aws_secretsmanager_secret_version.db_secret_version.secret_string)["password"]
  skip_final_snapshot    = true
}
