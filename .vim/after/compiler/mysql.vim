if exists("current_compiler")
  finish
endif
let current_compiler = "mysql"

CompilerSet errorformat+=ERROR\ %n ():[%l\\,%v]\ %m
