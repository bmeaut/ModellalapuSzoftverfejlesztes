define i32 @myFunction(i32 %x) {
entry:
  %tmp1 = add nsw i32 %x, 1 
  br i1 1, label %then, label %else

then:
  %tmp2 = add nsw i32 %tmp1, 2 
  ret i32 %tmp1

else:
  %tmp3 = sub nsw i32 %x, 1 
  ret i32 %x
}