resource "aws_organizations_account" "log_archive" {
  name      = "LogArchive"
  email     = "neetu-log@yourdomain.com"
  parent_id = aws_organizations_organizational_unit.security.id
}

resource "aws_organizations_account" "audit" {
  name      = "Audit"
  email     = "neetu-audit@yourdomain.com"
  parent_id = aws_organizations_organizational_unit.security.id
}