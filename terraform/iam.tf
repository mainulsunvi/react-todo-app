# resource "aws_iam_policy" "create_role_policy" {
# 	name = "ecs-create-role-policy"
# 	path = "/"
# 	description = "iam:CreateRole Policy"
# 	policy = jsonencode({
# 		Version = "2012-10-17",
# 		Statemet = [{
# 			Sid = "VisualEditor0",
# 			Effect = "Allow",
# 			Action = [
# 				"iam:GetRole",
#         "iam:GetRolePolicy",
#         "iam:PassRole",
#         "iam:DetachRolePolicy",
#         "iam:DeleteRolePolicy",
#         "iam:DeleteRole",
#         "iam:CreateRole",
#         "iam:AttachRolePolicy",
#         "iam:PutRolePolicy"
# 			],
# 			resource = "arn:aws:iam::*:role/*"
# 		}]
# 	})
# }

resource "aws_iam_role" "ecs_role" {
	name = "ecs_role_example"
	assume_role_policy = <<POLICY
	{
		"Version" : "2012-10-17",
		"Statemet" : [
			{
				"Sid" : "",
				"Effect" : "Allow",
				"Principal" : {
					"Service" : "ecs-tasks.amazonaws.com"
				},
				
				"Action": "sts:AssumeRole"
			}
		]
	}
	POLICY
}

resource "aws_iam_role_policy_attachment" "ecs_policy_attachment" {
	role = "${aws_iam_role.ecs_role.name}"
	policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
}