; ModuleID = 'book-test.ll'
source_filename = "../code-samples/book-test.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Book = type { [50 x i8], [50 x i8], [100 x i8], i32 }

@.str = private unnamed_addr constant [14 x i8] c"C Programming\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Nuha Ali\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"C Programming Tutorial\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = zext i32 1000000 to i64
  %2 = call i8* @llvm.stacksave()
  %3 = alloca %struct.Book*, i64 %1, align 16
  br label %4

4:                                                ; preds = %23, %0
  %indvars.iv120 = phi i64 [ %indvars.iv.next121, %23 ], [ 0, %0 ]
  %exitcond122 = icmp ne i64 %indvars.iv120, 1000000
  br i1 %exitcond122, label %6, label %5

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
  %22 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv120
  store %struct.Book* %8, %struct.Book** %22, align 8, !tbaa !7
  br label %23

23:                                               ; preds = %6
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1
  br label %4

24:                                               ; preds = %5
  br label %25

25:                                               ; preds = %32, %24
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %32 ], [ 999999, %24 ]
  %26 = icmp sge i64 %indvars.iv118, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  br label %33

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv118
  %30 = load %struct.Book*, %struct.Book** %29, align 8, !tbaa !7
  %31 = bitcast %struct.Book* %30 to i8*
  call void @free(i8* %31) #2
  br label %32

32:                                               ; preds = %28
  %indvars.iv.next119 = add nsw i64 %indvars.iv118, -1
  br label %25

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %53, %33
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %53 ], [ 0, %33 ]
  %exitcond117 = icmp ne i64 %indvars.iv115, 1000000
  br i1 %exitcond117, label %36, label %35

35:                                               ; preds = %34
  br label %54

36:                                               ; preds = %34
  %37 = call noalias i8* @malloc(i64 204) #2
  %38 = bitcast i8* %37 to %struct.Book*
  %39 = getelementptr inbounds %struct.Book, %struct.Book* %38, i32 0, i32 0
  %40 = getelementptr inbounds [50 x i8], [50 x i8]* %39, i64 0, i64 0
  %41 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %42 = call i8* @strcpy(i8* %40, i8* %41) #2
  %43 = getelementptr inbounds %struct.Book, %struct.Book* %38, i32 0, i32 1
  %44 = getelementptr inbounds [50 x i8], [50 x i8]* %43, i64 0, i64 0
  %45 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %46 = call i8* @strcpy(i8* %44, i8* %45) #2
  %47 = getelementptr inbounds %struct.Book, %struct.Book* %38, i32 0, i32 2
  %48 = getelementptr inbounds [100 x i8], [100 x i8]* %47, i64 0, i64 0
  %49 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %50 = call i8* @strcpy(i8* %48, i8* %49) #2
  %51 = getelementptr inbounds %struct.Book, %struct.Book* %38, i32 0, i32 3
  store i32 6495407, i32* %51, align 4, !tbaa !2
  %52 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv115
  store %struct.Book* %38, %struct.Book** %52, align 8, !tbaa !7
  br label %53

53:                                               ; preds = %36
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1
  br label %34

54:                                               ; preds = %35
  br label %55

55:                                               ; preds = %62, %54
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %62 ], [ 999999, %54 ]
  %56 = icmp sge i64 %indvars.iv113, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %55
  br label %63

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv113
  %60 = load %struct.Book*, %struct.Book** %59, align 8, !tbaa !7
  %61 = bitcast %struct.Book* %60 to i8*
  call void @free(i8* %61) #2
  br label %62

62:                                               ; preds = %58
  %indvars.iv.next114 = add nsw i64 %indvars.iv113, -1
  br label %55

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %83, %63
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %83 ], [ 0, %63 ]
  %exitcond112 = icmp ne i64 %indvars.iv110, 1000000
  br i1 %exitcond112, label %66, label %65

65:                                               ; preds = %64
  br label %84

66:                                               ; preds = %64
  %67 = call noalias i8* @malloc(i64 204) #2
  %68 = bitcast i8* %67 to %struct.Book*
  %69 = getelementptr inbounds %struct.Book, %struct.Book* %68, i32 0, i32 0
  %70 = getelementptr inbounds [50 x i8], [50 x i8]* %69, i64 0, i64 0
  %71 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %72 = call i8* @strcpy(i8* %70, i8* %71) #2
  %73 = getelementptr inbounds %struct.Book, %struct.Book* %68, i32 0, i32 1
  %74 = getelementptr inbounds [50 x i8], [50 x i8]* %73, i64 0, i64 0
  %75 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %76 = call i8* @strcpy(i8* %74, i8* %75) #2
  %77 = getelementptr inbounds %struct.Book, %struct.Book* %68, i32 0, i32 2
  %78 = getelementptr inbounds [100 x i8], [100 x i8]* %77, i64 0, i64 0
  %79 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %80 = call i8* @strcpy(i8* %78, i8* %79) #2
  %81 = getelementptr inbounds %struct.Book, %struct.Book* %68, i32 0, i32 3
  store i32 6495407, i32* %81, align 4, !tbaa !2
  %82 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv110
  store %struct.Book* %68, %struct.Book** %82, align 8, !tbaa !7
  br label %83

