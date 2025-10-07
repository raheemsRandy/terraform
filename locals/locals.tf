locals {
    final_name = "${var.project}-${var.environment}-${var.component}"
}

locals {
    ec2_tags = merge (
        var.common_tags,
        {
            enviroment = "dev",
            version = "1.0"
        }
    )
}
