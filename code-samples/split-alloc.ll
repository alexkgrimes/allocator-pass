; ModuleID = 'split-alloc.ll'
source_filename = "split-alloc.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Book = type { [50 x i8], [50 x i8], [100 x i8], i32 }
%struct.Bear = type { [50 x i8] }

@.str = private unnamed_addr constant [14 x i8] c"C Programming\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Nuha Ali\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"C Programming Tutorial\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"counter: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Big Bear\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Brown Bear\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Name: %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = zext i32 100 to i64
  %2 = call i8* @llvm.stacksave()
  %3 = alloca %struct.Book*, i64 %1, align 16
  br label %4

4:                                                ; preds = %23, %0
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %23 ], [ 0, %0 ]
  %exitcond6 = icmp ne i64 %indvars.iv4, 100
  br i1 %exitcond6, label %6, label %5

5:                                                ; preds = %4
  br label %24

6:                                                ; preds = %4
  %7 = call noalias i8* @malloc(i64 204) #2
  %8 = bitcast i8* %7 to %struct.Book*
  %9 = getelementptr inbounds %struct.Book, %struct.Book* %8, i32 0, i32 0
  %10 = getelementptr inbounds [50 x i8], [50 x i8]* %9, i64 0, i64 0
  %11 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %12 = call i8* @strcpy(i8* %10, i8* %11) #2
  %13 = getelementptr inbounds %struct.Book, %struct.Book* %8, i32 0, i32 1
  %14 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i64 0, i64 0
  %15 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %16 = call i8* @strcpy(i8* %14, i8* %15) #2
  %17 = getelementptr inbounds %struct.Book, %struct.Book* %8, i32 0, i32 2
  %18 = getelementptr inbounds [100 x i8], [100 x i8]* %17, i64 0, i64 0
  %19 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %20 = call i8* @strcpy(i8* %18, i8* %19) #2
  %21 = getelementptr inbounds %struct.Book, %struct.Book* %8, i32 0, i32 3
  store i32 6495407, i32* %21, align 4, !tbaa !2
  %22 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv4
  store %struct.Book* %8, %struct.Book** %22, align 8, !tbaa !7
  br label %23

23:                                               ; preds = %6
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  br label %4

24:                                               ; preds = %5
  br label %25

25:                                               ; preds = %29, %24
  %.02 = phi i32 [ 0, %24 ], [ %28, %29 ]
  %exitcond = icmp ne i32 %.02, 100
  br i1 %exitcond, label %27, label %26

26:                                               ; preds = %25
  br label %30

27:                                               ; preds = %25
  %28 = add nuw nsw i32 %.02, 1
  br label %29

29:                                               ; preds = %27
  br label %25

30:                                               ; preds = %26
  %31 = getelementptr [13 x i8], [13 x i8]* @.str.3, i64 0, i64 0
  %32 = call i32 (i8*, ...) @printf(i8* %31, i32 100)
  br label %33

33:                                               ; preds = %40, %30
  %indvars.iv = phi i64 [ %indvars.iv.next, %40 ], [ 99, %30 ]
  %34 = icmp sge i64 %indvars.iv, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %33
  br label %41

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv
  %38 = load %struct.Book*, %struct.Book** %37, align 8, !tbaa !7
  %39 = bitcast %struct.Book* %38 to i8*
  call void @free(i8* %39) #2
  br label %40

40:                                               ; preds = %36
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br label %33

41:                                               ; preds = %35
  %42 = call noalias i8* @malloc(i64 50) #2
  %43 = bitcast i8* %42 to %struct.Bear*
  %44 = getelementptr inbounds %struct.Bear, %struct.Bear* %43, i32 0, i32 0
  %45 = getelementptr inbounds [50 x i8], [50 x i8]* %44, i64 0, i64 0
  %46 = getelementptr [9 x i8], [9 x i8]* @.str.4, i64 0, i64 0
  %47 = call i8* @strcpy(i8* %45, i8* %46) #2
  %48 = call noalias i8* @malloc(i64 50) #2
  %49 = bitcast i8* %48 to %struct.Bear*
  %50 = getelementptr inbounds %struct.Bear, %struct.Bear* %49, i32 0, i32 0
  %51 = getelementptr inbounds [50 x i8], [50 x i8]* %50, i64 0, i64 0
  %52 = getelementptr [11 x i8], [11 x i8]* @.str.5, i64 0, i64 0
  %53 = call i8* @strcpy(i8* %51, i8* %52) #2
  %54 = getelementptr inbounds %struct.Bear, %struct.Bear* %49, i32 0, i32 0
  %55 = getelementptr inbounds [50 x i8], [50 x i8]* %54, i64 0, i64 0
  %56 = getelementptr [10 x i8], [10 x i8]* @.str.6, i64 0, i64 0
  %57 = call i32 (i8*, ...) @printf(i8* %56, i8* %55)
  call void @llvm.stackrestore(i8* %2)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.0 (git@github.com:scampanoni/LLVM_installer.git 713d2f6594d9a0b77e7f9a120aaa7c917715a640)"}
!2 = !{!3, !6, i64 200}
!3 = !{!"Book", !4, i64 0, !4, i64 50, !4, i64 100, !6, i64 200}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"int", !4, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !4, i64 0}
