; ModuleID = 'big-alloc.ll'
source_filename = "../code-samples/big-alloc.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Book = type { [1024 x i8], i32 }

@.str = private unnamed_addr constant [25 x i8] c"C Programming Tutorial A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"C Programming Tutorial B\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"C Programming Tutorial C\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"C Programming Tutorial D\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"C Programming Tutorial E\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"C Programming Tutorial F\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"C Programming Tutorial G\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"C Programming Tutorial H\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"C Programming Tutorial I\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"C Programming Tutorial J\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"C Programming Tutorial K\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"C Programming Tutorial L\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"C Programming Tutorial M\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"C Programming Tutorial N\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"C Programming Tutorial O\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"C Programming Tutorial P\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"C Programming Tutorial Q\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"C Programming Tutorial R\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"C Programming Tutorial S\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = zext i32 1000000 to i64
  %2 = call i8* @llvm.stacksave()
  %3 = alloca %struct.Book*, i64 %1, align 16
  br label %4

4:                                                ; preds = %15, %0
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %15 ], [ 0, %0 ]
  %exitcond129 = icmp ne i64 %indvars.iv127, 1000000
  br i1 %exitcond129, label %6, label %5

5:                                                ; preds = %4
  br label %16

6:                                                ; preds = %4
  %7 = call noalias i8* @malloc(i64 1028) #2
  %8 = bitcast i8* %7 to %struct.Book*
  %9 = getelementptr inbounds %struct.Book, %struct.Book* %8, i32 0, i32 0
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %11 = getelementptr [25 x i8], [25 x i8]* @.str, i64 0, i64 0
  %12 = call i8* @strcpy(i8* %10, i8* %11) #2
  %13 = getelementptr inbounds %struct.Book, %struct.Book* %8, i32 0, i32 1
  store i32 6495407, i32* %13, align 4, !tbaa !2
  %14 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv127
  store %struct.Book* %8, %struct.Book** %14, align 8, !tbaa !7
  br label %15

15:                                               ; preds = %6
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1
  br label %4

16:                                               ; preds = %5
  br label %17

17:                                               ; preds = %24, %16
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %24 ], [ 999999, %16 ]
  %18 = icmp sge i64 %indvars.iv125, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  br label %25

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv125
  %22 = load %struct.Book*, %struct.Book** %21, align 8, !tbaa !7
  %23 = bitcast %struct.Book* %22 to i8*
  call void @free(i8* %23) #2
  br label %24

24:                                               ; preds = %20
  %indvars.iv.next126 = add nsw i64 %indvars.iv125, -1
  br label %17

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %37, %25
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %37 ], [ 0, %25 ]
  %exitcond124 = icmp ne i64 %indvars.iv122, 1000000
  br i1 %exitcond124, label %28, label %27

27:                                               ; preds = %26
  br label %38

28:                                               ; preds = %26
  %29 = call noalias i8* @malloc(i64 1028) #2
  %30 = bitcast i8* %29 to %struct.Book*
  %31 = getelementptr inbounds %struct.Book, %struct.Book* %30, i32 0, i32 0
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %31, i64 0, i64 0
  %33 = getelementptr [25 x i8], [25 x i8]* @.str.1, i64 0, i64 0
  %34 = call i8* @strcpy(i8* %32, i8* %33) #2
  %35 = getelementptr inbounds %struct.Book, %struct.Book* %30, i32 0, i32 1
  store i32 6495408, i32* %35, align 4, !tbaa !2
  %36 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv122
  store %struct.Book* %30, %struct.Book** %36, align 8, !tbaa !7
  br label %37

37:                                               ; preds = %28
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1
  br label %26

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %46, %38
  %indvars.iv120 = phi i64 [ %indvars.iv.next121, %46 ], [ 999999, %38 ]
  %40 = icmp sge i64 %indvars.iv120, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %39
  br label %47

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv120
  %44 = load %struct.Book*, %struct.Book** %43, align 8, !tbaa !7
  %45 = bitcast %struct.Book* %44 to i8*
  call void @free(i8* %45) #2
  br label %46

46:                                               ; preds = %42
  %indvars.iv.next121 = add nsw i64 %indvars.iv120, -1
  br label %39

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %59, %47
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %59 ], [ 0, %47 ]
  %exitcond119 = icmp ne i64 %indvars.iv117, 1000000
  br i1 %exitcond119, label %50, label %49

