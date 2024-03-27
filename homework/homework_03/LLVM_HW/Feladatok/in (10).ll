

define i32 @main() {
entry:
  %acc = alloca i32  
  store i32 0, i32* %acc        
  br label %loop

loop:
  %i = phi i32 [0, %entry], [%next, %loop]
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* @arr, i32 0, i32 %i
  %val = load i32, i32* %arrayidx 

  
  %mul = mul nsw i32 %val, 2     

  %next = add nsw i32 %i, 1
  %cmp = icmp slt i32 %next, 10
  br i1 %cmp, label %loop, label %exit

exit:
  %accval = load i32, i32* %acc  
  %add = add nsw i32 %accval, %mul 
  store i32 %add, i32* %acc       
  
  ret i32 0
}


@arr = global [10 x i32] zeroinitializer