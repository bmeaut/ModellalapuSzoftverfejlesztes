define void @myFunction(i1 %cond) {
entry:
  br i1 %cond, label %then, label %else

then:
  ret void

else:
  br label %endif

endif:
  ret void
}