83:                                               ; preds = %66
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  br label %64

84:                                               ; preds = %65
  br label %85

85:                                               ; preds = %92, %84
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %92 ], [ 999999, %84 ]
  %86 = icmp sge i64 %indvars.iv108, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %85
  br label %93

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv108
  %90 = load %struct.Book*, %struct.Book** %89, align 8, !tbaa !7
  %91 = bitcast %struct.Book* %90 to i8*
  call void @free(i8* %91) #2
  br label %92

92:                                               ; preds = %88
  %indvars.iv.next109 = add nsw i64 %indvars.iv108, -1
  br label %85

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %113, %93
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %113 ], [ 0, %93 ]
  %exitcond107 = icmp ne i64 %indvars.iv105, 1000000
  br i1 %exitcond107, label %96, label %95

95:                                               ; preds = %94
  br label %114

96:                                               ; preds = %94
  %97 = call noalias i8* @malloc(i64 204) #2
  %98 = bitcast i8* %97 to %struct.Book*
  %99 = getelementptr inbounds %struct.Book, %struct.Book* %98, i32 0, i32 0
  %100 = getelementptr inbounds [50 x i8], [50 x i8]* %99, i64 0, i64 0
  %101 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %102 = call i8* @strcpy(i8* %100, i8* %101) #2
  %103 = getelementptr inbounds %struct.Book, %struct.Book* %98, i32 0, i32 1
  %104 = getelementptr inbounds [50 x i8], [50 x i8]* %103, i64 0, i64 0
  %105 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %106 = call i8* @strcpy(i8* %104, i8* %105) #2
  %107 = getelementptr inbounds %struct.Book, %struct.Book* %98, i32 0, i32 2
  %108 = getelementptr inbounds [100 x i8], [100 x i8]* %107, i64 0, i64 0
  %109 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %110 = call i8* @strcpy(i8* %108, i8* %109) #2
  %111 = getelementptr inbounds %struct.Book, %struct.Book* %98, i32 0, i32 3
  store i32 6495407, i32* %111, align 4, !tbaa !2
  %112 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv105
  store %struct.Book* %98, %struct.Book** %112, align 8, !tbaa !7
  br label %113

113:                                              ; preds = %96
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  br label %94

114:                                              ; preds = %95
  br label %115

115:                                              ; preds = %122, %114
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %122 ], [ 999999, %114 ]
  %116 = icmp sge i64 %indvars.iv103, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %115
  br label %123

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv103
  %120 = load %struct.Book*, %struct.Book** %119, align 8, !tbaa !7
  %121 = bitcast %struct.Book* %120 to i8*
  call void @free(i8* %121) #2
  br label %122

122:                                              ; preds = %118
  %indvars.iv.next104 = add nsw i64 %indvars.iv103, -1
  br label %115

123:                                              ; preds = %117
  br label %124

124:                                              ; preds = %143, %123
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %143 ], [ 0, %123 ]
  %exitcond102 = icmp ne i64 %indvars.iv100, 1000000
  br i1 %exitcond102, label %126, label %125

125:                                              ; preds = %124
  br label %144

126:                                              ; preds = %124
  %127 = call noalias i8* @malloc(i64 204) #2
  %128 = bitcast i8* %127 to %struct.Book*
  %129 = getelementptr inbounds %struct.Book, %struct.Book* %128, i32 0, i32 0
  %130 = getelementptr inbounds [50 x i8], [50 x i8]* %129, i64 0, i64 0
  %131 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %132 = call i8* @strcpy(i8* %130, i8* %131) #2
  %133 = getelementptr inbounds %struct.Book, %struct.Book* %128, i32 0, i32 1
  %134 = getelementptr inbounds [50 x i8], [50 x i8]* %133, i64 0, i64 0
  %135 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %136 = call i8* @strcpy(i8* %134, i8* %135) #2
  %137 = getelementptr inbounds %struct.Book, %struct.Book* %128, i32 0, i32 2
  %138 = getelementptr inbounds [100 x i8], [100 x i8]* %137, i64 0, i64 0
  %139 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %140 = call i8* @strcpy(i8* %138, i8* %139) #2
  %141 = getelementptr inbounds %struct.Book, %struct.Book* %128, i32 0, i32 3
  store i32 6495407, i32* %141, align 4, !tbaa !2
  %142 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv100
  store %struct.Book* %128, %struct.Book** %142, align 8, !tbaa !7
  br label %143

143:                                              ; preds = %126
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  br label %124

144:                                              ; preds = %125
  br label %145

145:                                              ; preds = %152, %144
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %152 ], [ 999999, %144 ]
  %146 = icmp sge i64 %indvars.iv98, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %145
  br label %153

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv98
  %150 = load %struct.Book*, %struct.Book** %149, align 8, !tbaa !7
  %151 = bitcast %struct.Book* %150 to i8*
  call void @free(i8* %151) #2
  br label %152

