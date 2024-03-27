define void @uselessFunction(){
    ret void
}

define void @myFunction(i1 %cond) {
entry:
  br i1 %cond, label %then, label %exit

then:
  ret void

unr:
  call void @uselessFunction()  
  ret void

exit:
  ret void
}