49:                                               ; preds = %48
  br label %60

50:                                               ; preds = %48
  %51 = call noalias i8* @malloc(i64 1028) #2
  %52 = bitcast i8* %51 to %struct.Book*
  %53 = getelementptr inbounds %struct.Book, %struct.Book* %52, i32 0, i32 0
  %54 = getelementptr inbounds [1024 x i8], [1024 x i8]* %53, i64 0, i64 0
  %55 = getelementptr [25 x i8], [25 x i8]* @.str.2, i64 0, i64 0
  %56 = call i8* @strcpy(i8* %54, i8* %55) #2
  %57 = getelementptr inbounds %struct.Book, %struct.Book* %52, i32 0, i32 1
  store i32 6495409, i32* %57, align 4, !tbaa !2
  %58 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv117
  store %struct.Book* %52, %struct.Book** %58, align 8, !tbaa !7
  br label %59

59:                                               ; preds = %50
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1
  br label %48

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %68, %60
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %68 ], [ 999999, %60 ]
  %62 = icmp sge i64 %indvars.iv115, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %61
  br label %69

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv115
  %66 = load %struct.Book*, %struct.Book** %65, align 8, !tbaa !7
  %67 = bitcast %struct.Book* %66 to i8*
  call void @free(i8* %67) #2
  br label %68

68:                                               ; preds = %64
  %indvars.iv.next116 = add nsw i64 %indvars.iv115, -1
  br label %61

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %81, %69
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %81 ], [ 0, %69 ]
  %exitcond114 = icmp ne i64 %indvars.iv112, 1000000
  br i1 %exitcond114, label %72, label %71

71:                                               ; preds = %70
  br label %82

72:                                               ; preds = %70
  %73 = call noalias i8* @malloc(i64 1028) #2
  %74 = bitcast i8* %73 to %struct.Book*
  %75 = getelementptr inbounds %struct.Book, %struct.Book* %74, i32 0, i32 0
  %76 = getelementptr inbounds [1024 x i8], [1024 x i8]* %75, i64 0, i64 0
  %77 = getelementptr [25 x i8], [25 x i8]* @.str.3, i64 0, i64 0
  %78 = call i8* @strcpy(i8* %76, i8* %77) #2
  %79 = getelementptr inbounds %struct.Book, %struct.Book* %74, i32 0, i32 1
  store i32 6495410, i32* %79, align 4, !tbaa !2
  %80 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv112
  store %struct.Book* %74, %struct.Book** %80, align 8, !tbaa !7
  br label %81

81:                                               ; preds = %72
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  br label %70

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %90, %82
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %90 ], [ 999999, %82 ]
  %84 = icmp sge i64 %indvars.iv110, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %83
  br label %91

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv110
  %88 = load %struct.Book*, %struct.Book** %87, align 8, !tbaa !7
  %89 = bitcast %struct.Book* %88 to i8*
  call void @free(i8* %89) #2
  br label %90

90:                                               ; preds = %86
  %indvars.iv.next111 = add nsw i64 %indvars.iv110, -1
  br label %83

91:                                               ; preds = %85
  br label %92

92:                                               ; preds = %103, %91
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %103 ], [ 0, %91 ]
  %exitcond109 = icmp ne i64 %indvars.iv107, 1000000
  br i1 %exitcond109, label %94, label %93

93:                                               ; preds = %92
  br label %104

94:                                               ; preds = %92
  %95 = call noalias i8* @malloc(i64 1028) #2
  %96 = bitcast i8* %95 to %struct.Book*
  %97 = getelementptr inbounds %struct.Book, %struct.Book* %96, i32 0, i32 0
  %98 = getelementptr inbounds [1024 x i8], [1024 x i8]* %97, i64 0, i64 0
  %99 = getelementptr [25 x i8], [25 x i8]* @.str.4, i64 0, i64 0
  %100 = call i8* @strcpy(i8* %98, i8* %99) #2
  %101 = getelementptr inbounds %struct.Book, %struct.Book* %96, i32 0, i32 1
  store i32 6495411, i32* %101, align 4, !tbaa !2
  %102 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv107
  store %struct.Book* %96, %struct.Book** %102, align 8, !tbaa !7
  br label %103

103:                                              ; preds = %94
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1
  br label %92

104:                                              ; preds = %93
  br label %105

