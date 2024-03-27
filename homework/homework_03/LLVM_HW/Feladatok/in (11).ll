define i32 @myFunction(i32 %a) {
entry:
  %x = alloca i32 
  %add = add nsw i32 %a, 1
  ret i32 %add
}