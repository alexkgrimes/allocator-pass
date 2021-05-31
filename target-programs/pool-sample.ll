; ModuleID = 'pool-sample.ll'
source_filename = "pool-sample.c"
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
  %1 = alloca [20 x %struct.Book*], align 16
  %2 = getelementptr inbounds [20 x %struct.Book*], [20 x %struct.Book*]* %1, i64 0, i64 19
  %3 = getelementptr inbounds [20 x %struct.Book*], [20 x %struct.Book*]* %1, i64 0, i64 0
  %4 = getelementptr inbounds [20 x %struct.Book*], [20 x %struct.Book*]* %1, i64 0, i64 1
  %5 = getelementptr inbounds [20 x %struct.Book*], [20 x %struct.Book*]* %1, i64 0, i64 2
  %6 = getelementptr inbounds [20 x %struct.Book*], [20 x %struct.Book*]* %1, i64 0, i64 3
  %7 = getelementptr inbounds [20 x %struct.Book*], [20 x %struct.Book*]* %1, i64 0, i64 4
  %8 = getelementptr inbounds [20 x %struct.Book*], [20 x %struct.Book*]* %1, i64 0, i64 5
  %9 = getelementptr inbounds [20 x %struct.Book*], [20 x %struct.Book*]* %1, i64 0, i64 6
  %10 = getelementptr inbounds [20 x %struct.Book*], [20 x %struct.Book*]* %1, i64 0, i64 7
  %11 = getelementptr inbounds [20 x %struct.Book*], [20 x %struct.Book*]* %1, i64 0, i64 8
  %12 = getelementptr inbounds [20 x %struct.Book*], [20 x %struct.Book*]* %1, i64 0, i64 9
  %13 = getelementptr inbounds [20 x %struct.Book*], [20 x %struct.Book*]* %1, i64 0, i64 10
  %14 = getelementptr inbounds [20 x %struct.Book*], [20 x %struct.Book*]* %1, i64 0, i64 11
  %15 = getelementptr inbounds [20 x %struct.Book*], [20 x %struct.Book*]* %1, i64 0, i64 12
  %16 = getelementptr inbounds [20 x %struct.Book*], [20 x %struct.Book*]* %1, i64 0, i64 13
  %17 = getelementptr inbounds [20 x %struct.Book*], [20 x %struct.Book*]* %1, i64 0, i64 14
  %18 = getelementptr inbounds [20 x %struct.Book*], [20 x %struct.Book*]* %1, i64 0, i64 15
  %19 = getelementptr inbounds [20 x %struct.Book*], [20 x %struct.Book*]* %1, i64 0, i64 16
  %20 = getelementptr inbounds [20 x %struct.Book*], [20 x %struct.Book*]* %1, i64 0, i64 17
  %21 = getelementptr inbounds [20 x %struct.Book*], [20 x %struct.Book*]* %1, i64 0, i64 18
  %22 = bitcast %struct.Book** %12 to i8**
  %23 = bitcast %struct.Book** %11 to i8**
  %24 = bitcast %struct.Book** %10 to i8**
  %25 = bitcast %struct.Book** %9 to i8**
  %26 = bitcast %struct.Book** %8 to i8**
  %27 = bitcast %struct.Book** %7 to i8**
  %28 = bitcast %struct.Book** %6 to i8**
  %29 = bitcast %struct.Book** %5 to i8**
  %30 = bitcast %struct.Book** %4 to i8**
  %31 = bitcast [20 x %struct.Book*]* %1 to i8**
  br label %.preheader2

.preheader2:                                      ; preds = %0, %.preheader1.preheader
  %.048 = phi i64 [ 0, %0 ], [ %184, %.preheader1.preheader ]
  %indvars.iv107 = phi i64 [ 0, %0 ], [ %indvars.iv.next11, %.preheader1.preheader ]
  br label %32