152:                                              ; preds = %148
  %indvars.iv.next99 = add nsw i64 %indvars.iv98, -1
  br label %145

153:                                              ; preds = %147
  br label %154

154:                                              ; preds = %173, %153
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %173 ], [ 0, %153 ]
  %exitcond97 = icmp ne i64 %indvars.iv95, 1000000
  br i1 %exitcond97, label %156, label %155

155:                                              ; preds = %154
  br label %174

156:                                              ; preds = %154
  %157 = call noalias i8* @malloc(i64 204) #2
  %158 = bitcast i8* %157 to %struct.Book*
  %159 = getelementptr inbounds %struct.Book, %struct.Book* %158, i32 0, i32 0
  %160 = getelementptr inbounds [50 x i8], [50 x i8]* %159, i64 0, i64 0
  %161 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %162 = call i8* @strcpy(i8* %160, i8* %161) #2
  %163 = getelementptr inbounds %struct.Book, %struct.Book* %158, i32 0, i32 1
  %164 = getelementptr inbounds [50 x i8], [50 x i8]* %163, i64 0, i64 0
  %165 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %166 = call i8* @strcpy(i8* %164, i8* %165) #2
  %167 = getelementptr inbounds %struct.Book, %struct.Book* %158, i32 0, i32 2
  %168 = getelementptr inbounds [100 x i8], [100 x i8]* %167, i64 0, i64 0
  %169 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %170 = call i8* @strcpy(i8* %168, i8* %169) #2
  %171 = getelementptr inbounds %struct.Book, %struct.Book* %158, i32 0, i32 3
  store i32 6495407, i32* %171, align 4, !tbaa !2
  %172 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv95
  store %struct.Book* %158, %struct.Book** %172, align 8, !tbaa !7
  br label %173

173:                                              ; preds = %156
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  br label %154

174:                                              ; preds = %155
  br label %175

175:                                              ; preds = %182, %174
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %182 ], [ 999999, %174 ]
  %176 = icmp sge i64 %indvars.iv93, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %175
  br label %183

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv93
  %180 = load %struct.Book*, %struct.Book** %179, align 8, !tbaa !7
  %181 = bitcast %struct.Book* %180 to i8*
  call void @free(i8* %181) #2
  br label %182

182:                                              ; preds = %178
  %indvars.iv.next94 = add nsw i64 %indvars.iv93, -1
  br label %175

183:                                              ; preds = %177
  br label %184

184:                                              ; preds = %203, %183
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %203 ], [ 0, %183 ]
  %exitcond92 = icmp ne i64 %indvars.iv90, 1000000
  br i1 %exitcond92, label %186, label %185

185:                                              ; preds = %184
  br label %204

186:                                              ; preds = %184
  %187 = call noalias i8* @malloc(i64 204) #2
  %188 = bitcast i8* %187 to %struct.Book*
  %189 = getelementptr inbounds %struct.Book, %struct.Book* %188, i32 0, i32 0
  %190 = getelementptr inbounds [50 x i8], [50 x i8]* %189, i64 0, i64 0
  %191 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %192 = call i8* @strcpy(i8* %190, i8* %191) #2
  %193 = getelementptr inbounds %struct.Book, %struct.Book* %188, i32 0, i32 1
  %194 = getelementptr inbounds [50 x i8], [50 x i8]* %193, i64 0, i64 0
  %195 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %196 = call i8* @strcpy(i8* %194, i8* %195) #2
  %197 = getelementptr inbounds %struct.Book, %struct.Book* %188, i32 0, i32 2
  %198 = getelementptr inbounds [100 x i8], [100 x i8]* %197, i64 0, i64 0
  %199 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %200 = call i8* @strcpy(i8* %198, i8* %199) #2
  %201 = getelementptr inbounds %struct.Book, %struct.Book* %188, i32 0, i32 3
  store i32 6495407, i32* %201, align 4, !tbaa !2
  %202 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv90
  store %struct.Book* %188, %struct.Book** %202, align 8, !tbaa !7
  br label %203

203:                                              ; preds = %186
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  br label %184

204:                                              ; preds = %185
  br label %205

205:                                              ; preds = %212, %204
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %212 ], [ 999999, %204 ]
  %206 = icmp sge i64 %indvars.iv88, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %205
  br label %213

208:                                              ; preds = %205
  %209 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv88
  %210 = load %struct.Book*, %struct.Book** %209, align 8, !tbaa !7
  %211 = bitcast %struct.Book* %210 to i8*
  call void @free(i8* %211) #2
  br label %212

212:                                              ; preds = %208
  %indvars.iv.next89 = add nsw i64 %indvars.iv88, -1
  br label %205

213:                                              ; preds = %207
  br label %214

214:                                              ; preds = %233, %213
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %233 ], [ 0, %213 ]
  %exitcond87 = icmp ne i64 %indvars.iv85, 1000000
  br i1 %exitcond87, label %216, label %215

215:                                              ; preds = %214
  br label %234