105:                                              ; preds = %112, %104
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %112 ], [ 999999, %104 ]
  %106 = icmp sge i64 %indvars.iv105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %105
  br label %113

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv105
  %110 = load %struct.Book*, %struct.Book** %109, align 8, !tbaa !7
  %111 = bitcast %struct.Book* %110 to i8*
  call void @free(i8* %111) #2
  br label %112

112:                                              ; preds = %108
  %indvars.iv.next106 = add nsw i64 %indvars.iv105, -1
  br label %105

113:                                              ; preds = %107
  br label %114

114:                                              ; preds = %125, %113
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %125 ], [ 0, %113 ]
  %exitcond104 = icmp ne i64 %indvars.iv102, 1000000
  br i1 %exitcond104, label %116, label %115

115:                                              ; preds = %114
  br label %126

116:                                              ; preds = %114
  %117 = call noalias i8* @malloc(i64 1028) #2
  %118 = bitcast i8* %117 to %struct.Book*
  %119 = getelementptr inbounds %struct.Book, %struct.Book* %118, i32 0, i32 0
  %120 = getelementptr inbounds [1024 x i8], [1024 x i8]* %119, i64 0, i64 0
  %121 = getelementptr [25 x i8], [25 x i8]* @.str.5, i64 0, i64 0
  %122 = call i8* @strcpy(i8* %120, i8* %121) #2
  %123 = getelementptr inbounds %struct.Book, %struct.Book* %118, i32 0, i32 1
  store i32 6495412, i32* %123, align 4, !tbaa !2
  %124 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv102
  store %struct.Book* %118, %struct.Book** %124, align 8, !tbaa !7
  br label %125

125:                                              ; preds = %116
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  br label %114

126:                                              ; preds = %115
  br label %127

127:                                              ; preds = %134, %126
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %134 ], [ 999999, %126 ]
  %128 = icmp sge i64 %indvars.iv100, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %127
  br label %135

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv100
  %132 = load %struct.Book*, %struct.Book** %131, align 8, !tbaa !7
  %133 = bitcast %struct.Book* %132 to i8*
  call void @free(i8* %133) #2
  br label %134

134:                                              ; preds = %130
  %indvars.iv.next101 = add nsw i64 %indvars.iv100, -1
  br label %127

135:                                              ; preds = %129
  br label %136

136:                                              ; preds = %147, %135
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %147 ], [ 0, %135 ]
  %exitcond99 = icmp ne i64 %indvars.iv97, 1000000
  br i1 %exitcond99, label %138, label %137

137:                                              ; preds = %136
  br label %148

138:                                              ; preds = %136
  %139 = call noalias i8* @malloc(i64 1028) #2
  %140 = bitcast i8* %139 to %struct.Book*
  %141 = getelementptr inbounds %struct.Book, %struct.Book* %140, i32 0, i32 0
  %142 = getelementptr inbounds [1024 x i8], [1024 x i8]* %141, i64 0, i64 0
  %143 = getelementptr [25 x i8], [25 x i8]* @.str.6, i64 0, i64 0
  %144 = call i8* @strcpy(i8* %142, i8* %143) #2
  %145 = getelementptr inbounds %struct.Book, %struct.Book* %140, i32 0, i32 1
  store i32 6495413, i32* %145, align 4, !tbaa !2
  %146 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv97
  store %struct.Book* %140, %struct.Book** %146, align 8, !tbaa !7
  br label %147

147:                                              ; preds = %138
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  br label %136

148:                                              ; preds = %137
  br label %149

149:                                              ; preds = %156, %148
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %156 ], [ 999999, %148 ]
  %150 = icmp sge i64 %indvars.iv95, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %149
  br label %157

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv95
  %154 = load %struct.Book*, %struct.Book** %153, align 8, !tbaa !7
  %155 = bitcast %struct.Book* %154 to i8*
  call void @free(i8* %155) #2
  br label %156

156:                                              ; preds = %152
  %indvars.iv.next96 = add nsw i64 %indvars.iv95, -1
  br label %149

157:                                              ; preds = %151
  br label %158

158:                                              ; preds = %169, %157
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %169 ], [ 0, %157 ]
  %exitcond94 = icmp ne i64 %indvars.iv92, 1000000
  br i1 %exitcond94, label %160, label %159

159:                                              ; preds = %158
  br label %170

