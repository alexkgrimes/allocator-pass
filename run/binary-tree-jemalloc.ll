; ModuleID = 'binary-tree.ll'
source_filename = "../code-samples/binary-tree.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.node = type { %struct.node*, %struct.node* }
%struct.worker_args = type { i64, i64, i32, i64, %struct.worker_args* }
%union.pthread_attr_t = type { i64, [48 x i8] }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [17 x i8] c"Wrong argument.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"stretch tree of depth %u\09 check: %li\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"%ld\09 trees of depth %d\09 check: %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"long lived tree of depth %d\09 check: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.node*, align 8
  %8 = alloca %struct.worker_args*, align 8
  %9 = alloca %struct.worker_args*, align 8
  %10 = alloca %struct.worker_args*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @atoi(i8* %21) #5
  br label %24

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23, %18
  %25 = phi i32 [ %22, %18 ], [ 24, %23 ]
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = getelementptr [17 x i8], [17 x i8]* @.str, i64 0, i64 0
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* %30)
  call void @exit(i32 1) #6
  unreachable

32:                                               ; preds = %24
  store i32 4, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = add nsw i32 %33, 2
  %35 = load i32, i32* %11, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %38, 2
  br label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %11, align 4
  br label %42

42:                                               ; preds = %40, %37
  %43 = phi i32 [ %39, %37 ], [ %41, %40 ]
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = call %struct.node* @bottom_up_tree(i32 %46)
  store %struct.node* %47, %struct.node** %6, align 8
  %48 = load i32, i32* %15, align 4
  %49 = load %struct.node*, %struct.node** %6, align 8
  %50 = call i64 @item_check(%struct.node* %49)
  %51 = getelementptr [38 x i8], [38 x i8]* @.str.1, i64 0, i64 0
  %52 = call i32 (i8*, ...) @printf(i8* %51, i32 %48, i64 %50)
  %53 = load %struct.node*, %struct.node** %6, align 8
  call void @delete_tree(%struct.node* %53)
  %54 = load i32, i32* %14, align 4
  %55 = call %struct.node* @bottom_up_tree(i32 %54)
  store %struct.node* %55, %struct.node** %7, align 8
  store %struct.worker_args* null, %struct.worker_args** %10, align 8
  store %struct.worker_args* null, %struct.worker_args** %9, align 8
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %94, %42
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %97

61:                                               ; preds = %57
  %62 = call i8* @jemalloc(i64 40)
  %63 = bitcast i8* %62 to %struct.worker_args*
  store %struct.worker_args* %63, %struct.worker_args** %8, align 8
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %12, align 4
  %66 = sub nsw i32 %64, %65
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 %66, %67
  %69 = shl i32 1, %68
  %70 = sext i32 %69 to i64
  %71 = load %struct.worker_args*, %struct.worker_args** %8, align 8
  %72 = getelementptr inbounds %struct.worker_args, %struct.worker_args* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.worker_args*, %struct.worker_args** %8, align 8
  %75 = getelementptr inbounds %struct.worker_args, %struct.worker_args* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.worker_args*, %struct.worker_args** %8, align 8
  %77 = getelementptr inbounds %struct.worker_args, %struct.worker_args* %76, i32 0, i32 4
  store %struct.worker_args* null, %struct.worker_args** %77, align 8
  %78 = load %struct.worker_args*, %struct.worker_args** %9, align 8
  %79 = icmp eq %struct.worker_args* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %61
  %81 = load %struct.worker_args*, %struct.worker_args** %8, align 8
  store %struct.worker_args* %81, %struct.worker_args** %10, align 8
  %82 = load %struct.worker_args*, %struct.worker_args** %8, align 8
  store %struct.worker_args* %82, %struct.worker_args** %9, align 8
  br label %88

83:                                               ; preds = %61
  %84 = load %struct.worker_args*, %struct.worker_args** %8, align 8
  %85 = load %struct.worker_args*, %struct.worker_args** %9, align 8
  %86 = getelementptr inbounds %struct.worker_args, %struct.worker_args* %85, i32 0, i32 4
  store %struct.worker_args* %84, %struct.worker_args** %86, align 8
  %87 = load %struct.worker_args*, %struct.worker_args** %8, align 8
  store %struct.worker_args* %87, %struct.worker_args** %9, align 8
  br label %88