216:                                              ; preds = %214
  %217 = call noalias i8* @malloc(i64 204) #2
  %218 = bitcast i8* %217 to %struct.Book*
  %219 = getelementptr inbounds %struct.Book, %struct.Book* %218, i32 0, i32 0
  %220 = getelementptr inbounds [50 x i8], [50 x i8]* %219, i64 0, i64 0
  %221 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %222 = call i8* @strcpy(i8* %220, i8* %221) #2
  %223 = getelementptr inbounds %struct.Book, %struct.Book* %218, i32 0, i32 1
  %224 = getelementptr inbounds [50 x i8], [50 x i8]* %223, i64 0, i64 0
  %225 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %226 = call i8* @strcpy(i8* %224, i8* %225) #2
  %227 = getelementptr inbounds %struct.Book, %struct.Book* %218, i32 0, i32 2
  %228 = getelementptr inbounds [100 x i8], [100 x i8]* %227, i64 0, i64 0
  %229 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %230 = call i8* @strcpy(i8* %228, i8* %229) #2
  %231 = getelementptr inbounds %struct.Book, %struct.Book* %218, i32 0, i32 3
  store i32 6495407, i32* %231, align 4, !tbaa !2
  %232 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv85
  store %struct.Book* %218, %struct.Book** %232, align 8, !tbaa !7
  br label %233

233:                                              ; preds = %216
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  br label %214

234:                                              ; preds = %215
  br label %235

235:                                              ; preds = %242, %234
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %242 ], [ 999999, %234 ]
  %236 = icmp sge i64 %indvars.iv83, 0
  br i1 %236, label %238, label %237

237:                                              ; preds = %235
  br label %243

238:                                              ; preds = %235
  %239 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv83
  %240 = load %struct.Book*, %struct.Book** %239, align 8, !tbaa !7
  %241 = bitcast %struct.Book* %240 to i8*
  call void @free(i8* %241) #2
  br label %242

242:                                              ; preds = %238
  %indvars.iv.next84 = add nsw i64 %indvars.iv83, -1
  br label %235

243:                                              ; preds = %237
  br label %244

244:                                              ; preds = %263, %243
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %263 ], [ 0, %243 ]
  %exitcond82 = icmp ne i64 %indvars.iv80, 1000000
  br i1 %exitcond82, label %246, label %245

245:                                              ; preds = %244
  br label %264

246:                                              ; preds = %244
  %247 = call noalias i8* @malloc(i64 204) #2
  %248 = bitcast i8* %247 to %struct.Book*
  %249 = getelementptr inbounds %struct.Book, %struct.Book* %248, i32 0, i32 0
  %250 = getelementptr inbounds [50 x i8], [50 x i8]* %249, i64 0, i64 0
  %251 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %252 = call i8* @strcpy(i8* %250, i8* %251) #2
  %253 = getelementptr inbounds %struct.Book, %struct.Book* %248, i32 0, i32 1
  %254 = getelementptr inbounds [50 x i8], [50 x i8]* %253, i64 0, i64 0
  %255 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %256 = call i8* @strcpy(i8* %254, i8* %255) #2
  %257 = getelementptr inbounds %struct.Book, %struct.Book* %248, i32 0, i32 2
  %258 = getelementptr inbounds [100 x i8], [100 x i8]* %257, i64 0, i64 0
  %259 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %260 = call i8* @strcpy(i8* %258, i8* %259) #2
  %261 = getelementptr inbounds %struct.Book, %struct.Book* %248, i32 0, i32 3
  store i32 6495407, i32* %261, align 4, !tbaa !2
  %262 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv80
  store %struct.Book* %248, %struct.Book** %262, align 8, !tbaa !7
  br label %263

263:                                              ; preds = %246
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  br label %244

264:                                              ; preds = %245
  br label %265

265:                                              ; preds = %272, %264
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %272 ], [ 999999, %264 ]
  %266 = icmp sge i64 %indvars.iv78, 0
  br i1 %266, label %268, label %267

267:                                              ; preds = %265
  br label %273

268:                                              ; preds = %265
  %269 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv78
  %270 = load %struct.Book*, %struct.Book** %269, align 8, !tbaa !7
  %271 = bitcast %struct.Book* %270 to i8*
  call void @free(i8* %271) #2
  br label %272

272:                                              ; preds = %268
  %indvars.iv.next79 = add nsw i64 %indvars.iv78, -1
  br label %265

273:                                              ; preds = %267
  br label %274

274:                                              ; preds = %293, %273
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %293 ], [ 0, %273 ]
  %exitcond77 = icmp ne i64 %indvars.iv75, 1000000
  br i1 %exitcond77, label %276, label %275

275:                                              ; preds = %274
  br label %294