160:                                              ; preds = %158
  %161 = call noalias i8* @malloc(i64 1028) #2
  %162 = bitcast i8* %161 to %struct.Book*
  %163 = getelementptr inbounds %struct.Book, %struct.Book* %162, i32 0, i32 0
  %164 = getelementptr inbounds [1024 x i8], [1024 x i8]* %163, i64 0, i64 0
  %165 = getelementptr [25 x i8], [25 x i8]* @.str.7, i64 0, i64 0
  %166 = call i8* @strcpy(i8* %164, i8* %165) #2
  %167 = getelementptr inbounds %struct.Book, %struct.Book* %162, i32 0, i32 1
  store i32 6495414, i32* %167, align 4, !tbaa !2
  %168 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv92
  store %struct.Book* %162, %struct.Book** %168, align 8, !tbaa !7
  br label %169

169:                                              ; preds = %160
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  br label %158

170:                                              ; preds = %159
  br label %171

171:                                              ; preds = %178, %170
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %178 ], [ 999999, %170 ]
  %172 = icmp sge i64 %indvars.iv90, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %171
  br label %179

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv90
  %176 = load %struct.Book*, %struct.Book** %175, align 8, !tbaa !7
  %177 = bitcast %struct.Book* %176 to i8*
  call void @free(i8* %177) #2
  br label %178

178:                                              ; preds = %174
  %indvars.iv.next91 = add nsw i64 %indvars.iv90, -1
  br label %171

179:                                              ; preds = %173
  br label %180

180:                                              ; preds = %191, %179
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %191 ], [ 0, %179 ]
  %exitcond89 = icmp ne i64 %indvars.iv87, 1000000
  br i1 %exitcond89, label %182, label %181

181:                                              ; preds = %180
  br label %192

182:                                              ; preds = %180
  %183 = call noalias i8* @malloc(i64 1028) #2
  %184 = bitcast i8* %183 to %struct.Book*
  %185 = getelementptr inbounds %struct.Book, %struct.Book* %184, i32 0, i32 0
  %186 = getelementptr inbounds [1024 x i8], [1024 x i8]* %185, i64 0, i64 0
  %187 = getelementptr [25 x i8], [25 x i8]* @.str.8, i64 0, i64 0
  %188 = call i8* @strcpy(i8* %186, i8* %187) #2
  %189 = getelementptr inbounds %struct.Book, %struct.Book* %184, i32 0, i32 1
  store i32 6495415, i32* %189, align 4, !tbaa !2
  %190 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv87
  store %struct.Book* %184, %struct.Book** %190, align 8, !tbaa !7
  br label %191

191:                                              ; preds = %182
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  br label %180

192:                                              ; preds = %181
  br label %193

193:                                              ; preds = %200, %192
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %200 ], [ 999999, %192 ]
  %194 = icmp sge i64 %indvars.iv85, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %193
  br label %201

196:                                              ; preds = %193
  %197 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv85
  %198 = load %struct.Book*, %struct.Book** %197, align 8, !tbaa !7
  %199 = bitcast %struct.Book* %198 to i8*
  call void @free(i8* %199) #2
  br label %200

200:                                              ; preds = %196
  %indvars.iv.next86 = add nsw i64 %indvars.iv85, -1
  br label %193

201:                                              ; preds = %195
  br label %202

202:                                              ; preds = %213, %201
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %213 ], [ 0, %201 ]
  %exitcond84 = icmp ne i64 %indvars.iv82, 1000000
  br i1 %exitcond84, label %204, label %203

203:                                              ; preds = %202
  br label %214

204:                                              ; preds = %202
  %205 = call noalias i8* @malloc(i64 1028) #2
  %206 = bitcast i8* %205 to %struct.Book*
  %207 = getelementptr inbounds %struct.Book, %struct.Book* %206, i32 0, i32 0
  %208 = getelementptr inbounds [1024 x i8], [1024 x i8]* %207, i64 0, i64 0
  %209 = getelementptr [25 x i8], [25 x i8]* @.str.9, i64 0, i64 0
  %210 = call i8* @strcpy(i8* %208, i8* %209) #2
  %211 = getelementptr inbounds %struct.Book, %struct.Book* %206, i32 0, i32 1
  store i32 6495416, i32* %211, align 4, !tbaa !2
  %212 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv82
  store %struct.Book* %206, %struct.Book** %212, align 8, !tbaa !7
  br label %213

213:                                              ; preds = %204
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  br label %202

214:                                              ; preds = %203
  br label %215

