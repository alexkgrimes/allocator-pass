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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @gen_random(double) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = load double, double* %2, align 8
  %4 = load i64, i64* @gen_random.last, align 8
  %5 = mul nsw i64 %4, 3877
  %6 = add nsw i64 %5, 29573
  %7 = srem i64 %6, 139968
  store i64 %7, i64* @gen_random.last, align 8
  %8 = sitofp i64 %7 to double
  %9 = fmul double %3, %8
  %10 = fdiv double %9, 1.399680e+05
  ret double %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @makeCumulative(%struct.aminoacids*, i32) #0 {
  %3 = alloca %struct.aminoacids*, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store %struct.aminoacids* %0, %struct.aminoacids** %3, align 8
  store i32 %1, i32* %4, align 4
  store double 0.000000e+00, double* %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %26, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %7
  %12 = load %struct.aminoacids*, %struct.aminoacids** %3, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.aminoacids, %struct.aminoacids* %12, i64 %14
  %16 = getelementptr inbounds %struct.aminoacids, %struct.aminoacids* %15, i32 0, i32 1
  %17 = load double, double* %16, align 8
  %18 = load double, double* %5, align 8
  %19 = fadd double %18, %17
  store double %19, double* %5, align 8
  %20 = load double, double* %5, align 8
  %21 = load %struct.aminoacids*, %struct.aminoacids** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.aminoacids, %struct.aminoacids* %21, i64 %23
  %25 = getelementptr inbounds %struct.aminoacids, %struct.aminoacids* %24, i32 0, i32 1
  store double %20, double* %25, align 8
  br label %26

26:                                               ; preds = %11
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %7

29:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @selectRandom(%struct.aminoacids*, i32) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.aminoacids*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.aminoacids* %0, %struct.aminoacids** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = call double @gen_random(double 1.000000e+00)
  store double %10, double* %6, align 8
  %11 = load double, double* %6, align 8
  %12 = load %struct.aminoacids*, %struct.aminoacids** %4, align 8
  %13 = getelementptr inbounds %struct.aminoacids, %struct.aminoacids* %12, i64 0
  %14 = getelementptr inbounds %struct.aminoacids, %struct.aminoacids* %13, i32 0, i32 1
  %15 = load double, double* %14, align 8
  %16 = fcmp olt double %11, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.aminoacids*, %struct.aminoacids** %4, align 8
  %19 = getelementptr inbounds %struct.aminoacids, %struct.aminoacids* %18, i64 0
  %20 = getelementptr inbounds %struct.aminoacids, %struct.aminoacids* %19, i32 0, i32 0
  %21 = load i8, i8* %20, align 8
  store i8 %21, i8* %3, align 1
  br label %55

22:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %47, %22
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 1
  %29 = icmp sgt i32 %26, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %31, %32
  %34 = sdiv i32 %33, 2
  store i32 %34, i32* %7, align 4
  %35 = load double, double* %6, align 8
  %36 = load %struct.aminoacids*, %struct.aminoacids** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.aminoacids, %struct.aminoacids* %36, i64 %38
  %40 = getelementptr inbounds %struct.aminoacids, %struct.aminoacids* %39, i32 0, i32 1
  %41 = load double, double* %40, align 8
  %42 = fcmp olt double %35, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %30
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %9, align 4
  br label %47

45:                                               ; preds = %30
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %45, %43
  br label %25

48:                                               ; preds = %25
  %49 = load %struct.aminoacids*, %struct.aminoacids** %4, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.aminoacids, %struct.aminoacids* %49, i64 %51
  %53 = getelementptr inbounds %struct.aminoacids, %struct.aminoacids* %52, i32 0, i32 0
  %54 = load i8, i8* %53, align 8
  store i8 %54, i8* %3, align 1
  br label %55

55:                                               ; preds = %48, %17
  %56 = load i8, i8* %3, align 1
  ret i8 %56
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @makeRandomFasta(i8*, i8*, %struct.aminoacids*, i32, i32) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.aminoacids*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [61 x i8], align 16
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.aminoacids* %2, %struct.aminoacids** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  store i32 %15, i32* %11, align 4
  br label %16

16:                                               ; preds = %44, %5
  %17 = load i32, i32* %11, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %16
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 60
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %13, align 4
  br label %25

24:                                               ; preds = %19
  store i32 60, i32* %13, align 4
  br label %25