32:                                               ; preds = %.preheader2, %32
  %indvars.iv3 = phi i64 [ 0, %.preheader2 ], [ %indvars.iv.next, %32 ]
  %33 = tail call i8* @allocate(i64 216) #4
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %33, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 14, i1 false)
  %34 = getelementptr inbounds i8, i8* %33, i64 50
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %34, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 9, i1 false)
  %35 = getelementptr inbounds i8, i8* %33, i64 100
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %35, i8* align 1 getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 23, i1 false)
  %36 = getelementptr inbounds i8, i8* %33, i64 200
  %37 = bitcast i8* %36 to i32*
  store i32 6495407, i32* %37, align 8, !tbaa !2
  %38 = tail call i32 @rand() #4
  %39 = srem i32 %38, 5
  %40 = sitofp i32 %39 to double
  %41 = getelementptr inbounds i8, i8* %33, i64 208
  %42 = bitcast i8* %41 to double*
  store double %40, double* %42, align 8, !tbaa !8
  %43 = getelementptr inbounds [20 x %struct.Book*], [20 x %struct.Book*]* %1, i64 0, i64 %indvars.iv3
  %44 = bitcast %struct.Book** %43 to i8**
  store i8* %33, i8** %44, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 20
  br i1 %exitcond, label %.preheader1.preheader, label %32

