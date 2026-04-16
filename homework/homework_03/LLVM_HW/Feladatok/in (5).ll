define i32 @foo(i32 %a) {
    %loop_var = alloca i32, align 4  
    %constant_val = add nsw i32 %a, 10  

    store i32 0, i32* %loop_var
    br label %loop

    loop:
    %tmp = load i32, i32* %loop_var
    %cmp = icmp slt i32 %tmp, %a
    br i1 %cmp, label %then_block, label %exit_block

    then_block:
    
    %x = add nsw i32 %tmp, %constant_val
    store i32 %x, i32* %loop_var
    br label %loop

    exit_block:
    %loaded_val = load i32, i32* %loop_var
    ret i32 %loaded_val
}