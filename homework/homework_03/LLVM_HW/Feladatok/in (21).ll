define i32 @mul_by_two(i32 %x) {
%mul = shl nsw i32 %x, 1
%add = add nsw i32 %mul, %x ; This add is redundant with shl
ret i32 %add
}