; ModuleID = 'fasta.ll'
source_filename = "../code-samples/fasta.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aminoacids = type { i8, double }

@gen_random.last = internal global i64 42, align 8
@iub = dso_local global [15 x %struct.aminoacids] [%struct.aminoacids { i8 97, double 2.700000e-01 }, %struct.aminoacids { i8 99, double 1.200000e-01 }, %struct.aminoacids { i8 103, double 1.200000e-01 }, %struct.aminoacids { i8 116, double 2.700000e-01 }, %struct.aminoacids { i8 66, double 2.000000e-02 }, %struct.aminoacids { i8 68, double 2.000000e-02 }, %struct.aminoacids { i8 72, double 2.000000e-02 }, %struct.aminoacids { i8 75, double 2.000000e-02 }, %struct.aminoacids { i8 77, double 2.000000e-02 }, %struct.aminoacids { i8 78, double 2.000000e-02 }, %struct.aminoacids { i8 82, double 2.000000e-02 }, %struct.aminoacids { i8 83, double 2.000000e-02 }, %struct.aminoacids { i8 86, double 2.000000e-02 }, %struct.aminoacids { i8 87, double 2.000000e-02 }, %struct.aminoacids { i8 89, double 2.000000e-02 }], align 16
@homosapiens = dso_local global [4 x %struct.aminoacids] [%struct.aminoacids { i8 97, double 0x3FD3639D20BAEB5B }, %struct.aminoacids { i8 99, double 0x3FC957AE3DCD561B }, %struct.aminoacids { i8 103, double 0x3FC9493AEAB6C2BF }, %struct.aminoacids { i8 116, double 0x3FD34BEE4B030838 }], align 16
@.str = private unnamed_addr constant [288 x i8] c"GGCCGGGCGCGGTGGCTCACGCCTGTAATCCCAGCACTTTGGGAGGCCGAGGCGGGCGGATCACCTGAGGTCAGGAGTTCGAGACCAGCCTGGCCAACATGGTGAAACCCCGTCTCTACTAAAAATACAAAAATTAGCCGGGCGTGGTGGCGCGCGCCTGTAATCCCAGCTACTCGGGAGGCTGAGGCAGGAGAATCGCTTGAACCCGGGAGGCGGAGGTTGCAGTGAGCCGAGATCGCGCCACTGCACTCCAGCCTGGGCGACAGAGCGAGACTCCGTCTCAAAAA\00", align 1
@alu = dso_local global i8* getelementptr inbounds ([288 x i8], [288 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ONE\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Homo sapiens alu\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"TWO\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"IUB ambiguity codes\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"THREE\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Homo sapiens frequency\00", align 1

; Function Attrs: nounwind uwtable
define dso_local double @gen_random(double) #0 {
  %2 = load i64, i64* @gen_random.last, align 8, !tbaa !2
  %3 = mul nsw i64 %2, 3877
  %4 = add nsw i64 %3, 29573
  %5 = srem i64 %4, 139968
  store i64 %5, i64* @gen_random.last, align 8, !tbaa !2
  %6 = sitofp i64 %5 to double
  %7 = fmul double %0, %6
  %8 = fdiv double %7, 1.399680e+05
  ret double %8
}

; Function Attrs: nounwind uwtable
define dso_local void @makeCumulative(%struct.aminoacids*, i32) #0 {
  %3 = sext i32 %1 to i64
  br label %4

4:                                                ; preds = %13, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %13 ], [ 0, %2 ]
  %.01 = phi double [ 0.000000e+00, %2 ], [ %10, %13 ]
  %5 = icmp slt i64 %indvars.iv, %3
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.aminoacids, %struct.aminoacids* %0, i64 %indvars.iv
  %8 = getelementptr inbounds %struct.aminoacids, %struct.aminoacids* %7, i32 0, i32 1
  %9 = load double, double* %8, align 8, !tbaa !6
  %10 = fadd double %.01, %9
  %11 = getelementptr inbounds %struct.aminoacids, %struct.aminoacids* %0, i64 %indvars.iv
  %12 = getelementptr inbounds %struct.aminoacids, %struct.aminoacids* %11, i32 0, i32 1
  store double %10, double* %12, align 8, !tbaa !6
  br label %13

13:                                               ; preds = %6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4