215:                                              ; preds = %222, %214
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %222 ], [ 999999, %214 ]
  %216 = icmp sge i64 %indvars.iv80, 0
  br i1 %216, label %218, label %217

217:                                              ; preds = %215
  br label %223

218:                                              ; preds = %215
  %219 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv80
  %220 = load %struct.Book*, %struct.Book** %219, align 8, !tbaa !7
  %221 = bitcast %struct.Book* %220 to i8*
  call void @free(i8* %221) #2
  br label %222

222:                                              ; preds = %218
  %indvars.iv.next81 = add nsw i64 %indvars.iv80, -1
  br label %215

223:                                              ; preds = %217
  br label %224

224:                                              ; preds = %235, %223
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %235 ], [ 0, %223 ]
  %exitcond79 = icmp ne i64 %indvars.iv77, 1000000
  br i1 %exitcond79, label %226, label %225

225:                                              ; preds = %224
  br label %236

226:                                              ; preds = %224
  %227 = call noalias i8* @malloc(i64 1028) #2
  %228 = bitcast i8* %227 to %struct.Book*
  %229 = getelementptr inbounds %struct.Book, %struct.Book* %228, i32 0, i32 0
  %230 = getelementptr inbounds [1024 x i8], [1024 x i8]* %229, i64 0, i64 0
  %231 = getelementptr [25 x i8], [25 x i8]* @.str.10, i64 0, i64 0
  %232 = call i8* @strcpy(i8* %230, i8* %231) #2
  %233 = getelementptr inbounds %struct.Book, %struct.Book* %228, i32 0, i32 1
  store i32 6495417, i32* %233, align 4, !tbaa !2
  %234 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv77
  store %struct.Book* %228, %struct.Book** %234, align 8, !tbaa !7
  br label %235

235:                                              ; preds = %226
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  br label %224

236:                                              ; preds = %225
  br label %237

237:                                              ; preds = %244, %236
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %244 ], [ 999999, %236 ]
  %238 = icmp sge i64 %indvars.iv75, 0
  br i1 %238, label %240, label %239

239:                                              ; preds = %237
  br label %245

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv75
  %242 = load %struct.Book*, %struct.Book** %241, align 8, !tbaa !7
  %243 = bitcast %struct.Book* %242 to i8*
  call void @free(i8* %243) #2
  br label %244

244:                                              ; preds = %240
  %indvars.iv.next76 = add nsw i64 %indvars.iv75, -1
  br label %237

245:                                              ; preds = %239
  br label %246

246:                                              ; preds = %257, %245
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %257 ], [ 0, %245 ]
  %exitcond74 = icmp ne i64 %indvars.iv72, 1000000
  br i1 %exitcond74, label %248, label %247

247:                                              ; preds = %246
  br label %258

248:                                              ; preds = %246
  %249 = call noalias i8* @malloc(i64 1028) #2
  %250 = bitcast i8* %249 to %struct.Book*
  %251 = getelementptr inbounds %struct.Book, %struct.Book* %250, i32 0, i32 0
  %252 = getelementptr inbounds [1024 x i8], [1024 x i8]* %251, i64 0, i64 0
  %253 = getelementptr [25 x i8], [25 x i8]* @.str.11, i64 0, i64 0
  %254 = call i8* @strcpy(i8* %252, i8* %253) #2
  %255 = getelementptr inbounds %struct.Book, %struct.Book* %250, i32 0, i32 1
  store i32 6495418, i32* %255, align 4, !tbaa !2
  %256 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv72
  store %struct.Book* %250, %struct.Book** %256, align 8, !tbaa !7
  br label %257

257:                                              ; preds = %248
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  br label %246

258:                                              ; preds = %247
  br label %259

259:                                              ; preds = %266, %258
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %266 ], [ 999999, %258 ]
  %260 = icmp sge i64 %indvars.iv70, 0
  br i1 %260, label %262, label %261

261:                                              ; preds = %259
  br label %267

262:                                              ; preds = %259
  %263 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv70
  %264 = load %struct.Book*, %struct.Book** %263, align 8, !tbaa !7
  %265 = bitcast %struct.Book* %264 to i8*
  call void @free(i8* %265) #2
  br label %266

266:                                              ; preds = %262
  %indvars.iv.next71 = add nsw i64 %indvars.iv70, -1
  br label %259

267:                                              ; preds = %261
  br label %268