276:                                              ; preds = %274
  %277 = call noalias i8* @malloc(i64 204) #2
  %278 = bitcast i8* %277 to %struct.Book*
  %279 = getelementptr inbounds %struct.Book, %struct.Book* %278, i32 0, i32 0
  %280 = getelementptr inbounds [50 x i8], [50 x i8]* %279, i64 0, i64 0
  %281 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %282 = call i8* @strcpy(i8* %280, i8* %281) #2
  %283 = getelementptr inbounds %struct.Book, %struct.Book* %278, i32 0, i32 1
  %284 = getelementptr inbounds [50 x i8], [50 x i8]* %283, i64 0, i64 0
  %285 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %286 = call i8* @strcpy(i8* %284, i8* %285) #2
  %287 = getelementptr inbounds %struct.Book, %struct.Book* %278, i32 0, i32 2
  %288 = getelementptr inbounds [100 x i8], [100 x i8]* %287, i64 0, i64 0
  %289 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %290 = call i8* @strcpy(i8* %288, i8* %289) #2
  %291 = getelementptr inbounds %struct.Book, %struct.Book* %278, i32 0, i32 3
  store i32 6495407, i32* %291, align 4, !tbaa !2
  %292 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv75
  store %struct.Book* %278, %struct.Book** %292, align 8, !tbaa !7
  br label %293

293:                                              ; preds = %276
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  br label %274

294:                                              ; preds = %275
  br label %295

295:                                              ; preds = %302, %294
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %302 ], [ 999999, %294 ]
  %296 = icmp sge i64 %indvars.iv73, 0
  br i1 %296, label %298, label %297

297:                                              ; preds = %295
  br label %303

298:                                              ; preds = %295
  %299 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv73
  %300 = load %struct.Book*, %struct.Book** %299, align 8, !tbaa !7
  %301 = bitcast %struct.Book* %300 to i8*
  call void @free(i8* %301) #2
  br label %302

302:                                              ; preds = %298
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, -1
  br label %295

303:                                              ; preds = %297
  br label %304

304:                                              ; preds = %323, %303
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %323 ], [ 0, %303 ]
  %exitcond72 = icmp ne i64 %indvars.iv70, 1000000
  br i1 %exitcond72, label %306, label %305

305:                                              ; preds = %304
  br label %324

306:                                              ; preds = %304
  %307 = call noalias i8* @malloc(i64 204) #2
  %308 = bitcast i8* %307 to %struct.Book*
  %309 = getelementptr inbounds %struct.Book, %struct.Book* %308, i32 0, i32 0
  %310 = getelementptr inbounds [50 x i8], [50 x i8]* %309, i64 0, i64 0
  %311 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %312 = call i8* @strcpy(i8* %310, i8* %311) #2
  %313 = getelementptr inbounds %struct.Book, %struct.Book* %308, i32 0, i32 1
  %314 = getelementptr inbounds [50 x i8], [50 x i8]* %313, i64 0, i64 0
  %315 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %316 = call i8* @strcpy(i8* %314, i8* %315) #2
  %317 = getelementptr inbounds %struct.Book, %struct.Book* %308, i32 0, i32 2
  %318 = getelementptr inbounds [100 x i8], [100 x i8]* %317, i64 0, i64 0
  %319 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %320 = call i8* @strcpy(i8* %318, i8* %319) #2
  %321 = getelementptr inbounds %struct.Book, %struct.Book* %308, i32 0, i32 3
  store i32 6495407, i32* %321, align 4, !tbaa !2
  %322 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv70
  store %struct.Book* %308, %struct.Book** %322, align 8, !tbaa !7
  br label %323

323:                                              ; preds = %306
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  br label %304

324:                                              ; preds = %305
  br label %325

325:                                              ; preds = %332, %324
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %332 ], [ 999999, %324 ]
  %326 = icmp sge i64 %indvars.iv68, 0
  br i1 %326, label %328, label %327

327:                                              ; preds = %325
  br label %333

328:                                              ; preds = %325
  %329 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv68
  %330 = load %struct.Book*, %struct.Book** %329, align 8, !tbaa !7
  %331 = bitcast %struct.Book* %330 to i8*
  call void @free(i8* %331) #2
  br label %332

332:                                              ; preds = %328
  %indvars.iv.next69 = add nsw i64 %indvars.iv68, -1
  br label %325

333:                                              ; preds = %327
  br label %334

334:                                              ; preds = %353, %333
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %353 ], [ 0, %333 ]
  %exitcond67 = icmp ne i64 %indvars.iv65, 1000000
  br i1 %exitcond67, label %336, label %335

335:                                              ; preds = %334
  br label %354

336:                                              ; preds = %334
  %337 = call noalias i8* @malloc(i64 204) #2
  %338 = bitcast i8* %337 to %struct.Book*
  %339 = getelementptr inbounds %struct.Book, %struct.Book* %338, i32 0, i32 0
  %340 = getelementptr inbounds [50 x i8], [50 x i8]* %339, i64 0, i64 0
  %341 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %342 = call i8* @strcpy(i8* %340, i8* %341) #2
  %343 = getelementptr inbounds %struct.Book, %struct.Book* %338, i32 0, i32 1
  %344 = getelementptr inbounds [50 x i8], [50 x i8]* %343, i64 0, i64 0
  %345 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %346 = call i8* @strcpy(i8* %344, i8* %345) #2
  %347 = getelementptr inbounds %struct.Book, %struct.Book* %338, i32 0, i32 2
  %348 = getelementptr inbounds [100 x i8], [100 x i8]* %347, i64 0, i64 0
  %349 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %350 = call i8* @strcpy(i8* %348, i8* %349) #2
  %351 = getelementptr inbounds %struct.Book, %struct.Book* %338, i32 0, i32 3
  store i32 6495407, i32* %351, align 4, !tbaa !2
  %352 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv65
  store %struct.Book* %338, %struct.Book** %352, align 8, !tbaa !7
  br label %353

