if exists("b:current_syntax")
	finish
endif

syntax keyword pxKeyword do endo while endwhile
syntax keyword pxFunction proc endproc
syntax keyword pxKeyword line write writestr
syntax keyword pxKeyword read readstr
syntax keyword pxKeyword retval

syntax match pxNumber "\d+"
highlight link pxNumber Number

"Define Conditionals"
syntax keyword pxConditional if else endif
highlight link pxConditional Conditional
"End Conditionals"

syntax keyword pxType array var
highlight link pxType Type

"Define Comments"
syntax match pxComment "//.*\n"
highlight link pxComment Comment
"End Comments"

"Define PAXIX operators"
syntax match pxOperator "\v\+"
syntax match pxOperator "\v\-"
syntax match pxOperator "\v\/"
syntax match pxOperator "\v\*"
syntax match pxOperator "\v\="
syntax match pxOperator "\v\<"
syntax match pxOperator "\v\<="
syntax match pxOperator "\v\>="
syntax match pxOperator "\v\>"
syntax match pxOperator "\v\#"
syntax keyword pxOperator and or not
highlight link pxOperator Operator
"End Operators"

"Define Strings"
syntax region pxString start=/\v"/ skip=/\v\\./ end=/\v"/
highlight link pxString String
"End Strings"

"Define Character"
syntax region pxChar start=/\v'/ end=/\v'/
highlight link pxChar Character
"End Character"

highlight link pxKeyword Keyword
highlight link pxFunction Function
let b:current_syntax = "paxix"