88:                                               ; preds = %83, %80
  %89 = load %struct.worker_args*, %struct.worker_args** %8, align 8
  %90 = getelementptr inbounds %struct.worker_args, %struct.worker_args* %89, i32 0, i32 3
  %91 = load %struct.worker_args*, %struct.worker_args** %8, align 8
  %92 = bitcast %struct.worker_args* %91 to i8*
  %93 = call i32 @pthread_create(i64* %90, %union.pthread_attr_t* null, i8* (i8*)* @check_tree_of_depth, i8* %92) #7
  br label %94

94:                                               ; preds = %88
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 2
  store i32 %96, i32* %12, align 4
  br label %57

97:                                               ; preds = %57
  br label %98

98:                                               ; preds = %101, %97
  %99 = load %struct.worker_args*, %struct.worker_args** %10, align 8
  %100 = icmp ne %struct.worker_args* %99, null
  br i1 %100, label %101, label %123

101:                                              ; preds = %98
  %102 = load %struct.worker_args*, %struct.worker_args** %10, align 8
  store %struct.worker_args* %102, %struct.worker_args** %8, align 8
  %103 = load %struct.worker_args*, %struct.worker_args** %8, align 8
  %104 = getelementptr inbounds %struct.worker_args, %struct.worker_args* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @pthread_join(i64 %105, i8** null)
  %107 = load %struct.worker_args*, %struct.worker_args** %8, align 8
  %108 = getelementptr inbounds %struct.worker_args, %struct.worker_args* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.worker_args*, %struct.worker_args** %8, align 8
  %111 = getelementptr inbounds %struct.worker_args, %struct.worker_args* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.worker_args*, %struct.worker_args** %8, align 8
  %114 = getelementptr inbounds %struct.worker_args, %struct.worker_args* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr [36 x i8], [36 x i8]* @.str.2, i64 0, i64 0
  %117 = call i32 (i8*, ...) @printf(i8* %116, i64 %109, i32 %112, i64 %115)
  %118 = load %struct.worker_args*, %struct.worker_args** %8, align 8
  %119 = getelementptr inbounds %struct.worker_args, %struct.worker_args* %118, i32 0, i32 4
  %120 = load %struct.worker_args*, %struct.worker_args** %119, align 8
  store %struct.worker_args* %120, %struct.worker_args** %10, align 8
  %121 = load %struct.worker_args*, %struct.worker_args** %8, align 8
  %122 = bitcast %struct.worker_args* %121 to i8*
  call void @jefree(i8* %122)
  br label %98