25:                                               ; preds = %24, %22
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %37, %25
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load %struct.aminoacids*, %struct.aminoacids** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call signext i8 @selectRandom(%struct.aminoacids* %31, i32 %32)
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [61 x i8], [61 x i8]* %14, i64 0, i64 %35
  store i8 %33, i8* %36, align 1
  br label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %12, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %12, align 4
  br label %26

40:                                               ; preds = %26
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [61 x i8], [61 x i8]* %14, i64 0, i64 %42
  store i8 0, i8* %43, align 1
  br label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %11, align 4
  %46 = sub nsw i32 %45, 60
  store i32 %46, i32* %11, align 4
  br label %16

47:                                               ; preds = %16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @makeRepeatFasta(i8*, i8*, i8*, i32) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @strlen(i8* %15)
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = call i8* @dlmalloc(i64 %20)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %12, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %22, i8* align 1 %23, i64 %26, i1 false)
  br label %27

27:                                               ; preds = %72, %4
  %28 = load i32, i32* %10, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %75

30:                                               ; preds = %27
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 60
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %13, align 4
  br label %36

35:                                               ; preds = %30
  store i32 60, i32* %13, align 4
  br label %36

36:                                               ; preds = %35, %33
  br label %37

37:                                               ; preds = %43, %36
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %11, align 4
  %41 = sub nsw i32 %39, %40
  %42 = icmp sge i32 %38, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %11, align 4
  %46 = sub nsw i32 %44, %45
  %47 = load i32, i32* %13, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %37

49:                                               ; preds = %37
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %50, i64 %54
  store i8 0, i8* %55, align 1
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %56, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = load i8*, i8** %9, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %63, i64 %67
  store i8 %62, i8* %68, align 1
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %49
  %73 = load i32, i32* %10, align 4
  %74 = sub nsw i32 %73, 60
  store i32 %74, i32* %10, align 4
  br label %27

75:                                               ; preds = %27
  %76 = load i8*, i8** %9, align 8
  call void @dlfree(i8* %76)
  ret void
}

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 25000000, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %._crit_edge

._crit_edge:                                      ; preds = %2
  br label %15

9:                                                ; preds = %2
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 1
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr [3 x i8], [3 x i8]* @.str.1, i64 0, i64 0
  %14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %12, i8* %13, i32* %6) #4
  br label %15

15:                                               ; preds = %._crit_edge, %9
  %16 = getelementptr [15 x %struct.aminoacids], [15 x %struct.aminoacids]* @iub, i64 0, i64 0
  call void @makeCumulative(%struct.aminoacids* %16, i32 15)
  %17 = getelementptr [4 x %struct.aminoacids], [4 x %struct.aminoacids]* @homosapiens, i64 0, i64 0
  call void @makeCumulative(%struct.aminoacids* %17, i32 4)
  %18 = load i8*, i8** @alu, align 8
  %19 = load i32, i32* %6, align 4
  %20 = mul nsw i32 %19, 2
  %21 = getelementptr [4 x i8], [4 x i8]* @.str.2, i64 0, i64 0
  %22 = getelementptr [17 x i8], [17 x i8]* @.str.3, i64 0, i64 0
  call void @makeRepeatFasta(i8* %21, i8* %22, i8* %18, i32 %20)
  %23 = load i32, i32* %6, align 4
  %24 = mul nsw i32 %23, 3
  %25 = getelementptr [4 x i8], [4 x i8]* @.str.4, i64 0, i64 0
  %26 = getelementptr [20 x i8], [20 x i8]* @.str.5, i64 0, i64 0
  %27 = getelementptr [15 x %struct.aminoacids], [15 x %struct.aminoacids]* @iub, i64 0, i64 0
  call void @makeRandomFasta(i8* %25, i8* %26, %struct.aminoacids* %27, i32 15, i32 %24)
  %28 = load i32, i32* %6, align 4
  %29 = mul nsw i32 %28, 5
  %30 = getelementptr [6 x i8], [6 x i8]* @.str.6, i64 0, i64 0
  %31 = getelementptr [23 x i8], [23 x i8]* @.str.7, i64 0, i64 0
  %32 = getelementptr [4 x %struct.aminoacids], [4 x %struct.aminoacids]* @homosapiens, i64 0, i64 0
  call void @makeRandomFasta(i8* %30, i8* %31, %struct.aminoacids* %32, i32 4, i32 %29)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare i8* @dlmalloc(i64)

declare void @dlfree(i8*)

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.0 (git@github.com:scampanoni/LLVM_installer.git 713d2f6594d9a0b77e7f9a120aaa7c917715a640)"}
