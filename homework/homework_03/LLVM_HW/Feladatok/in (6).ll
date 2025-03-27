define void @f1(){
    ret void
}

define void @myFunction(i1 %cond) {
entry:
  br i1 %cond, label %then, label %exit

then:
  ret void

unr:
  call void @f1()  
  ret void

exit:
  ret void
}