14:                                               ; preds = %4
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local signext i8 @selectRandom(%struct.aminoacids*, i32) #0 {
  %3 = call double @gen_random(double 1.000000e+00)
  %4 = getelementptr inbounds %struct.aminoacids, %struct.aminoacids* %0, i64 0
  %5 = getelementptr inbounds %struct.aminoacids, %struct.aminoacids* %4, i32 0, i32 1
  %6 = load double, double* %5, align 8, !tbaa !6
  %7 = fcmp olt double %3, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.aminoacids, %struct.aminoacids* %0, i64 0
  %10 = getelementptr inbounds %struct.aminoacids, %struct.aminoacids* %9, i32 0, i32 0
  %11 = load i8, i8* %10, align 8, !tbaa !9
  br label %33

12:                                               ; preds = %2
  %13 = sub nsw i32 %1, 1
  br label %14

14:                                               ; preds = %27, %12
  %.02 = phi i32 [ 0, %12 ], [ %.13, %27 ]
  %.01 = phi i32 [ %13, %12 ], [ %.1, %27 ]
  %15 = add nsw i32 %.02, 1
  %16 = icmp sgt i32 %.01, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = add nsw i32 %.01, %.02
  %19 = sdiv i32 %18, 2
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.aminoacids, %struct.aminoacids* %0, i64 %20
  %22 = getelementptr inbounds %struct.aminoacids, %struct.aminoacids* %21, i32 0, i32 1
  %23 = load double, double* %22, align 8, !tbaa !6
  %24 = fcmp olt double %3, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %27

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26, %25
  %.13 = phi i32 [ %.02, %25 ], [ %19, %26 ]
  %.1 = phi i32 [ %19, %25 ], [ %.01, %26 ]
  br label %14

28:                                               ; preds = %14
  %.01.lcssa = phi i32 [ %.01, %14 ]
  %29 = sext i32 %.01.lcssa to i64
  %30 = getelementptr inbounds %struct.aminoacids, %struct.aminoacids* %0, i64 %29
  %31 = getelementptr inbounds %struct.aminoacids, %struct.aminoacids* %30, i32 0, i32 0
  %32 = load i8, i8* %31, align 8, !tbaa !9
  br label %33

33:                                               ; preds = %28, %8
  %.0 = phi i8 [ %11, %8 ], [ %32, %28 ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @makeRandomFasta(i8*, i8*, %struct.aminoacids*, i32, i32) #0 {
  %6 = alloca [61 x i8], align 16
  br label %7

7:                                                ; preds = %26, %5
  %.02 = phi i32 [ %4, %5 ], [ %27, %26 ]
  %8 = icmp sgt i32 %.02, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %7
  %10 = bitcast [61 x i8]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 61, i8* %10) #4
  %11 = icmp slt i32 %.02, 60
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %14

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %13, %12
  %.0 = phi i32 [ %.02, %12 ], [ 60, %13 ]
  %15 = sext i32 %.0 to i64
  br label %16

16:                                               ; preds = %21, %14
  %indvars.iv = phi i64 [ %indvars.iv.next, %21 ], [ 0, %14 ]
  %17 = icmp slt i64 %indvars.iv, %15
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = call signext i8 @selectRandom(%struct.aminoacids* %2, i32 %3)
  %20 = getelementptr inbounds [61 x i8], [61 x i8]* %6, i64 0, i64 %indvars.iv
  store i8 %19, i8* %20, align 1, !tbaa !10
  br label %21

21:                                               ; preds = %18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %16

22:                                               ; preds = %16
  %23 = sext i32 %.0 to i64
  %24 = getelementptr inbounds [61 x i8], [61 x i8]* %6, i64 0, i64 %23
  store i8 0, i8* %24, align 1, !tbaa !10
  %25 = bitcast [61 x i8]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 61, i8* %25) #4
  br label %26

26:                                               ; preds = %22
  %27 = sub nsw i32 %.02, 60
  br label %7

28:                                               ; preds = %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @makeRepeatFasta(i8*, i8*, i8*, i32) #0 {
  %5 = call i64 @strlen(i8* %2)
  %6 = trunc i64 %5 to i32
  %7 = add nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = call noalias i8* @malloc(i64 %8) #4
  %10 = add nsw i32 %6, 1
  %11 = sext i32 %10 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %2, i64 %11, i1 false)
  br label %12

12:                                               ; preds = %37, %4
  %.03 = phi i32 [ %3, %4 ], [ %38, %37 ]
  %.01 = phi i32 [ 0, %4 ], [ %36, %37 ]
  %13 = icmp sgt i32 %.03, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %12
  %15 = icmp slt i32 %.03, 60
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  br label %18

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %17, %16
  %.0 = phi i32 [ %.03, %16 ], [ 60, %17 ]
  br label %19

