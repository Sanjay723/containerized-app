output "ecr_repository_url" {
  description = "ECR Repository URL"
  value       = aws_ecr_repository.app_repo.repository_url
}

output "alb_dns_name" {
  description = "Public Load Balancer DNS URL"
  value       = aws_lb.main.dns_name
}