268:                                              ; preds = %279, %267
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %279 ], [ 0, %267 ]
  %exitcond69 = icmp ne i64 %indvars.iv67, 1000000
  br i1 %exitcond69, label %270, label %269

269:                                              ; preds = %268
  br label %280

270:                                              ; preds = %268
  %271 = call noalias i8* @malloc(i64 1028) #2
  %272 = bitcast i8* %271 to %struct.Book*
  %273 = getelementptr inbounds %struct.Book, %struct.Book* %272, i32 0, i32 0
  %274 = getelementptr inbounds [1024 x i8], [1024 x i8]* %273, i64 0, i64 0
  %275 = getelementptr [25 x i8], [25 x i8]* @.str.12, i64 0, i64 0
  %276 = call i8* @strcpy(i8* %274, i8* %275) #2
  %277 = getelementptr inbounds %struct.Book, %struct.Book* %272, i32 0, i32 1
  store i32 6495419, i32* %277, align 4, !tbaa !2
  %278 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv67
  store %struct.Book* %272, %struct.Book** %278, align 8, !tbaa !7
  br label %279

279:                                              ; preds = %270
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  br label %268

280:                                              ; preds = %269
  br label %281

281:                                              ; preds = %288, %280
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %288 ], [ 999999, %280 ]
  %282 = icmp sge i64 %indvars.iv65, 0
  br i1 %282, label %284, label %283

283:                                              ; preds = %281
  br label %289

284:                                              ; preds = %281
  %285 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv65
  %286 = load %struct.Book*, %struct.Book** %285, align 8, !tbaa !7
  %287 = bitcast %struct.Book* %286 to i8*
  call void @free(i8* %287) #2
  br label %288

288:                                              ; preds = %284
  %indvars.iv.next66 = add nsw i64 %indvars.iv65, -1
  br label %281

289:                                              ; preds = %283
  br label %290

290:                                              ; preds = %301, %289
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %301 ], [ 0, %289 ]
  %exitcond64 = icmp ne i64 %indvars.iv62, 1000000
  br i1 %exitcond64, label %292, label %291

291:                                              ; preds = %290
  br label %302

292:                                              ; preds = %290
  %293 = call noalias i8* @malloc(i64 1028) #2
  %294 = bitcast i8* %293 to %struct.Book*
  %295 = getelementptr inbounds %struct.Book, %struct.Book* %294, i32 0, i32 0
  %296 = getelementptr inbounds [1024 x i8], [1024 x i8]* %295, i64 0, i64 0
  %297 = getelementptr [25 x i8], [25 x i8]* @.str.13, i64 0, i64 0
  %298 = call i8* @strcpy(i8* %296, i8* %297) #2
  %299 = getelementptr inbounds %struct.Book, %struct.Book* %294, i32 0, i32 1
  store i32 6495420, i32* %299, align 4, !tbaa !2
  %300 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv62
  store %struct.Book* %294, %struct.Book** %300, align 8, !tbaa !7
  br label %301

301:                                              ; preds = %292
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  br label %290

302:                                              ; preds = %291
  br label %303

303:                                              ; preds = %310, %302
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %310 ], [ 999999, %302 ]
  %304 = icmp sge i64 %indvars.iv60, 0
  br i1 %304, label %306, label %305

305:                                              ; preds = %303
  br label %311

306:                                              ; preds = %303
  %307 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv60
  %308 = load %struct.Book*, %struct.Book** %307, align 8, !tbaa !7
  %309 = bitcast %struct.Book* %308 to i8*
  call void @free(i8* %309) #2
  br label %310

310:                                              ; preds = %306
  %indvars.iv.next61 = add nsw i64 %indvars.iv60, -1
  br label %303

311:                                              ; preds = %305
  br label %312

312:                                              ; preds = %323, %311
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %323 ], [ 0, %311 ]
  %exitcond59 = icmp ne i64 %indvars.iv57, 1000000
  br i1 %exitcond59, label %314, label %313

313:                                              ; preds = %312
  br label %324

314:                                              ; preds = %312
  %315 = call noalias i8* @malloc(i64 1028) #2
  %316 = bitcast i8* %315 to %struct.Book*
  %317 = getelementptr inbounds %struct.Book, %struct.Book* %316, i32 0, i32 0
  %318 = getelementptr inbounds [1024 x i8], [1024 x i8]* %317, i64 0, i64 0
  %319 = getelementptr [25 x i8], [25 x i8]* @.str.14, i64 0, i64 0
  %320 = call i8* @strcpy(i8* %318, i8* %319) #2
  %321 = getelementptr inbounds %struct.Book, %struct.Book* %316, i32 0, i32 1
  store i32 6495421, i32* %321, align 4, !tbaa !2
  %322 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv57
  store %struct.Book* %316, %struct.Book** %322, align 8, !tbaa !7
  br label %323