19:                                               ; preds = %22, %18
  %.12 = phi i32 [ %.01, %18 ], [ 0, %22 ]
  %.1 = phi i32 [ %.0, %18 ], [ %24, %22 ]
  %20 = sub nsw i32 %6, %.12
  %21 = icmp sge i32 %.1, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = sub nsw i32 %6, %.12
  %24 = sub nsw i32 %.1, %23
  br label %19

25:                                               ; preds = %19
  %.12.lcssa = phi i32 [ %.12, %19 ]
  %.1.lcssa = phi i32 [ %.1, %19 ]
  %26 = add nsw i32 %.12.lcssa, %.1.lcssa
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %9, i64 %27
  store i8 0, i8* %28, align 1, !tbaa !10
  %29 = add nsw i32 %.1.lcssa, %.12.lcssa
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %2, i64 %30
  %32 = load i8, i8* %31, align 1, !tbaa !10
  %33 = add nsw i32 %.12.lcssa, %.1.lcssa
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %9, i64 %34
  store i8 %32, i8* %35, align 1, !tbaa !10
  %36 = add nsw i32 %.12.lcssa, %.1.lcssa
  br label %37

37:                                               ; preds = %25
  %38 = sub nsw i32 %.03, 60
  br label %12

39:                                               ; preds = %12
  call void @free(i8* %9) #4
  ret void
}

declare dso_local i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4
  store i32 25000000, i32* %3, align 4, !tbaa !11
  %5 = icmp sgt i32 %0, 1
  br i1 %5, label %6, label %._crit_edge

._crit_edge:                                      ; preds = %2
  br label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8*, i8** %1, i64 1
  %8 = load i8*, i8** %7, align 8, !tbaa !13
  %9 = getelementptr [3 x i8], [3 x i8]* @.str.1, i64 0, i64 0
  %10 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %8, i8* %9, i32* %3) #4
  br label %11

11:                                               ; preds = %._crit_edge, %6
  %12 = getelementptr [15 x %struct.aminoacids], [15 x %struct.aminoacids]* @iub, i64 0, i64 0
  call void @makeCumulative(%struct.aminoacids* %12, i32 15)
  %13 = getelementptr [4 x %struct.aminoacids], [4 x %struct.aminoacids]* @homosapiens, i64 0, i64 0
  call void @makeCumulative(%struct.aminoacids* %13, i32 4)
  %14 = load i8*, i8** @alu, align 8, !tbaa !13
  %15 = load i32, i32* %3, align 4, !tbaa !11
  %16 = mul nsw i32 %15, 2
  %17 = getelementptr [4 x i8], [4 x i8]* @.str.2, i64 0, i64 0
  %18 = getelementptr [17 x i8], [17 x i8]* @.str.3, i64 0, i64 0
  call void @makeRepeatFasta(i8* %17, i8* %18, i8* %14, i32 %16)
  %19 = load i32, i32* %3, align 4, !tbaa !11
  %20 = mul nsw i32 %19, 3
  %21 = getelementptr [4 x i8], [4 x i8]* @.str.4, i64 0, i64 0
  %22 = getelementptr [20 x i8], [20 x i8]* @.str.5, i64 0, i64 0
  %23 = getelementptr [15 x %struct.aminoacids], [15 x %struct.aminoacids]* @iub, i64 0, i64 0
  call void @makeRandomFasta(i8* %21, i8* %22, %struct.aminoacids* %23, i32 15, i32 %20)
  %24 = load i32, i32* %3, align 4, !tbaa !11
  %25 = mul nsw i32 %24, 5
  %26 = getelementptr [6 x i8], [6 x i8]* @.str.6, i64 0, i64 0
  %27 = getelementptr [23 x i8], [23 x i8]* @.str.7, i64 0, i64 0
  %28 = getelementptr [4 x %struct.aminoacids], [4 x %struct.aminoacids]* @homosapiens, i64 0, i64 0
  call void @makeRandomFasta(i8* %26, i8* %27, %struct.aminoacids* %28, i32 4, i32 %25)
  %29 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #4
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #3

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.0 (git@github.com:scampanoni/LLVM_installer.git 713d2f6594d9a0b77e7f9a120aaa7c917715a640)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"long", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !8, i64 8}
!7 = !{!"aminoacids", !4, i64 0, !8, i64 8}
!8 = !{!"double", !4, i64 0}
!9 = !{!7, !4, i64 0}
!10 = !{!4, !4, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !4, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !4, i64 0}
