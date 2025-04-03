define i32 @add_and_add(i32 %x) {
  %add1 = add nsw i32 %x, 1
  %add2 = add nsw i32 %add1, 1
  ret i32 %add2
}