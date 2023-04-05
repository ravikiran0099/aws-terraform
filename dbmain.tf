resource "aws_db_instance" "rds_instance" {
allocated_storage = 10
identifier = "rds-terraform"
storage_type = "gp2"
engine = "mysql"
engine_version = "8.0.27"
instance_class = "db.t2.micro"
name = "db_name"
username = "root"
password = "root1234"
publicly_accessible    = true
skip_final_snapshot    = true


  tags = {
    Name = "WEB DB"
  }
}