323:                                              ; preds = %314
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  br label %312

324:                                              ; preds = %313
  br label %325

325:                                              ; preds = %332, %324
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %332 ], [ 999999, %324 ]
  %326 = icmp sge i64 %indvars.iv55, 0
  br i1 %326, label %328, label %327

327:                                              ; preds = %325
  br label %333

328:                                              ; preds = %325
  %329 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv55
  %330 = load %struct.Book*, %struct.Book** %329, align 8, !tbaa !7
  %331 = bitcast %struct.Book* %330 to i8*
  call void @free(i8* %331) #2
  br label %332

332:                                              ; preds = %328
  %indvars.iv.next56 = add nsw i64 %indvars.iv55, -1
  br label %325

333:                                              ; preds = %327
  br label %334

334:                                              ; preds = %345, %333
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %345 ], [ 0, %333 ]
  %exitcond54 = icmp ne i64 %indvars.iv52, 1000000
  br i1 %exitcond54, label %336, label %335

335:                                              ; preds = %334
  br label %346

336:                                              ; preds = %334
  %337 = call noalias i8* @malloc(i64 1028) #2
  %338 = bitcast i8* %337 to %struct.Book*
  %339 = getelementptr inbounds %struct.Book, %struct.Book* %338, i32 0, i32 0
  %340 = getelementptr inbounds [1024 x i8], [1024 x i8]* %339, i64 0, i64 0
  %341 = getelementptr [25 x i8], [25 x i8]* @.str.15, i64 0, i64 0
  %342 = call i8* @strcpy(i8* %340, i8* %341) #2
  %343 = getelementptr inbounds %struct.Book, %struct.Book* %338, i32 0, i32 1
  store i32 6495422, i32* %343, align 4, !tbaa !2
  %344 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv52
  store %struct.Book* %338, %struct.Book** %344, align 8, !tbaa !7
  br label %345

345:                                              ; preds = %336
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  br label %334

346:                                              ; preds = %335
  br label %347

347:                                              ; preds = %354, %346
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %354 ], [ 999999, %346 ]
  %348 = icmp sge i64 %indvars.iv50, 0
  br i1 %348, label %350, label %349

349:                                              ; preds = %347
  br label %355

350:                                              ; preds = %347
  %351 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv50
  %352 = load %struct.Book*, %struct.Book** %351, align 8, !tbaa !7
  %353 = bitcast %struct.Book* %352 to i8*
  call void @free(i8* %353) #2
  br label %354

354:                                              ; preds = %350
  %indvars.iv.next51 = add nsw i64 %indvars.iv50, -1
  br label %347

355:                                              ; preds = %349
  br label %356

356:                                              ; preds = %367, %355
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %367 ], [ 0, %355 ]
  %exitcond49 = icmp ne i64 %indvars.iv47, 1000000
  br i1 %exitcond49, label %358, label %357

357:                                              ; preds = %356
  br label %368

358:                                              ; preds = %356
  %359 = call noalias i8* @malloc(i64 1028) #2
  %360 = bitcast i8* %359 to %struct.Book*
  %361 = getelementptr inbounds %struct.Book, %struct.Book* %360, i32 0, i32 0
  %362 = getelementptr inbounds [1024 x i8], [1024 x i8]* %361, i64 0, i64 0
  %363 = getelementptr [25 x i8], [25 x i8]* @.str.16, i64 0, i64 0
  %364 = call i8* @strcpy(i8* %362, i8* %363) #2
  %365 = getelementptr inbounds %struct.Book, %struct.Book* %360, i32 0, i32 1
  store i32 6495423, i32* %365, align 4, !tbaa !2
  %366 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv47
  store %struct.Book* %360, %struct.Book** %366, align 8, !tbaa !7
  br label %367

367:                                              ; preds = %358
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br label %356

368:                                              ; preds = %357
  br label %369

369:                                              ; preds = %376, %368
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %376 ], [ 999999, %368 ]
  %370 = icmp sge i64 %indvars.iv45, 0
  br i1 %370, label %372, label %371

