define i32 @add_and_store(i32 %arg) {
    %var = alloca i32, align 4  
    store i32 %arg, i32* %var, align 4  
    %tmp1 = load i32, i32* %var, align 4  
    %add = add nsw i32 %tmp1, 1  
    store i32 %add, i32* %var, align 4  
    %tmp2 = load i32, i32* %var, align 4  
    ret i32 %tmp2  
}