.preheader1.preheader:                            ; preds = %32
  %45 = load %struct.Book*, %struct.Book** %3, align 16, !tbaa !9
  %46 = getelementptr inbounds %struct.Book, %struct.Book* %45, i64 0, i32 4
  %47 = load double, double* %46, align 8, !tbaa !8
  %48 = sitofp i64 %.048 to double
  %49 = fadd double %47, %48
  %50 = fptosi double %49 to i64
  %51 = load %struct.Book*, %struct.Book** %4, align 8, !tbaa !9
  %52 = getelementptr inbounds %struct.Book, %struct.Book* %51, i64 0, i32 4
  %53 = load double, double* %52, align 8, !tbaa !8
  %54 = sitofp i64 %50 to double
  %55 = fadd double %53, %54
  %56 = fptosi double %55 to i64
  %57 = load %struct.Book*, %struct.Book** %5, align 16, !tbaa !9
  %58 = getelementptr inbounds %struct.Book, %struct.Book* %57, i64 0, i32 4
  %59 = load double, double* %58, align 8, !tbaa !8
  %60 = sitofp i64 %56 to double
  %61 = fadd double %59, %60
  %62 = fptosi double %61 to i64
  %63 = load %struct.Book*, %struct.Book** %6, align 8, !tbaa !9
  %64 = getelementptr inbounds %struct.Book, %struct.Book* %63, i64 0, i32 4
  %65 = load double, double* %64, align 8, !tbaa !8
  %66 = sitofp i64 %62 to double
  %67 = fadd double %65, %66
  %68 = fptosi double %67 to i64
  %69 = load %struct.Book*, %struct.Book** %7, align 16, !tbaa !9
  %70 = getelementptr inbounds %struct.Book, %struct.Book* %69, i64 0, i32 4
  %71 = load double, double* %70, align 8, !tbaa !8
  %72 = sitofp i64 %68 to double
  %73 = fadd double %71, %72
  %74 = fptosi double %73 to i64
  %75 = load %struct.Book*, %struct.Book** %8, align 8, !tbaa !9
  %76 = getelementptr inbounds %struct.Book, %struct.Book* %75, i64 0, i32 4
  %77 = load double, double* %76, align 8, !tbaa !8
  %78 = sitofp i64 %74 to double
  %79 = fadd double %77, %78
  %80 = fptosi double %79 to i64
  %81 = load %struct.Book*, %struct.Book** %9, align 16, !tbaa !9
  %82 = getelementptr inbounds %struct.Book, %struct.Book* %81, i64 0, i32 4
  %83 = load double, double* %82, align 8, !tbaa !8
  %84 = sitofp i64 %80 to double
  %85 = fadd double %83, %84
  %86 = fptosi double %85 to i64
  %87 = load %struct.Book*, %struct.Book** %10, align 8, !tbaa !9
  %88 = getelementptr inbounds %struct.Book, %struct.Book* %87, i64 0, i32 4
  %89 = load double, double* %88, align 8, !tbaa !8
  %90 = sitofp i64 %86 to double
  %91 = fadd double %89, %90
  %92 = fptosi double %91 to i64
  %93 = load %struct.Book*, %struct.Book** %11, align 16, !tbaa !9
  %94 = getelementptr inbounds %struct.Book, %struct.Book* %93, i64 0, i32 4
  %95 = load double, double* %94, align 8, !tbaa !8
  %96 = sitofp i64 %92 to double
  %97 = fadd double %95, %96
  %98 = fptosi double %97 to i64
  %99 = load %struct.Book*, %struct.Book** %12, align 8, !tbaa !9
  %100 = getelementptr inbounds %struct.Book, %struct.Book* %99, i64 0, i32 4
  %101 = load double, double* %100, align 8, !tbaa !8
  %102 = sitofp i64 %98 to double
  %103 = fadd double %101, %102
  %104 = fptosi double %103 to i64
  %105 = load %struct.Book*, %struct.Book** %13, align 16, !tbaa !9
  %106 = getelementptr inbounds %struct.Book, %struct.Book* %105, i64 0, i32 4
  %107 = load double, double* %106, align 8, !tbaa !8
  %108 = sitofp i64 %104 to double
  %109 = fadd double %107, %108
  %110 = fptosi double %109 to i64
  %111 = load %struct.Book*, %struct.Book** %14, align 8, !tbaa !9
  %112 = getelementptr inbounds %struct.Book, %struct.Book* %111, i64 0, i32 4
  %113 = load double, double* %112, align 8, !tbaa !8
  %114 = sitofp i64 %110 to double
  %115 = fadd double %113, %114
  %116 = fptosi double %115 to i64
  %117 = load %struct.Book*, %struct.Book** %15, align 16, !tbaa !9
  %118 = getelementptr inbounds %struct.Book, %struct.Book* %117, i64 0, i32 4
  %119 = load double, double* %118, align 8, !tbaa !8
  %120 = sitofp i64 %116 to double
  %121 = fadd double %119, %120
  %122 = fptosi double %121 to i64
  %123 = load %struct.Book*, %struct.Book** %16, align 8, !tbaa !9
  %124 = getelementptr inbounds %struct.Book, %struct.Book* %123, i64 0, i32 4
  %125 = load double, double* %124, align 8, !tbaa !8
  %126 = sitofp i64 %122 to double
  %127 = fadd double %125, %126
  %128 = fptosi double %127 to i64
  %129 = load %struct.Book*, %struct.Book** %17, align 16, !tbaa !9
  %130 = getelementptr inbounds %struct.Book, %struct.Book* %129, i64 0, i32 4
  %131 = load double, double* %130, align 8, !tbaa !8
  %132 = sitofp i64 %128 to double
  %133 = fadd double %131, %132
  %134 = fptosi double %133 to i64
  %135 = load %struct.Book*, %struct.Book** %18, align 8, !tbaa !9
  %136 = getelementptr inbounds %struct.Book, %struct.Book* %135, i64 0, i32 4
  %137 = load double, double* %136, align 8, !tbaa !8
  %138 = sitofp i64 %134 to double
  %139 = fadd double %137, %138
  %140 = fptosi double %139 to i64
  %141 = load %struct.Book*, %struct.Book** %19, align 16, !tbaa !9
  %142 = getelementptr inbounds %struct.Book, %struct.Book* %141, i64 0, i32 4
  %143 = load double, double* %142, align 8, !tbaa !8
  %144 = sitofp i64 %140 to double
  %145 = fadd double %143, %144
  %146 = fptosi double %145 to i64
  %147 = load %struct.Book*, %struct.Book** %20, align 8, !tbaa !9
  %148 = getelementptr inbounds %struct.Book, %struct.Book* %147, i64 0, i32 4
  %149 = load double, double* %148, align 8, !tbaa !8
  %150 = sitofp i64 %146 to double
  %151 = fadd double %149, %150
  %152 = fptosi double %151 to i64
  %153 = load %struct.Book*, %struct.Book** %21, align 16, !tbaa !9
  %154 = getelementptr inbounds %struct.Book, %struct.Book* %153, i64 0, i32 4
  %155 = load double, double* %154, align 8, !tbaa !8
  %156 = sitofp i64 %152 to double
  %157 = fadd double %155, %156
  %158 = fptosi double %157 to i64
  %159 = load %struct.Book*, %struct.Book** %2, align 8, !tbaa !9
  %160 = getelementptr inbounds %struct.Book, %struct.Book* %159, i64 0, i32 4
  %161 = load double, double* %160, align 8, !tbaa !8
  %162 = sitofp i64 %158 to double
  %163 = fadd double %161, %162
  %164 = getelementptr inbounds %struct.Book, %struct.Book* %159, i64 0, i32 0, i64 0
  tail call void @deallocate(i8* %164) #4
  %165 = getelementptr inbounds %struct.Book, %struct.Book* %153, i64 0, i32 0, i64 0
  tail call void @deallocate(i8* %165) #4
  %166 = getelementptr inbounds %struct.Book, %struct.Book* %147, i64 0, i32 0, i64 0
  tail call void @deallocate(i8* %166) #4
  %167 = getelementptr inbounds %struct.Book, %struct.Book* %141, i64 0, i32 0, i64 0
  tail call void @deallocate(i8* %167) #4
  %168 = getelementptr inbounds %struct.Book, %struct.Book* %135, i64 0, i32 0, i64 0
  tail call void @deallocate(i8* %168) #4
  %169 = getelementptr inbounds %struct.Book, %struct.Book* %129, i64 0, i32 0, i64 0
  tail call void @deallocate(i8* %169) #4
  %170 = getelementptr inbounds %struct.Book, %struct.Book* %123, i64 0, i32 0, i64 0
  tail call void @deallocate(i8* %170) #4
  %171 = getelementptr inbounds %struct.Book, %struct.Book* %117, i64 0, i32 0, i64 0
  tail call void @deallocate(i8* %171) #4
  %172 = getelementptr inbounds %struct.Book, %struct.Book* %111, i64 0, i32 0, i64 0
  tail call void @deallocate(i8* %172) #4
  %173 = getelementptr inbounds %struct.Book, %struct.Book* %105, i64 0, i32 0, i64 0
  tail call void @deallocate(i8* %173) #4
  %174 = load i8*, i8** %22, align 8, !tbaa !9
  tail call void @deallocate(i8* %174) #4
  %175 = load i8*, i8** %23, align 16, !tbaa !9
  tail call void @deallocate(i8* %175) #4
  %176 = load i8*, i8** %24, align 8, !tbaa !9
  tail call void @deallocate(i8* %176) #4
  %177 = load i8*, i8** %25, align 16, !tbaa !9
  tail call void @deallocate(i8* %177) #4
  %178 = load i8*, i8** %26, align 8, !tbaa !9
  tail call void @deallocate(i8* %178) #4
  %179 = load i8*, i8** %27, align 16, !tbaa !9
  tail call void @deallocate(i8* %179) #4
  %180 = load i8*, i8** %28, align 8, !tbaa !9
  tail call void @deallocate(i8* %180) #4
  %181 = load i8*, i8** %29, align 16, !tbaa !9
  tail call void @deallocate(i8* %181) #4
  %182 = load i8*, i8** %30, align 8, !tbaa !9
  tail call void @deallocate(i8* %182) #4
  %183 = load i8*, i8** %31, align 16, !tbaa !9
  tail call void @deallocate(i8* %183) #4
  %184 = fptosi double %163 to i64
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv107, 1
  %exitcond12 = icmp eq i64 %indvars.iv.next11, 1000
  br i1 %exitcond12, label %185, label %.preheader2

185:                                              ; preds = %.preheader1.preheader
  %186 = sdiv i64 %184, 1020
  %187 = sitofp i64 %186 to double
  %188 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), double %187)
  %189 = tail call i8* @allocate(i64 50) #4
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %189, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 9, i1 false)
  %190 = tail call i8* @allocate(i64 50) #4
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %190, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64 11, i1 false)
  %191 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %190)
  %192 = tail call i8* @allocate(i64 8) #4
  %193 = bitcast i8* %192 to i32*
  store i32 86, i32* %193, align 4, !tbaa !11
  tail call void @deallocate(i8* %192) #4
  tail call void @deallocate(i8* %189) #4
  tail call void @deallocate(i8* %190) #4
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
