if exists("current_compiler")
  finish
endif
let current_compiler = "maven"

CompilerSet errorformat+=[ERROR]\ %f:[%l\\,%v]\ %m
