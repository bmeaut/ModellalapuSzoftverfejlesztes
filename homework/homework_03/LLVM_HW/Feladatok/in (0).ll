define i32 @add_sub_constant(i32 %x) {
  %add1 = add nsw i32 %x, 1
  %add2 = add nsw i32 %add1, 1
  %sub = sub nsw i32 %add2, 2
  ret i32 %sub
}