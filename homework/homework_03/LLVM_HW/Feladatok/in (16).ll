%struct.vec4 = type { i64, i64, i64, i64 }

define dso_local noundef i64 @asdf(i64 noundef %n){
entry:
  %n.addr = alloca i64, align 8
  %res = alloca %struct.vec4, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %res, i8 0, i64 32, i1 false)
  %x = getelementptr inbounds %struct.vec4, ptr %res, i32 0, i32 0
  %0 = load i64, ptr %x, align 8
  %sub = sub nsw i64 %0, 4
  store i64 %sub, ptr %x, align 8
  %y = getelementptr inbounds %struct.vec4, ptr %res, i32 0, i32 1
  store i64 42, ptr %y, align 8
  %x1 = getelementptr inbounds %struct.vec4, ptr %res, i32 0, i32 0
  %1 = load i64, ptr %x1, align 8
  %y2 = getelementptr inbounds %struct.vec4, ptr %res, i32 0, i32 1
  %2 = load i64, ptr %y2, align 8
  %add = add nsw i64 %1, %2
  ret i64 %add
}