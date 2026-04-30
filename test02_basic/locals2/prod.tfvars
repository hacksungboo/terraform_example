# locals2/prod.tfvars

# 파일명이 terraform.tfvars가 아니기 때문에 terraform을 실행할때 default로 읽어들이지 않는다.
# prod 는 production의 의미 -> 실제 배포용 
# plan 이나 apply 할때 -var-file="prod.tfvars" 옵션을 주어서 실행해야 한다.

env             = "prod"
project_name    = "ktcloud-v1"