353:                                              ; preds = %336
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  br label %334

354:                                              ; preds = %335
  br label %355

355:                                              ; preds = %362, %354
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %362 ], [ 999999, %354 ]
  %356 = icmp sge i64 %indvars.iv63, 0
  br i1 %356, label %358, label %357

357:                                              ; preds = %355
  br label %363

358:                                              ; preds = %355
  %359 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv63
  %360 = load %struct.Book*, %struct.Book** %359, align 8, !tbaa !7
  %361 = bitcast %struct.Book* %360 to i8*
  call void @free(i8* %361) #2
  br label %362

362:                                              ; preds = %358
  %indvars.iv.next64 = add nsw i64 %indvars.iv63, -1
  br label %355

363:                                              ; preds = %357
  br label %364

364:                                              ; preds = %383, %363
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %383 ], [ 0, %363 ]
  %exitcond62 = icmp ne i64 %indvars.iv60, 1000000
  br i1 %exitcond62, label %366, label %365

365:                                              ; preds = %364
  br label %384

366:                                              ; preds = %364
  %367 = call noalias i8* @malloc(i64 204) #2
  %368 = bitcast i8* %367 to %struct.Book*
  %369 = getelementptr inbounds %struct.Book, %struct.Book* %368, i32 0, i32 0
  %370 = getelementptr inbounds [50 x i8], [50 x i8]* %369, i64 0, i64 0
  %371 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %372 = call i8* @strcpy(i8* %370, i8* %371) #2
  %373 = getelementptr inbounds %struct.Book, %struct.Book* %368, i32 0, i32 1
  %374 = getelementptr inbounds [50 x i8], [50 x i8]* %373, i64 0, i64 0
  %375 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %376 = call i8* @strcpy(i8* %374, i8* %375) #2
  %377 = getelementptr inbounds %struct.Book, %struct.Book* %368, i32 0, i32 2
  %378 = getelementptr inbounds [100 x i8], [100 x i8]* %377, i64 0, i64 0
  %379 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %380 = call i8* @strcpy(i8* %378, i8* %379) #2
  %381 = getelementptr inbounds %struct.Book, %struct.Book* %368, i32 0, i32 3
  store i32 6495407, i32* %381, align 4, !tbaa !2
  %382 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv60
  store %struct.Book* %368, %struct.Book** %382, align 8, !tbaa !7
  br label %383

383:                                              ; preds = %366
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  br label %364

384:                                              ; preds = %365
  br label %385

385:                                              ; preds = %392, %384
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %392 ], [ 999999, %384 ]
  %386 = icmp sge i64 %indvars.iv58, 0
  br i1 %386, label %388, label %387

387:                                              ; preds = %385
  br label %393

388:                                              ; preds = %385
  %389 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv58
  %390 = load %struct.Book*, %struct.Book** %389, align 8, !tbaa !7
  %391 = bitcast %struct.Book* %390 to i8*
  call void @free(i8* %391) #2
  br label %392

392:                                              ; preds = %388
  %indvars.iv.next59 = add nsw i64 %indvars.iv58, -1
  br label %385

393:                                              ; preds = %387
  br label %394

394:                                              ; preds = %413, %393
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %413 ], [ 0, %393 ]
  %exitcond57 = icmp ne i64 %indvars.iv55, 1000000
  br i1 %exitcond57, label %396, label %395

395:                                              ; preds = %394
  br label %414

396:                                              ; preds = %394
  %397 = call noalias i8* @malloc(i64 204) #2
  %398 = bitcast i8* %397 to %struct.Book*
  %399 = getelementptr inbounds %struct.Book, %struct.Book* %398, i32 0, i32 0
  %400 = getelementptr inbounds [50 x i8], [50 x i8]* %399, i64 0, i64 0
  %401 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %402 = call i8* @strcpy(i8* %400, i8* %401) #2
  %403 = getelementptr inbounds %struct.Book, %struct.Book* %398, i32 0, i32 1
  %404 = getelementptr inbounds [50 x i8], [50 x i8]* %403, i64 0, i64 0
  %405 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %406 = call i8* @strcpy(i8* %404, i8* %405) #2
  %407 = getelementptr inbounds %struct.Book, %struct.Book* %398, i32 0, i32 2
  %408 = getelementptr inbounds [100 x i8], [100 x i8]* %407, i64 0, i64 0
  %409 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %410 = call i8* @strcpy(i8* %408, i8* %409) #2
  %411 = getelementptr inbounds %struct.Book, %struct.Book* %398, i32 0, i32 3
  store i32 6495407, i32* %411, align 4, !tbaa !2
  %412 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv55
  store %struct.Book* %398, %struct.Book** %412, align 8, !tbaa !7
  br label %413

