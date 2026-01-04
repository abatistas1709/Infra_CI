resource "aws_cloudwatch_log_group" "ecs_go_api" {
  name              = "/ecs/Go-API"
  retention_in_days = 7
}
