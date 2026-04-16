define dso_local noundef i64 @asdf(i64 noundef %n){
entry:
  %n.addr = alloca i64, align 8
  %res = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  store i64 1, ptr %res, align 8
  %0 = load i64, ptr %res, align 8
  %sub = sub nsw i64 %0, 4
  store i64 %sub, ptr %res, align 8
  store i64 42, ptr %res, align 8
  %1 = load i64, ptr %res, align 8
  %2 = load i64, ptr %n.addr, align 8
  %add = add nsw i64 %1, %2
  ret i64 %add
}