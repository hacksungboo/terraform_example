# test02_basic/foreach2/main.tf

# 1. 데이터 정의 (학생 명단)
locals {
    # map을 이용해 보자
    students = {
        lee     = "이정호"
        kim     = "김정호"
        park    = "박정호"
    }
}


# 2. for_each 를 사용하여 파일 생성  local_file.student_notes 는 map type 이다
resource "local_file" "student_notes" {
    # for_each 에 map 대입하기
    for_each = local.students
    # ${each.key} 와 ${each.value} 의 내용은 다르다 (map을 넣어주었기 때문에)
    filename = "${path.module}/student_${each.key}.txt"
    content = "안녕하세요! ${each.value} 학생의 실습 노트 입니다"
}

output "debug" {
    description = "생성된 파일들의 전체 경로 목록"
    value = [for item in local_file.student_notes : item.filename] # item.filename 은 아이템이 가지고 있는 정보중에 하나
}