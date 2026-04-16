define i32 @myFunction(i32 %x) {
entry:
  %tmp1 = add nsw i32 %x, 1
  %cond = icmp eq i32 %x, 0
  br i1 %cond, label %then, label %else

then:
  %tmp2 = add nsw i32 %tmp1, 2
  ret i32 %tmp2

else:
  %tmp3 = add nsw i32 %x, 1
  ret i32 %tmp3
}