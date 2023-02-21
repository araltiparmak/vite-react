resource "aws_s3_bucket" "vite_react_project" {
  bucket = "vite-react-project"
}

resource "aws_s3_bucket_versioning" "vite_react_project_versioning" {
  bucket = aws_s3_bucket.vite_react_project.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_object" "deploy" {
  bucket = aws_s3_bucket.vite_react_project.id
  key    = "deploy/"
  acl    = "private"
}