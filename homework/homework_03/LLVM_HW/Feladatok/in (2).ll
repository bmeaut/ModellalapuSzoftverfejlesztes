define i32 @add_and_store(i32 %a) {
%b = alloca i32, align 4  
store i32 %a, i32* %b, align 4  
%tmp1 = load i32, i32* %b, align 4 
%add_result = add nsw i32 %tmp1, 1  
store i32 %add_result, i32* %b, align 4 
ret i32 %add_result  
}