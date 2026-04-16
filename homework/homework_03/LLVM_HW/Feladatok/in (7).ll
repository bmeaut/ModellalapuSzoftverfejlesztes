define i32 @add_and_ignore(i32 %x) {
  %add1 = add nsw i32 %x, 1
  
  %unused = add nsw i32 %add1, 2
  ret i32 %x
}