371:                                              ; preds = %369
  br label %377

372:                                              ; preds = %369
  %373 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv45
  %374 = load %struct.Book*, %struct.Book** %373, align 8, !tbaa !7
  %375 = bitcast %struct.Book* %374 to i8*
  call void @free(i8* %375) #2
  br label %376

376:                                              ; preds = %372
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, -1
  br label %369

377:                                              ; preds = %371
  br label %378

378:                                              ; preds = %389, %377
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %389 ], [ 0, %377 ]
  %exitcond44 = icmp ne i64 %indvars.iv42, 1000000
  br i1 %exitcond44, label %380, label %379

379:                                              ; preds = %378
  br label %390

380:                                              ; preds = %378
  %381 = call noalias i8* @malloc(i64 1028) #2
  %382 = bitcast i8* %381 to %struct.Book*
  %383 = getelementptr inbounds %struct.Book, %struct.Book* %382, i32 0, i32 0
  %384 = getelementptr inbounds [1024 x i8], [1024 x i8]* %383, i64 0, i64 0
  %385 = getelementptr [25 x i8], [25 x i8]* @.str.17, i64 0, i64 0
  %386 = call i8* @strcpy(i8* %384, i8* %385) #2
  %387 = getelementptr inbounds %struct.Book, %struct.Book* %382, i32 0, i32 1
  store i32 6495424, i32* %387, align 4, !tbaa !2
  %388 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv42
  store %struct.Book* %382, %struct.Book** %388, align 8, !tbaa !7
  br label %389

389:                                              ; preds = %380
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %378

390:                                              ; preds = %379
  br label %391

391:                                              ; preds = %398, %390
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %398 ], [ 999999, %390 ]
  %392 = icmp sge i64 %indvars.iv40, 0
  br i1 %392, label %394, label %393

393:                                              ; preds = %391
  br label %399

394:                                              ; preds = %391
  %395 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv40
  %396 = load %struct.Book*, %struct.Book** %395, align 8, !tbaa !7
  %397 = bitcast %struct.Book* %396 to i8*
  call void @free(i8* %397) #2
  br label %398

398:                                              ; preds = %394
  %indvars.iv.next41 = add nsw i64 %indvars.iv40, -1
  br label %391

399:                                              ; preds = %393
  br label %400

400:                                              ; preds = %411, %399
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %411 ], [ 0, %399 ]
  %exitcond = icmp ne i64 %indvars.iv38, 1000000
  br i1 %exitcond, label %402, label %401

401:                                              ; preds = %400
  br label %412

402:                                              ; preds = %400
  %403 = call noalias i8* @malloc(i64 1028) #2
  %404 = bitcast i8* %403 to %struct.Book*
  %405 = getelementptr inbounds %struct.Book, %struct.Book* %404, i32 0, i32 0
  %406 = getelementptr inbounds [1024 x i8], [1024 x i8]* %405, i64 0, i64 0
  %407 = getelementptr [25 x i8], [25 x i8]* @.str.18, i64 0, i64 0
  %408 = call i8* @strcpy(i8* %406, i8* %407) #2
  %409 = getelementptr inbounds %struct.Book, %struct.Book* %404, i32 0, i32 1
  store i32 6495425, i32* %409, align 4, !tbaa !2
  %410 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv38
  store %struct.Book* %404, %struct.Book** %410, align 8, !tbaa !7
  br label %411

411:                                              ; preds = %402
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %400

412:                                              ; preds = %401
  br label %413

413:                                              ; preds = %420, %412
  %indvars.iv = phi i64 [ %indvars.iv.next, %420 ], [ 999999, %412 ]
  %414 = icmp sge i64 %indvars.iv, 0
  br i1 %414, label %416, label %415

415:                                              ; preds = %413
  br label %421

416:                                              ; preds = %413
  %417 = getelementptr inbounds %struct.Book*, %struct.Book** %3, i64 %indvars.iv
  %418 = load %struct.Book*, %struct.Book** %417, align 8, !tbaa !7
  %419 = bitcast %struct.Book* %418 to i8*
  call void @free(i8* %419) #2
  br label %420

420:                                              ; preds = %416
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br label %413

421:                                              ; preds = %415
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
!2 = !{!3, !6, i64 1024}
!3 = !{!"Book", !4, i64 0, !6, i64 1024}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"int", !4, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !4, i64 0}
