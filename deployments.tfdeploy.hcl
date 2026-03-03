deployment_auto_approve "yolo" {
  check {
    condition = context.plan.changes.total < 3000
    reason    = "approve up to 3000 changes"
  }
}

deployment_group "yolo" {
  auto_approve_checks = [deployment_auto_approve.yolo]
}

deployment "staging" {
  deployment_group = deployment_group.yolo
}

deployment "prod" {}
