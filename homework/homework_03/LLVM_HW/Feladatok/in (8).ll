
define i32 @foo() {

entry:
  br label %for.body


for.body:                                         
  %i.02 = phi i32 [ 0, %entry ], [ %next, %for.body ]
  %0 = zext nneg i32 %i.02 to i64
  %elemptr = getelementptr inbounds [4 x i32], ptr @arr, i64 0, i64 %0
  %elem = load i32, ptr %elemptr, align 4
  %add = add nsw i32 %elem, 1
  store i32 %add, ptr %elemptr, align 4
  %next = add nuw nsw i32 %i.02, 1
  %cmp = icmp ult i32 %i.02, 3
  br i1 %cmp, label %for.body, label %exit


exit:                                             
  ret i32 4
}

@arr = global [4 x i32] zeroinitializer