413:                                              ; preds = %396
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  br label %394

414:                                              ; preds = %395
  br label %415

415:                                              ; preds = %422, %414
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %422 ], [ 999999, %414 ]
  %416 = icmp sge i64 %indvars.iv53, 0
  br i1 %416, label %418, label %417

417:                                              ; preds = %415
  br label %423

418:                                              ; preds = %415
  %419 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv53
  %420 = load %struct.Book*, %struct.Book** %419, align 8, !tbaa !7
  %421 = bitcast %struct.Book* %420 to i8*
  call void @free(i8* %421) #2
  br label %422

422:                                              ; preds = %418
  %indvars.iv.next54 = add nsw i64 %indvars.iv53, -1
  br label %415

423:                                              ; preds = %417
  br label %424

424:                                              ; preds = %443, %423
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %443 ], [ 0, %423 ]
  %exitcond52 = icmp ne i64 %indvars.iv50, 1000000
  br i1 %exitcond52, label %426, label %425

425:                                              ; preds = %424
  br label %444

426:                                              ; preds = %424
  %427 = call noalias i8* @malloc(i64 204) #2
  %428 = bitcast i8* %427 to %struct.Book*
  %429 = getelementptr inbounds %struct.Book, %struct.Book* %428, i32 0, i32 0
  %430 = getelementptr inbounds [50 x i8], [50 x i8]* %429, i64 0, i64 0
  %431 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %432 = call i8* @strcpy(i8* %430, i8* %431) #2
  %433 = getelementptr inbounds %struct.Book, %struct.Book* %428, i32 0, i32 1
  %434 = getelementptr inbounds [50 x i8], [50 x i8]* %433, i64 0, i64 0
  %435 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %436 = call i8* @strcpy(i8* %434, i8* %435) #2
  %437 = getelementptr inbounds %struct.Book, %struct.Book* %428, i32 0, i32 2
  %438 = getelementptr inbounds [100 x i8], [100 x i8]* %437, i64 0, i64 0
  %439 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %440 = call i8* @strcpy(i8* %438, i8* %439) #2
  %441 = getelementptr inbounds %struct.Book, %struct.Book* %428, i32 0, i32 3
  store i32 6495407, i32* %441, align 4, !tbaa !2
  %442 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv50
  store %struct.Book* %428, %struct.Book** %442, align 8, !tbaa !7
  br label %443

443:                                              ; preds = %426
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  br label %424

444:                                              ; preds = %425
  br label %445

445:                                              ; preds = %452, %444
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %452 ], [ 999999, %444 ]
  %446 = icmp sge i64 %indvars.iv48, 0
  br i1 %446, label %448, label %447

447:                                              ; preds = %445
  br label %453

448:                                              ; preds = %445
  %449 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv48
  %450 = load %struct.Book*, %struct.Book** %449, align 8, !tbaa !7
  %451 = bitcast %struct.Book* %450 to i8*
  call void @free(i8* %451) #2
  br label %452

452:                                              ; preds = %448
  %indvars.iv.next49 = add nsw i64 %indvars.iv48, -1
  br label %445

453:                                              ; preds = %447
  br label %454

454:                                              ; preds = %473, %453
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %473 ], [ 0, %453 ]
  %exitcond47 = icmp ne i64 %indvars.iv45, 1000000
  br i1 %exitcond47, label %456, label %455

455:                                              ; preds = %454
  br label %474

456:                                              ; preds = %454
  %457 = call noalias i8* @malloc(i64 204) #2
  %458 = bitcast i8* %457 to %struct.Book*
  %459 = getelementptr inbounds %struct.Book, %struct.Book* %458, i32 0, i32 0
  %460 = getelementptr inbounds [50 x i8], [50 x i8]* %459, i64 0, i64 0
  %461 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %462 = call i8* @strcpy(i8* %460, i8* %461) #2
  %463 = getelementptr inbounds %struct.Book, %struct.Book* %458, i32 0, i32 1
  %464 = getelementptr inbounds [50 x i8], [50 x i8]* %463, i64 0, i64 0
  %465 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %466 = call i8* @strcpy(i8* %464, i8* %465) #2
  %467 = getelementptr inbounds %struct.Book, %struct.Book* %458, i32 0, i32 2
  %468 = getelementptr inbounds [100 x i8], [100 x i8]* %467, i64 0, i64 0
  %469 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %470 = call i8* @strcpy(i8* %468, i8* %469) #2
  %471 = getelementptr inbounds %struct.Book, %struct.Book* %458, i32 0, i32 3
  store i32 6495407, i32* %471, align 4, !tbaa !2
  %472 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv45
  store %struct.Book* %458, %struct.Book** %472, align 8, !tbaa !7
  br label %473

473:                                              ; preds = %456
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  br label %454

474:                                              ; preds = %455
  br label %475

475:                                              ; preds = %482, %474
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %482 ], [ 999999, %474 ]
  %476 = icmp sge i64 %indvars.iv43, 0
  br i1 %476, label %478, label %477

477:                                              ; preds = %475
  br label %483

