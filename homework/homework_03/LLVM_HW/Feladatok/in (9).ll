define i32 @main() #0 {
  %loop_var = alloca i32  

  store i32 0, i32* %loop_var        

  br label %loop                     

loop:
  %current_value = load i32, i32* %loop_var 
  %two = add nsw i32 %current_value, 2 

  %condition = icmp slt i32 %current_value, 10 
  br i1 %condition, label %loop_exit, label %loop  

loop_exit:
  %final_value = load i32, i32* %loop_var 
  %result = add nsw i32 %final_value, 1 
  ret i32 %result                    
}