123:                                              ; preds = %98
  %124 = load i32, i32* %14, align 4
  %125 = load %struct.node*, %struct.node** %7, align 8
  %126 = call i64 @item_check(%struct.node* %125)
  %127 = getelementptr [41 x i8], [41 x i8]* @.str.3, i64 0, i64 0
  %128 = call i32 (i8*, ...) @printf(i8* %127, i32 %124, i64 %126)
  %129 = load %struct.node*, %struct.node** %7, align 8
  call void @delete_tree(%struct.node* %129)
  ret i32 0
}

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.node* @bottom_up_tree(i32) #0 {
  %2 = alloca %struct.node*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = sub nsw i32 %7, 1
  %9 = call %struct.node* @bottom_up_tree(i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = sub nsw i32 %10, 1
  %12 = call %struct.node* @bottom_up_tree(i32 %11)
  %13 = call %struct.node* @new_node(%struct.node* %9, %struct.node* %12)
  store %struct.node* %13, %struct.node** %2, align 8
  br label %16

14:                                               ; preds = %1
  %15 = call %struct.node* @new_node(%struct.node* null, %struct.node* null)
  store %struct.node* %15, %struct.node** %2, align 8
  br label %16

16:                                               ; preds = %14, %6
  %17 = load %struct.node*, %struct.node** %2, align 8
  ret %struct.node* %17
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @item_check(%struct.node*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %3, align 8
  %4 = load %struct.node*, %struct.node** %3, align 8
  %5 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 0
  %6 = load %struct.node*, %struct.node** %5, align 8
  %7 = icmp eq %struct.node* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i64 1, i64* %2, align 8
  br label %20

9:                                                ; preds = %1
  %10 = load %struct.node*, %struct.node** %3, align 8
  %11 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 0
  %12 = load %struct.node*, %struct.node** %11, align 8
  %13 = call i64 @item_check(%struct.node* %12)
  %14 = add nsw i64 1, %13
  %15 = load %struct.node*, %struct.node** %3, align 8
  %16 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 1
  %17 = load %struct.node*, %struct.node** %16, align 8
  %18 = call i64 @item_check(%struct.node* %17)
  %19 = add nsw i64 %14, %18
  store i64 %19, i64* %2, align 8
  br label %20

20:                                               ; preds = %9, %8
  %21 = load i64, i64* %2, align 8
  ret i64 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_tree(%struct.node*) #0 {
  %2 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %2, align 8
  %3 = load %struct.node*, %struct.node** %2, align 8
  %4 = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 0
  %5 = load %struct.node*, %struct.node** %4, align 8
  %6 = icmp ne %struct.node* %5, null
  br i1 %6, label %7, label %._crit_edge

._crit_edge:                                      ; preds = %1
  br label %14

7:                                                ; preds = %1
  %8 = load %struct.node*, %struct.node** %2, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 0
  %10 = load %struct.node*, %struct.node** %9, align 8
  call void @delete_tree(%struct.node* %10)
  %11 = load %struct.node*, %struct.node** %2, align 8
  %12 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 1
  %13 = load %struct.node*, %struct.node** %12, align 8
  call void @delete_tree(%struct.node* %13)
  br label %14

14:                                               ; preds = %._crit_edge, %7
  %15 = load %struct.node*, %struct.node** %2, align 8
  %16 = bitcast %struct.node* %15 to i8*
  call void @jefree(i8* %16)
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #4

; Function Attrs: nounwind
declare !callback !2 dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_tree_of_depth(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.worker_args*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.node*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.worker_args*
  store %struct.worker_args* %10, %struct.worker_args** %3, align 8
  %11 = load %struct.worker_args*, %struct.worker_args** %3, align 8
  %12 = getelementptr inbounds %struct.worker_args, %struct.worker_args* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %5, align 8
  %14 = load %struct.worker_args*, %struct.worker_args** %3, align 8
  %15 = getelementptr inbounds %struct.worker_args, %struct.worker_args* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %7, align 8
  store i64 0, i64* %6, align 8
  store i64 1, i64* %4, align 8
  br label %18

18:                                               ; preds = %31, %1
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp sle i64 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load i64, i64* %7, align 8
  %24 = trunc i64 %23 to i32
  %25 = call %struct.node* @bottom_up_tree(i32 %24)
  store %struct.node* %25, %struct.node** %8, align 8
  %26 = load %struct.node*, %struct.node** %8, align 8
  %27 = call i64 @item_check(%struct.node* %26)
  %28 = load i64, i64* %6, align 8
  %29 = add nsw i64 %28, %27
  store i64 %29, i64* %6, align 8
  %30 = load %struct.node*, %struct.node** %8, align 8
  call void @delete_tree(%struct.node* %30)
  br label %31

31:                                               ; preds = %22
  %32 = load i64, i64* %4, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %4, align 8
  br label %18

34:                                               ; preds = %18
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.worker_args*, %struct.worker_args** %3, align 8
  %37 = getelementptr inbounds %struct.worker_args, %struct.worker_args* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  ret i8* null
}

declare dso_local i32 @pthread_join(i64, i8**) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.node* @new_node(%struct.node*, %struct.node*) #0 {
  %3 = alloca %struct.node*, align 8
  %4 = alloca %struct.node*, align 8
  %5 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %3, align 8
  store %struct.node* %1, %struct.node** %4, align 8
  %6 = call i8* @jemalloc(i64 16)
  %7 = bitcast i8* %6 to %struct.node*
  store %struct.node* %7, %struct.node** %5, align 8
  %8 = load %struct.node*, %struct.node** %3, align 8
  %9 = load %struct.node*, %struct.node** %5, align 8
  %10 = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 0
  store %struct.node* %8, %struct.node** %10, align 8
  %11 = load %struct.node*, %struct.node** %4, align 8
  %12 = load %struct.node*, %struct.node** %5, align 8
  %13 = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 1
  store %struct.node* %11, %struct.node** %13, align 8
  %14 = load %struct.node*, %struct.node** %5, align 8
  ret %struct.node* %14
}

declare i8* @jemalloc(i64)

declare void @jefree(i8*)

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.0 (git@github.com:scampanoni/LLVM_installer.git 713d2f6594d9a0b77e7f9a120aaa7c917715a640)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