478:                                              ; preds = %475
  %479 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv43
  %480 = load %struct.Book*, %struct.Book** %479, align 8, !tbaa !7
  %481 = bitcast %struct.Book* %480 to i8*
  call void @free(i8* %481) #2
  br label %482

482:                                              ; preds = %478
  %indvars.iv.next44 = add nsw i64 %indvars.iv43, -1
  br label %475

483:                                              ; preds = %477
  br label %484

484:                                              ; preds = %503, %483
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %503 ], [ 0, %483 ]
  %exitcond42 = icmp ne i64 %indvars.iv40, 1000000
  br i1 %exitcond42, label %486, label %485

485:                                              ; preds = %484
  br label %504

486:                                              ; preds = %484
  %487 = call noalias i8* @malloc(i64 204) #2
  %488 = bitcast i8* %487 to %struct.Book*
  %489 = getelementptr inbounds %struct.Book, %struct.Book* %488, i32 0, i32 0
  %490 = getelementptr inbounds [50 x i8], [50 x i8]* %489, i64 0, i64 0
  %491 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %492 = call i8* @strcpy(i8* %490, i8* %491) #2
  %493 = getelementptr inbounds %struct.Book, %struct.Book* %488, i32 0, i32 1
  %494 = getelementptr inbounds [50 x i8], [50 x i8]* %493, i64 0, i64 0
  %495 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %496 = call i8* @strcpy(i8* %494, i8* %495) #2
  %497 = getelementptr inbounds %struct.Book, %struct.Book* %488, i32 0, i32 2
  %498 = getelementptr inbounds [100 x i8], [100 x i8]* %497, i64 0, i64 0
  %499 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %500 = call i8* @strcpy(i8* %498, i8* %499) #2
  %501 = getelementptr inbounds %struct.Book, %struct.Book* %488, i32 0, i32 3
  store i32 6495407, i32* %501, align 4, !tbaa !2
  %502 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv40
  store %struct.Book* %488, %struct.Book** %502, align 8, !tbaa !7
  br label %503

503:                                              ; preds = %486
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %484

504:                                              ; preds = %485
  br label %505

505:                                              ; preds = %512, %504
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %512 ], [ 999999, %504 ]
  %506 = icmp sge i64 %indvars.iv38, 0
  br i1 %506, label %508, label %507

507:                                              ; preds = %505
  br label %513

508:                                              ; preds = %505
  %509 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv38
  %510 = load %struct.Book*, %struct.Book** %509, align 8, !tbaa !7
  %511 = bitcast %struct.Book* %510 to i8*
  call void @free(i8* %511) #2
  br label %512

512:                                              ; preds = %508
  %indvars.iv.next39 = add nsw i64 %indvars.iv38, -1
  br label %505

513:                                              ; preds = %507
  br label %514

514:                                              ; preds = %533, %513
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %533 ], [ 0, %513 ]
  %exitcond = icmp ne i64 %indvars.iv36, 1000000
  br i1 %exitcond, label %516, label %515

515:                                              ; preds = %514
  br label %534

516:                                              ; preds = %514
  %517 = call noalias i8* @malloc(i64 204) #2
  %518 = bitcast i8* %517 to %struct.Book*
  %519 = getelementptr inbounds %struct.Book, %struct.Book* %518, i32 0, i32 0
  %520 = getelementptr inbounds [50 x i8], [50 x i8]* %519, i64 0, i64 0
  %521 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %522 = call i8* @strcpy(i8* %520, i8* %521) #2
  %523 = getelementptr inbounds %struct.Book, %struct.Book* %518, i32 0, i32 1
  %524 = getelementptr inbounds [50 x i8], [50 x i8]* %523, i64 0, i64 0
  %525 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %526 = call i8* @strcpy(i8* %524, i8* %525) #2
  %527 = getelementptr inbounds %struct.Book, %struct.Book* %518, i32 0, i32 2
  %528 = getelementptr inbounds [100 x i8], [100 x i8]* %527, i64 0, i64 0
  %529 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %530 = call i8* @strcpy(i8* %528, i8* %529) #2
  %531 = getelementptr inbounds %struct.Book, %struct.Book* %518, i32 0, i32 3
  store i32 6495407, i32* %531, align 4, !tbaa !2
  %532 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv36
  store %struct.Book* %518, %struct.Book** %532, align 8, !tbaa !7
  br label %533

533:                                              ; preds = %516
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  br label %514

534:                                              ; preds = %515
  br label %535

535:                                              ; preds = %542, %534
  %indvars.iv = phi i64 [ %indvars.iv.next, %542 ], [ 999999, %534 ]
  %536 = icmp sge i64 %indvars.iv, 0
  br i1 %536, label %538, label %537

537:                                              ; preds = %535
  br label %543

538:                                              ; preds = %535
  %539 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv
  %540 = load %struct.Book*, %struct.Book** %539, align 8, !tbaa !7
  %541 = bitcast %struct.Book* %540 to i8*
  call void @free(i8* %541) #2
  br label %542

542:                                              ; preds = %538
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br label %535

543:                                              ; preds = %537
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

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

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
