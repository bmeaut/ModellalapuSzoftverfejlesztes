define dso_local noundef i32 @add(i32 noundef %num) {
entry:
  %num.addr = alloca i32, align 4
  store i32 %num, ptr %num.addr, align 4
  %0 = load i32, ptr %num.addr, align 4
  %1 = load i32, ptr %num.addr, align 4
  %add = add nsw i32 %0, %1
  ret i32 %add
}