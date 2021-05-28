; ModuleID = 'stack-sample.ll'
source_filename = "stack-sample.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Book = type { [50 x i8], [50 x i8], [100 x i8], i32, double }

@.str = private unnamed_addr constant [14 x i8] c"C Programming\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Nuha Ali\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"C Programming Tutorial\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"average rating: %f\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Big Bear\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Brown Bear\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Name: %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca [200 x %struct.Book*], align 16
  br label %.preheader2

.preheader2:                                      ; preds = %0, %47
  %.048 = phi i64 [ 0, %0 ], [ %42, %47 ]
  %indvars.iv107 = phi i64 [ 0, %0 ], [ %indvars.iv.next11, %47 ]
  br label %2

2:                                                ; preds = %.preheader2, %2
  %indvars.iv3 = phi i64 [ 0, %.preheader2 ], [ %indvars.iv.next, %2 ]
  %3 = tail call i8* @allocate(i64 216) #4
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 14, i1 false)
  %4 = getelementptr inbounds i8, i8* %3, i64 50
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 9, i1 false)
  %5 = getelementptr inbounds i8, i8* %3, i64 100
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %5, i8* align 1 getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 23, i1 false)
  %6 = getelementptr inbounds i8, i8* %3, i64 200
  %7 = bitcast i8* %6 to i32*
  store i32 6495407, i32* %7, align 8, !tbaa !2
  %8 = tail call i32 @rand() #4
  %9 = srem i32 %8, 5
  %10 = sitofp i32 %9 to double
  %11 = getelementptr inbounds i8, i8* %3, i64 208
  %12 = bitcast i8* %11 to double*
  store double %10, double* %12, align 8, !tbaa !8
  %13 = getelementptr inbounds [200 x %struct.Book*], [200 x %struct.Book*]* %1, i64 0, i64 %indvars.iv3
  %14 = bitcast %struct.Book** %13 to i8**
  store i8* %3, i8** %14, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 200
  br i1 %exitcond, label %.preheader1, label %2

.preheader1:                                      ; preds = %2, %.preheader1
  %.15 = phi i64 [ %42, %.preheader1 ], [ %.048, %2 ]
  %indvars.iv54 = phi i64 [ %indvars.iv.next6.3, %.preheader1 ], [ 0, %2 ]
  %15 = getelementptr inbounds [200 x %struct.Book*], [200 x %struct.Book*]* %1, i64 0, i64 %indvars.iv54
  %16 = load %struct.Book*, %struct.Book** %15, align 16, !tbaa !9
  %17 = getelementptr inbounds %struct.Book, %struct.Book* %16, i64 0, i32 4
  %18 = load double, double* %17, align 8, !tbaa !8
  %19 = sitofp i64 %.15 to double
  %20 = fadd double %18, %19
  %21 = fptosi double %20 to i64
  %indvars.iv.next6 = or i64 %indvars.iv54, 1
  %22 = getelementptr inbounds [200 x %struct.Book*], [200 x %struct.Book*]* %1, i64 0, i64 %indvars.iv.next6
  %23 = load %struct.Book*, %struct.Book** %22, align 8, !tbaa !9
  %24 = getelementptr inbounds %struct.Book, %struct.Book* %23, i64 0, i32 4
  %25 = load double, double* %24, align 8, !tbaa !8
  %26 = sitofp i64 %21 to double
  %27 = fadd double %25, %26
  %28 = fptosi double %27 to i64
  %indvars.iv.next6.1 = or i64 %indvars.iv54, 2
  %29 = getelementptr inbounds [200 x %struct.Book*], [200 x %struct.Book*]* %1, i64 0, i64 %indvars.iv.next6.1
  %30 = load %struct.Book*, %struct.Book** %29, align 16, !tbaa !9
  %31 = getelementptr inbounds %struct.Book, %struct.Book* %30, i64 0, i32 4
  %32 = load double, double* %31, align 8, !tbaa !8
  %33 = sitofp i64 %28 to double
  %34 = fadd double %32, %33
  %35 = fptosi double %34 to i64
  %indvars.iv.next6.2 = or i64 %indvars.iv54, 3
  %36 = getelementptr inbounds [200 x %struct.Book*], [200 x %struct.Book*]* %1, i64 0, i64 %indvars.iv.next6.2
  %37 = load %struct.Book*, %struct.Book** %36, align 8, !tbaa !9
  %38 = getelementptr inbounds %struct.Book, %struct.Book* %37, i64 0, i32 4
  %39 = load double, double* %38, align 8, !tbaa !8
  %40 = sitofp i64 %35 to double
  %41 = fadd double %39, %40
  %42 = fptosi double %41 to i64
  %indvars.iv.next6.3 = add nuw nsw i64 %indvars.iv54, 4
  %exitcond7.3 = icmp eq i64 %indvars.iv.next6.3, 200
  br i1 %exitcond7.3, label %.preheader, label %.preheader1

.preheader:                                       ; preds = %.preheader1, %.preheader
  %indvars.iv86 = phi i64 [ %indvars.iv.next9, %.preheader ], [ 199, %.preheader1 ]
  %43 = getelementptr inbounds [200 x %struct.Book*], [200 x %struct.Book*]* %1, i64 0, i64 %indvars.iv86
  %44 = bitcast %struct.Book** %43 to i8**
  %45 = load i8*, i8** %44, align 8, !tbaa !9
  tail call void @deallocate(i8* %45) #4
  %indvars.iv.next9 = add nsw i64 %indvars.iv86, -1
  %46 = icmp eq i64 %indvars.iv86, 0
  br i1 %46, label %47, label %.preheader

47:                                               ; preds = %.preheader
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv107, 1
  %exitcond12 = icmp eq i64 %indvars.iv.next11, 1000000
  br i1 %exitcond12, label %48, label %.preheader2

48:                                               ; preds = %47
  %49 = sdiv i64 %42, 1000200
  %50 = sitofp i64 %49 to double
  %51 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), double %50)
  %52 = tail call i8* @allocate(i64 50) #4
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %52, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 9, i1 false)
  %53 = tail call i8* @allocate(i64 50) #4
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %53, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64 11, i1 false)
  %54 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %53)
  %55 = tail call i8* @allocate(i64 8) #4
  %56 = bitcast i8* %55 to i32*
  store i32 86, i32* %56, align 4, !tbaa !11
  tail call void @deallocate(i8* %55) #4
  tail call void @deallocate(i8* %52) #4
  tail call void @deallocate(i8* %53) #4
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @rand() local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

declare i8* @allocate(i64) local_unnamed_addr

declare void @deallocate(i8*) local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.0 (git@github.com:scampanoni/LLVM_installer.git 713d2f6594d9a0b77e7f9a120aaa7c917715a640)"}
!2 = !{!3, !6, i64 200}
!3 = !{!"Book", !4, i64 0, !4, i64 50, !4, i64 100, !6, i64 200, !7, i64 208}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"int", !4, i64 0}
!7 = !{!"double", !4, i64 0}
!8 = !{!3, !7, i64 208}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!6, !6, i64 0}
