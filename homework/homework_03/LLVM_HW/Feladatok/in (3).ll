define i32 @add_and_store(i32 %a, i32 %b) {
%sum = add nsw i32 %a, %b
%var_addr = alloca i32, align 4  
store i32 %sum, i32* %var_addr  
%loaded_value = load i32, i32* %var_addr 
ret i32 %loaded_value            
}