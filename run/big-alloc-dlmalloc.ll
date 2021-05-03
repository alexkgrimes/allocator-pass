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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Book*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.Book*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.Book*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.Book*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.Book*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.Book*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.Book*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.Book*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.Book*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca %struct.Book*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca %struct.Book*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca %struct.Book*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca %struct.Book*, align 8
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca %struct.Book*, align 8
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca %struct.Book*, align 8
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca %struct.Book*, align 8
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca %struct.Book*, align 8
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca %struct.Book*, align 8
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca %struct.Book*, align 8
  %61 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1000000, i32* %2, align 4
  %62 = load i32, i32* %2, align 4
  %63 = zext i32 %62 to i64
  %64 = call i8* @llvm.stacksave()
  store i8* %64, i8** %3, align 8
  %65 = alloca %struct.Book*, i64 %63, align 16
  store i64 %63, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %84, %0
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %2, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %66
  %71 = call i8* @dlmalloc(i64 1028)
  %72 = bitcast i8* %71 to %struct.Book*
  store %struct.Book* %72, %struct.Book** %6, align 8
  %73 = load %struct.Book*, %struct.Book** %6, align 8
  %74 = getelementptr inbounds %struct.Book, %struct.Book* %73, i32 0, i32 0
  %75 = getelementptr inbounds [1024 x i8], [1024 x i8]* %74, i64 0, i64 0
  %76 = getelementptr [25 x i8], [25 x i8]* @.str, i64 0, i64 0
  %77 = call i8* @strcpy(i8* %75, i8* %76) #1
  %78 = load %struct.Book*, %struct.Book** %6, align 8
  %79 = getelementptr inbounds %struct.Book, %struct.Book* %78, i32 0, i32 1
  store i32 6495407, i32* %79, align 4
  %80 = load %struct.Book*, %struct.Book** %6, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %82
  store %struct.Book* %80, %struct.Book** %83, align 8
  br label %84

84:                                               ; preds = %70
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %66

87:                                               ; preds = %66
  %88 = load i32, i32* %2, align 4
  %89 = sub nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %99, %87
  %91 = load i32, i32* %7, align 4
  %92 = icmp sge i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %95
  %97 = load %struct.Book*, %struct.Book** %96, align 8
  %98 = bitcast %struct.Book* %97 to i8*
  call void @dlfree(i8* %98)
  br label %99

99:                                               ; preds = %93
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %7, align 4
  br label %90

102:                                              ; preds = %90
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %121, %102
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %2, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %124

107:                                              ; preds = %103
  %108 = call i8* @dlmalloc(i64 1028)
  %109 = bitcast i8* %108 to %struct.Book*
  store %struct.Book* %109, %struct.Book** %9, align 8
  %110 = load %struct.Book*, %struct.Book** %9, align 8
  %111 = getelementptr inbounds %struct.Book, %struct.Book* %110, i32 0, i32 0
  %112 = getelementptr inbounds [1024 x i8], [1024 x i8]* %111, i64 0, i64 0
  %113 = getelementptr [25 x i8], [25 x i8]* @.str.1, i64 0, i64 0
  %114 = call i8* @strcpy(i8* %112, i8* %113) #1
  %115 = load %struct.Book*, %struct.Book** %9, align 8
  %116 = getelementptr inbounds %struct.Book, %struct.Book* %115, i32 0, i32 1
  store i32 6495408, i32* %116, align 4
  %117 = load %struct.Book*, %struct.Book** %9, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %119
  store %struct.Book* %117, %struct.Book** %120, align 8
  br label %121

121:                                              ; preds = %107
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %8, align 4
  br label %103

124:                                              ; preds = %103
  %125 = load i32, i32* %2, align 4
  %126 = sub nsw i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %127

127:                                              ; preds = %136, %124
  %128 = load i32, i32* %10, align 4
  %129 = icmp sge i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %127
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %132
  %134 = load %struct.Book*, %struct.Book** %133, align 8
  %135 = bitcast %struct.Book* %134 to i8*
  call void @dlfree(i8* %135)
  br label %136

136:                                              ; preds = %130
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %10, align 4
  br label %127

139:                                              ; preds = %127
  store i32 0, i32* %11, align 4
  br label %140

140:                                              ; preds = %158, %139
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %2, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %161

144:                                              ; preds = %140
  %145 = call i8* @dlmalloc(i64 1028)
  %146 = bitcast i8* %145 to %struct.Book*
  store %struct.Book* %146, %struct.Book** %12, align 8
  %147 = load %struct.Book*, %struct.Book** %12, align 8
  %148 = getelementptr inbounds %struct.Book, %struct.Book* %147, i32 0, i32 0
  %149 = getelementptr inbounds [1024 x i8], [1024 x i8]* %148, i64 0, i64 0
  %150 = getelementptr [25 x i8], [25 x i8]* @.str.2, i64 0, i64 0
  %151 = call i8* @strcpy(i8* %149, i8* %150) #1
  %152 = load %struct.Book*, %struct.Book** %12, align 8
  %153 = getelementptr inbounds %struct.Book, %struct.Book* %152, i32 0, i32 1
  store i32 6495409, i32* %153, align 4
  %154 = load %struct.Book*, %struct.Book** %12, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %156
  store %struct.Book* %154, %struct.Book** %157, align 8
  br label %158

158:                                              ; preds = %144
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %140

161:                                              ; preds = %140
  %162 = load i32, i32* %2, align 4
  %163 = sub nsw i32 %162, 1
  store i32 %163, i32* %13, align 4
  br label %164

164:                                              ; preds = %173, %161
  %165 = load i32, i32* %13, align 4
  %166 = icmp sge i32 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %164
  %168 = load i32, i32* %13, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %169
  %171 = load %struct.Book*, %struct.Book** %170, align 8
  %172 = bitcast %struct.Book* %171 to i8*
  call void @dlfree(i8* %172)
  br label %173

173:                                              ; preds = %167
  %174 = load i32, i32* %13, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %13, align 4
  br label %164

176:                                              ; preds = %164
  store i32 0, i32* %14, align 4
  br label %177

177:                                              ; preds = %195, %176
  %178 = load i32, i32* %14, align 4
  %179 = load i32, i32* %2, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %198

181:                                              ; preds = %177
  %182 = call i8* @dlmalloc(i64 1028)
  %183 = bitcast i8* %182 to %struct.Book*
  store %struct.Book* %183, %struct.Book** %15, align 8
  %184 = load %struct.Book*, %struct.Book** %15, align 8
  %185 = getelementptr inbounds %struct.Book, %struct.Book* %184, i32 0, i32 0
  %186 = getelementptr inbounds [1024 x i8], [1024 x i8]* %185, i64 0, i64 0
  %187 = getelementptr [25 x i8], [25 x i8]* @.str.3, i64 0, i64 0
  %188 = call i8* @strcpy(i8* %186, i8* %187) #1
  %189 = load %struct.Book*, %struct.Book** %15, align 8
  %190 = getelementptr inbounds %struct.Book, %struct.Book* %189, i32 0, i32 1
  store i32 6495410, i32* %190, align 4
  %191 = load %struct.Book*, %struct.Book** %15, align 8
  %192 = load i32, i32* %14, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %193
  store %struct.Book* %191, %struct.Book** %194, align 8
  br label %195

195:                                              ; preds = %181
  %196 = load i32, i32* %14, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %14, align 4
  br label %177

198:                                              ; preds = %177
  %199 = load i32, i32* %2, align 4
  %200 = sub nsw i32 %199, 1
  store i32 %200, i32* %16, align 4
  br label %201

201:                                              ; preds = %210, %198
  %202 = load i32, i32* %16, align 4
  %203 = icmp sge i32 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %201
  %205 = load i32, i32* %16, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %206
  %208 = load %struct.Book*, %struct.Book** %207, align 8
  %209 = bitcast %struct.Book* %208 to i8*
  call void @dlfree(i8* %209)
  br label %210

210:                                              ; preds = %204
  %211 = load i32, i32* %16, align 4
  %212 = add nsw i32 %211, -1
  store i32 %212, i32* %16, align 4
  br label %201

213:                                              ; preds = %201
  store i32 0, i32* %17, align 4
  br label %214

214:                                              ; preds = %232, %213
  %215 = load i32, i32* %17, align 4
  %216 = load i32, i32* %2, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %235

218:                                              ; preds = %214
  %219 = call i8* @dlmalloc(i64 1028)
  %220 = bitcast i8* %219 to %struct.Book*
  store %struct.Book* %220, %struct.Book** %18, align 8
  %221 = load %struct.Book*, %struct.Book** %18, align 8
  %222 = getelementptr inbounds %struct.Book, %struct.Book* %221, i32 0, i32 0
  %223 = getelementptr inbounds [1024 x i8], [1024 x i8]* %222, i64 0, i64 0
  %224 = getelementptr [25 x i8], [25 x i8]* @.str.4, i64 0, i64 0
  %225 = call i8* @strcpy(i8* %223, i8* %224) #1
  %226 = load %struct.Book*, %struct.Book** %18, align 8
  %227 = getelementptr inbounds %struct.Book, %struct.Book* %226, i32 0, i32 1
  store i32 6495411, i32* %227, align 4
  %228 = load %struct.Book*, %struct.Book** %18, align 8
  %229 = load i32, i32* %17, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %230
  store %struct.Book* %228, %struct.Book** %231, align 8
  br label %232

232:                                              ; preds = %218
  %233 = load i32, i32* %17, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %17, align 4
  br label %214

235:                                              ; preds = %214
  %236 = load i32, i32* %2, align 4
  %237 = sub nsw i32 %236, 1
  store i32 %237, i32* %19, align 4
  br label %238

238:                                              ; preds = %247, %235
  %239 = load i32, i32* %19, align 4
  %240 = icmp sge i32 %239, 0
  br i1 %240, label %241, label %250

241:                                              ; preds = %238
  %242 = load i32, i32* %19, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %243
  %245 = load %struct.Book*, %struct.Book** %244, align 8
  %246 = bitcast %struct.Book* %245 to i8*
  call void @dlfree(i8* %246)
  br label %247

247:                                              ; preds = %241
  %248 = load i32, i32* %19, align 4
  %249 = add nsw i32 %248, -1
  store i32 %249, i32* %19, align 4
  br label %238

250:                                              ; preds = %238
  store i32 0, i32* %20, align 4
  br label %251

251:                                              ; preds = %269, %250
  %252 = load i32, i32* %20, align 4
  %253 = load i32, i32* %2, align 4
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %255, label %272

255:                                              ; preds = %251
  %256 = call i8* @dlmalloc(i64 1028)
  %257 = bitcast i8* %256 to %struct.Book*
  store %struct.Book* %257, %struct.Book** %21, align 8
  %258 = load %struct.Book*, %struct.Book** %21, align 8
  %259 = getelementptr inbounds %struct.Book, %struct.Book* %258, i32 0, i32 0
  %260 = getelementptr inbounds [1024 x i8], [1024 x i8]* %259, i64 0, i64 0
  %261 = getelementptr [25 x i8], [25 x i8]* @.str.5, i64 0, i64 0
  %262 = call i8* @strcpy(i8* %260, i8* %261) #1
  %263 = load %struct.Book*, %struct.Book** %21, align 8
  %264 = getelementptr inbounds %struct.Book, %struct.Book* %263, i32 0, i32 1
  store i32 6495412, i32* %264, align 4
  %265 = load %struct.Book*, %struct.Book** %21, align 8
  %266 = load i32, i32* %20, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %267
  store %struct.Book* %265, %struct.Book** %268, align 8
  br label %269

269:                                              ; preds = %255
  %270 = load i32, i32* %20, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %20, align 4
  br label %251

272:                                              ; preds = %251
  %273 = load i32, i32* %2, align 4
  %274 = sub nsw i32 %273, 1
  store i32 %274, i32* %22, align 4
  br label %275

275:                                              ; preds = %284, %272
  %276 = load i32, i32* %22, align 4
  %277 = icmp sge i32 %276, 0
  br i1 %277, label %278, label %287

278:                                              ; preds = %275
  %279 = load i32, i32* %22, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %280
  %282 = load %struct.Book*, %struct.Book** %281, align 8
  %283 = bitcast %struct.Book* %282 to i8*
  call void @dlfree(i8* %283)
  br label %284

284:                                              ; preds = %278
  %285 = load i32, i32* %22, align 4
  %286 = add nsw i32 %285, -1
  store i32 %286, i32* %22, align 4
  br label %275

287:                                              ; preds = %275
  store i32 0, i32* %23, align 4
  br label %288

288:                                              ; preds = %306, %287
  %289 = load i32, i32* %23, align 4
  %290 = load i32, i32* %2, align 4
  %291 = icmp slt i32 %289, %290
  br i1 %291, label %292, label %309

292:                                              ; preds = %288
  %293 = call i8* @dlmalloc(i64 1028)
  %294 = bitcast i8* %293 to %struct.Book*
  store %struct.Book* %294, %struct.Book** %24, align 8
  %295 = load %struct.Book*, %struct.Book** %24, align 8
  %296 = getelementptr inbounds %struct.Book, %struct.Book* %295, i32 0, i32 0
  %297 = getelementptr inbounds [1024 x i8], [1024 x i8]* %296, i64 0, i64 0
  %298 = getelementptr [25 x i8], [25 x i8]* @.str.6, i64 0, i64 0
  %299 = call i8* @strcpy(i8* %297, i8* %298) #1
  %300 = load %struct.Book*, %struct.Book** %24, align 8
  %301 = getelementptr inbounds %struct.Book, %struct.Book* %300, i32 0, i32 1
  store i32 6495413, i32* %301, align 4
  %302 = load %struct.Book*, %struct.Book** %24, align 8
  %303 = load i32, i32* %23, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %304
  store %struct.Book* %302, %struct.Book** %305, align 8
  br label %306

306:                                              ; preds = %292
  %307 = load i32, i32* %23, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %23, align 4
  br label %288

309:                                              ; preds = %288
  %310 = load i32, i32* %2, align 4
  %311 = sub nsw i32 %310, 1
  store i32 %311, i32* %25, align 4
  br label %312

312:                                              ; preds = %321, %309
  %313 = load i32, i32* %25, align 4
  %314 = icmp sge i32 %313, 0
  br i1 %314, label %315, label %324

315:                                              ; preds = %312
  %316 = load i32, i32* %25, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %317
  %319 = load %struct.Book*, %struct.Book** %318, align 8
  %320 = bitcast %struct.Book* %319 to i8*
  call void @dlfree(i8* %320)
  br label %321

321:                                              ; preds = %315
  %322 = load i32, i32* %25, align 4
  %323 = add nsw i32 %322, -1
  store i32 %323, i32* %25, align 4
  br label %312

324:                                              ; preds = %312
  store i32 0, i32* %26, align 4
  br label %325

325:                                              ; preds = %343, %324
  %326 = load i32, i32* %26, align 4
  %327 = load i32, i32* %2, align 4
  %328 = icmp slt i32 %326, %327
  br i1 %328, label %329, label %346

329:                                              ; preds = %325
  %330 = call i8* @dlmalloc(i64 1028)
  %331 = bitcast i8* %330 to %struct.Book*
  store %struct.Book* %331, %struct.Book** %27, align 8
  %332 = load %struct.Book*, %struct.Book** %27, align 8
  %333 = getelementptr inbounds %struct.Book, %struct.Book* %332, i32 0, i32 0
  %334 = getelementptr inbounds [1024 x i8], [1024 x i8]* %333, i64 0, i64 0
  %335 = getelementptr [25 x i8], [25 x i8]* @.str.7, i64 0, i64 0
  %336 = call i8* @strcpy(i8* %334, i8* %335) #1
  %337 = load %struct.Book*, %struct.Book** %27, align 8
  %338 = getelementptr inbounds %struct.Book, %struct.Book* %337, i32 0, i32 1
  store i32 6495414, i32* %338, align 4
  %339 = load %struct.Book*, %struct.Book** %27, align 8
  %340 = load i32, i32* %26, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %341
  store %struct.Book* %339, %struct.Book** %342, align 8
  br label %343

343:                                              ; preds = %329
  %344 = load i32, i32* %26, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %26, align 4
  br label %325

346:                                              ; preds = %325
  %347 = load i32, i32* %2, align 4
  %348 = sub nsw i32 %347, 1
  store i32 %348, i32* %28, align 4
  br label %349

349:                                              ; preds = %358, %346
  %350 = load i32, i32* %28, align 4
  %351 = icmp sge i32 %350, 0
  br i1 %351, label %352, label %361

352:                                              ; preds = %349
  %353 = load i32, i32* %28, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %354
  %356 = load %struct.Book*, %struct.Book** %355, align 8
  %357 = bitcast %struct.Book* %356 to i8*
  call void @dlfree(i8* %357)
  br label %358

358:                                              ; preds = %352
  %359 = load i32, i32* %28, align 4
  %360 = add nsw i32 %359, -1
  store i32 %360, i32* %28, align 4
  br label %349

361:                                              ; preds = %349
  store i32 0, i32* %29, align 4
  br label %362

362:                                              ; preds = %380, %361
  %363 = load i32, i32* %29, align 4
  %364 = load i32, i32* %2, align 4
  %365 = icmp slt i32 %363, %364
  br i1 %365, label %366, label %383

366:                                              ; preds = %362
  %367 = call i8* @dlmalloc(i64 1028)
  %368 = bitcast i8* %367 to %struct.Book*
  store %struct.Book* %368, %struct.Book** %30, align 8
  %369 = load %struct.Book*, %struct.Book** %30, align 8
  %370 = getelementptr inbounds %struct.Book, %struct.Book* %369, i32 0, i32 0
  %371 = getelementptr inbounds [1024 x i8], [1024 x i8]* %370, i64 0, i64 0
  %372 = getelementptr [25 x i8], [25 x i8]* @.str.8, i64 0, i64 0
  %373 = call i8* @strcpy(i8* %371, i8* %372) #1
  %374 = load %struct.Book*, %struct.Book** %30, align 8
  %375 = getelementptr inbounds %struct.Book, %struct.Book* %374, i32 0, i32 1
  store i32 6495415, i32* %375, align 4
  %376 = load %struct.Book*, %struct.Book** %30, align 8
  %377 = load i32, i32* %29, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %378
  store %struct.Book* %376, %struct.Book** %379, align 8
  br label %380

380:                                              ; preds = %366
  %381 = load i32, i32* %29, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %29, align 4
  br label %362

383:                                              ; preds = %362
  %384 = load i32, i32* %2, align 4
  %385 = sub nsw i32 %384, 1
  store i32 %385, i32* %31, align 4
  br label %386

386:                                              ; preds = %395, %383
  %387 = load i32, i32* %31, align 4
  %388 = icmp sge i32 %387, 0
  br i1 %388, label %389, label %398

389:                                              ; preds = %386
  %390 = load i32, i32* %31, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %391
  %393 = load %struct.Book*, %struct.Book** %392, align 8
  %394 = bitcast %struct.Book* %393 to i8*
  call void @dlfree(i8* %394)
  br label %395

395:                                              ; preds = %389
  %396 = load i32, i32* %31, align 4
  %397 = add nsw i32 %396, -1
  store i32 %397, i32* %31, align 4
  br label %386

398:                                              ; preds = %386
  store i32 0, i32* %32, align 4
  br label %399

399:                                              ; preds = %417, %398
  %400 = load i32, i32* %32, align 4
  %401 = load i32, i32* %2, align 4
  %402 = icmp slt i32 %400, %401
  br i1 %402, label %403, label %420

403:                                              ; preds = %399
  %404 = call i8* @dlmalloc(i64 1028)
  %405 = bitcast i8* %404 to %struct.Book*
  store %struct.Book* %405, %struct.Book** %33, align 8
  %406 = load %struct.Book*, %struct.Book** %33, align 8
  %407 = getelementptr inbounds %struct.Book, %struct.Book* %406, i32 0, i32 0
  %408 = getelementptr inbounds [1024 x i8], [1024 x i8]* %407, i64 0, i64 0
  %409 = getelementptr [25 x i8], [25 x i8]* @.str.9, i64 0, i64 0
  %410 = call i8* @strcpy(i8* %408, i8* %409) #1
  %411 = load %struct.Book*, %struct.Book** %33, align 8
  %412 = getelementptr inbounds %struct.Book, %struct.Book* %411, i32 0, i32 1
  store i32 6495416, i32* %412, align 4
  %413 = load %struct.Book*, %struct.Book** %33, align 8
  %414 = load i32, i32* %32, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %415
  store %struct.Book* %413, %struct.Book** %416, align 8
  br label %417

417:                                              ; preds = %403
  %418 = load i32, i32* %32, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %32, align 4
  br label %399

420:                                              ; preds = %399
  %421 = load i32, i32* %2, align 4
  %422 = sub nsw i32 %421, 1
  store i32 %422, i32* %34, align 4
  br label %423

423:                                              ; preds = %432, %420
  %424 = load i32, i32* %34, align 4
  %425 = icmp sge i32 %424, 0
  br i1 %425, label %426, label %435

426:                                              ; preds = %423
  %427 = load i32, i32* %34, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %428
  %430 = load %struct.Book*, %struct.Book** %429, align 8
  %431 = bitcast %struct.Book* %430 to i8*
  call void @dlfree(i8* %431)
  br label %432

432:                                              ; preds = %426
  %433 = load i32, i32* %34, align 4
  %434 = add nsw i32 %433, -1
  store i32 %434, i32* %34, align 4
  br label %423

435:                                              ; preds = %423
  store i32 0, i32* %35, align 4
  br label %436

436:                                              ; preds = %454, %435
  %437 = load i32, i32* %35, align 4
  %438 = load i32, i32* %2, align 4
  %439 = icmp slt i32 %437, %438
  br i1 %439, label %440, label %457

440:                                              ; preds = %436
  %441 = call i8* @dlmalloc(i64 1028)
  %442 = bitcast i8* %441 to %struct.Book*
  store %struct.Book* %442, %struct.Book** %36, align 8
  %443 = load %struct.Book*, %struct.Book** %36, align 8
  %444 = getelementptr inbounds %struct.Book, %struct.Book* %443, i32 0, i32 0
  %445 = getelementptr inbounds [1024 x i8], [1024 x i8]* %444, i64 0, i64 0
  %446 = getelementptr [25 x i8], [25 x i8]* @.str.10, i64 0, i64 0
  %447 = call i8* @strcpy(i8* %445, i8* %446) #1
  %448 = load %struct.Book*, %struct.Book** %36, align 8
  %449 = getelementptr inbounds %struct.Book, %struct.Book* %448, i32 0, i32 1
  store i32 6495417, i32* %449, align 4
  %450 = load %struct.Book*, %struct.Book** %36, align 8
  %451 = load i32, i32* %35, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %452
  store %struct.Book* %450, %struct.Book** %453, align 8
  br label %454

454:                                              ; preds = %440
  %455 = load i32, i32* %35, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %35, align 4
  br label %436

457:                                              ; preds = %436
  %458 = load i32, i32* %2, align 4
  %459 = sub nsw i32 %458, 1
  store i32 %459, i32* %37, align 4
  br label %460

460:                                              ; preds = %469, %457
  %461 = load i32, i32* %37, align 4
  %462 = icmp sge i32 %461, 0
  br i1 %462, label %463, label %472

463:                                              ; preds = %460
  %464 = load i32, i32* %37, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %465
  %467 = load %struct.Book*, %struct.Book** %466, align 8
  %468 = bitcast %struct.Book* %467 to i8*
  call void @dlfree(i8* %468)
  br label %469

469:                                              ; preds = %463
  %470 = load i32, i32* %37, align 4
  %471 = add nsw i32 %470, -1
  store i32 %471, i32* %37, align 4
  br label %460

472:                                              ; preds = %460
  store i32 0, i32* %38, align 4
  br label %473

473:                                              ; preds = %491, %472
  %474 = load i32, i32* %38, align 4
  %475 = load i32, i32* %2, align 4
  %476 = icmp slt i32 %474, %475
  br i1 %476, label %477, label %494

477:                                              ; preds = %473
  %478 = call i8* @dlmalloc(i64 1028)
  %479 = bitcast i8* %478 to %struct.Book*
  store %struct.Book* %479, %struct.Book** %39, align 8
  %480 = load %struct.Book*, %struct.Book** %39, align 8
  %481 = getelementptr inbounds %struct.Book, %struct.Book* %480, i32 0, i32 0
  %482 = getelementptr inbounds [1024 x i8], [1024 x i8]* %481, i64 0, i64 0
  %483 = getelementptr [25 x i8], [25 x i8]* @.str.11, i64 0, i64 0
  %484 = call i8* @strcpy(i8* %482, i8* %483) #1
  %485 = load %struct.Book*, %struct.Book** %39, align 8
  %486 = getelementptr inbounds %struct.Book, %struct.Book* %485, i32 0, i32 1
  store i32 6495418, i32* %486, align 4
  %487 = load %struct.Book*, %struct.Book** %39, align 8
  %488 = load i32, i32* %38, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %489
  store %struct.Book* %487, %struct.Book** %490, align 8
  br label %491

491:                                              ; preds = %477
  %492 = load i32, i32* %38, align 4
  %493 = add nsw i32 %492, 1
  store i32 %493, i32* %38, align 4
  br label %473

494:                                              ; preds = %473
  %495 = load i32, i32* %2, align 4
  %496 = sub nsw i32 %495, 1
  store i32 %496, i32* %40, align 4
  br label %497

497:                                              ; preds = %506, %494
  %498 = load i32, i32* %40, align 4
  %499 = icmp sge i32 %498, 0
  br i1 %499, label %500, label %509

500:                                              ; preds = %497
  %501 = load i32, i32* %40, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %502
  %504 = load %struct.Book*, %struct.Book** %503, align 8
  %505 = bitcast %struct.Book* %504 to i8*
  call void @dlfree(i8* %505)
  br label %506

506:                                              ; preds = %500
  %507 = load i32, i32* %40, align 4
  %508 = add nsw i32 %507, -1
  store i32 %508, i32* %40, align 4
  br label %497

509:                                              ; preds = %497
  store i32 0, i32* %41, align 4
  br label %510

510:                                              ; preds = %528, %509
  %511 = load i32, i32* %41, align 4
  %512 = load i32, i32* %2, align 4
  %513 = icmp slt i32 %511, %512
  br i1 %513, label %514, label %531

514:                                              ; preds = %510
  %515 = call i8* @dlmalloc(i64 1028)
  %516 = bitcast i8* %515 to %struct.Book*
  store %struct.Book* %516, %struct.Book** %42, align 8
  %517 = load %struct.Book*, %struct.Book** %42, align 8
  %518 = getelementptr inbounds %struct.Book, %struct.Book* %517, i32 0, i32 0
  %519 = getelementptr inbounds [1024 x i8], [1024 x i8]* %518, i64 0, i64 0
  %520 = getelementptr [25 x i8], [25 x i8]* @.str.12, i64 0, i64 0
  %521 = call i8* @strcpy(i8* %519, i8* %520) #1
  %522 = load %struct.Book*, %struct.Book** %42, align 8
  %523 = getelementptr inbounds %struct.Book, %struct.Book* %522, i32 0, i32 1
  store i32 6495419, i32* %523, align 4
  %524 = load %struct.Book*, %struct.Book** %42, align 8
  %525 = load i32, i32* %41, align 4
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %526
  store %struct.Book* %524, %struct.Book** %527, align 8
  br label %528

528:                                              ; preds = %514
  %529 = load i32, i32* %41, align 4
  %530 = add nsw i32 %529, 1
  store i32 %530, i32* %41, align 4
  br label %510

531:                                              ; preds = %510
  %532 = load i32, i32* %2, align 4
  %533 = sub nsw i32 %532, 1
  store i32 %533, i32* %43, align 4
  br label %534

534:                                              ; preds = %543, %531
  %535 = load i32, i32* %43, align 4
  %536 = icmp sge i32 %535, 0
  br i1 %536, label %537, label %546

537:                                              ; preds = %534
  %538 = load i32, i32* %43, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %539
  %541 = load %struct.Book*, %struct.Book** %540, align 8
  %542 = bitcast %struct.Book* %541 to i8*
  call void @dlfree(i8* %542)
  br label %543

543:                                              ; preds = %537
  %544 = load i32, i32* %43, align 4
  %545 = add nsw i32 %544, -1
  store i32 %545, i32* %43, align 4
  br label %534

546:                                              ; preds = %534
  store i32 0, i32* %44, align 4
  br label %547

547:                                              ; preds = %565, %546
  %548 = load i32, i32* %44, align 4
  %549 = load i32, i32* %2, align 4
  %550 = icmp slt i32 %548, %549
  br i1 %550, label %551, label %568

551:                                              ; preds = %547
  %552 = call i8* @dlmalloc(i64 1028)
  %553 = bitcast i8* %552 to %struct.Book*
  store %struct.Book* %553, %struct.Book** %45, align 8
  %554 = load %struct.Book*, %struct.Book** %45, align 8
  %555 = getelementptr inbounds %struct.Book, %struct.Book* %554, i32 0, i32 0
  %556 = getelementptr inbounds [1024 x i8], [1024 x i8]* %555, i64 0, i64 0
  %557 = getelementptr [25 x i8], [25 x i8]* @.str.13, i64 0, i64 0
  %558 = call i8* @strcpy(i8* %556, i8* %557) #1
  %559 = load %struct.Book*, %struct.Book** %45, align 8
  %560 = getelementptr inbounds %struct.Book, %struct.Book* %559, i32 0, i32 1
  store i32 6495420, i32* %560, align 4
  %561 = load %struct.Book*, %struct.Book** %45, align 8
  %562 = load i32, i32* %44, align 4
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %563
  store %struct.Book* %561, %struct.Book** %564, align 8
  br label %565

565:                                              ; preds = %551
  %566 = load i32, i32* %44, align 4
  %567 = add nsw i32 %566, 1
  store i32 %567, i32* %44, align 4
  br label %547

568:                                              ; preds = %547
  %569 = load i32, i32* %2, align 4
  %570 = sub nsw i32 %569, 1
  store i32 %570, i32* %46, align 4
  br label %571

571:                                              ; preds = %580, %568
  %572 = load i32, i32* %46, align 4
  %573 = icmp sge i32 %572, 0
  br i1 %573, label %574, label %583

574:                                              ; preds = %571
  %575 = load i32, i32* %46, align 4
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %576
  %578 = load %struct.Book*, %struct.Book** %577, align 8
  %579 = bitcast %struct.Book* %578 to i8*
  call void @dlfree(i8* %579)
  br label %580

580:                                              ; preds = %574
  %581 = load i32, i32* %46, align 4
  %582 = add nsw i32 %581, -1
  store i32 %582, i32* %46, align 4
  br label %571

583:                                              ; preds = %571
  store i32 0, i32* %47, align 4
  br label %584

584:                                              ; preds = %602, %583
  %585 = load i32, i32* %47, align 4
  %586 = load i32, i32* %2, align 4
  %587 = icmp slt i32 %585, %586
  br i1 %587, label %588, label %605

588:                                              ; preds = %584
  %589 = call i8* @dlmalloc(i64 1028)
  %590 = bitcast i8* %589 to %struct.Book*
  store %struct.Book* %590, %struct.Book** %48, align 8
  %591 = load %struct.Book*, %struct.Book** %48, align 8
  %592 = getelementptr inbounds %struct.Book, %struct.Book* %591, i32 0, i32 0
  %593 = getelementptr inbounds [1024 x i8], [1024 x i8]* %592, i64 0, i64 0
  %594 = getelementptr [25 x i8], [25 x i8]* @.str.14, i64 0, i64 0
  %595 = call i8* @strcpy(i8* %593, i8* %594) #1
  %596 = load %struct.Book*, %struct.Book** %48, align 8
  %597 = getelementptr inbounds %struct.Book, %struct.Book* %596, i32 0, i32 1
  store i32 6495421, i32* %597, align 4
  %598 = load %struct.Book*, %struct.Book** %48, align 8
  %599 = load i32, i32* %47, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %600
  store %struct.Book* %598, %struct.Book** %601, align 8
  br label %602

602:                                              ; preds = %588
  %603 = load i32, i32* %47, align 4
  %604 = add nsw i32 %603, 1
  store i32 %604, i32* %47, align 4
  br label %584

605:                                              ; preds = %584
  %606 = load i32, i32* %2, align 4
  %607 = sub nsw i32 %606, 1
  store i32 %607, i32* %49, align 4
  br label %608

608:                                              ; preds = %617, %605
  %609 = load i32, i32* %49, align 4
  %610 = icmp sge i32 %609, 0
  br i1 %610, label %611, label %620

611:                                              ; preds = %608
  %612 = load i32, i32* %49, align 4
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %613
  %615 = load %struct.Book*, %struct.Book** %614, align 8
  %616 = bitcast %struct.Book* %615 to i8*
  call void @dlfree(i8* %616)
  br label %617

617:                                              ; preds = %611
  %618 = load i32, i32* %49, align 4
  %619 = add nsw i32 %618, -1
  store i32 %619, i32* %49, align 4
  br label %608

620:                                              ; preds = %608
  store i32 0, i32* %50, align 4
  br label %621

621:                                              ; preds = %639, %620
  %622 = load i32, i32* %50, align 4
  %623 = load i32, i32* %2, align 4
  %624 = icmp slt i32 %622, %623
  br i1 %624, label %625, label %642

625:                                              ; preds = %621
  %626 = call i8* @dlmalloc(i64 1028)
  %627 = bitcast i8* %626 to %struct.Book*
  store %struct.Book* %627, %struct.Book** %51, align 8
  %628 = load %struct.Book*, %struct.Book** %51, align 8
  %629 = getelementptr inbounds %struct.Book, %struct.Book* %628, i32 0, i32 0
  %630 = getelementptr inbounds [1024 x i8], [1024 x i8]* %629, i64 0, i64 0
  %631 = getelementptr [25 x i8], [25 x i8]* @.str.15, i64 0, i64 0
  %632 = call i8* @strcpy(i8* %630, i8* %631) #1
  %633 = load %struct.Book*, %struct.Book** %51, align 8
  %634 = getelementptr inbounds %struct.Book, %struct.Book* %633, i32 0, i32 1
  store i32 6495422, i32* %634, align 4
  %635 = load %struct.Book*, %struct.Book** %51, align 8
  %636 = load i32, i32* %50, align 4
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %637
  store %struct.Book* %635, %struct.Book** %638, align 8
  br label %639

639:                                              ; preds = %625
  %640 = load i32, i32* %50, align 4
  %641 = add nsw i32 %640, 1
  store i32 %641, i32* %50, align 4
  br label %621

642:                                              ; preds = %621
  %643 = load i32, i32* %2, align 4
  %644 = sub nsw i32 %643, 1
  store i32 %644, i32* %52, align 4
  br label %645

645:                                              ; preds = %654, %642
  %646 = load i32, i32* %52, align 4
  %647 = icmp sge i32 %646, 0
  br i1 %647, label %648, label %657

648:                                              ; preds = %645
  %649 = load i32, i32* %52, align 4
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %650
  %652 = load %struct.Book*, %struct.Book** %651, align 8
  %653 = bitcast %struct.Book* %652 to i8*
  call void @dlfree(i8* %653)
  br label %654

654:                                              ; preds = %648
  %655 = load i32, i32* %52, align 4
  %656 = add nsw i32 %655, -1
  store i32 %656, i32* %52, align 4
  br label %645

657:                                              ; preds = %645
  store i32 0, i32* %53, align 4
  br label %658

658:                                              ; preds = %676, %657
  %659 = load i32, i32* %53, align 4
  %660 = load i32, i32* %2, align 4
  %661 = icmp slt i32 %659, %660
  br i1 %661, label %662, label %679

662:                                              ; preds = %658
  %663 = call i8* @dlmalloc(i64 1028)
  %664 = bitcast i8* %663 to %struct.Book*
  store %struct.Book* %664, %struct.Book** %54, align 8
  %665 = load %struct.Book*, %struct.Book** %54, align 8
  %666 = getelementptr inbounds %struct.Book, %struct.Book* %665, i32 0, i32 0
  %667 = getelementptr inbounds [1024 x i8], [1024 x i8]* %666, i64 0, i64 0
  %668 = getelementptr [25 x i8], [25 x i8]* @.str.16, i64 0, i64 0
  %669 = call i8* @strcpy(i8* %667, i8* %668) #1
  %670 = load %struct.Book*, %struct.Book** %54, align 8
  %671 = getelementptr inbounds %struct.Book, %struct.Book* %670, i32 0, i32 1
  store i32 6495423, i32* %671, align 4
  %672 = load %struct.Book*, %struct.Book** %54, align 8
  %673 = load i32, i32* %53, align 4
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %674
  store %struct.Book* %672, %struct.Book** %675, align 8
  br label %676

676:                                              ; preds = %662
  %677 = load i32, i32* %53, align 4
  %678 = add nsw i32 %677, 1
  store i32 %678, i32* %53, align 4
  br label %658

679:                                              ; preds = %658
  %680 = load i32, i32* %2, align 4
  %681 = sub nsw i32 %680, 1
  store i32 %681, i32* %55, align 4
  br label %682

682:                                              ; preds = %691, %679
  %683 = load i32, i32* %55, align 4
  %684 = icmp sge i32 %683, 0
  br i1 %684, label %685, label %694

685:                                              ; preds = %682
  %686 = load i32, i32* %55, align 4
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %687
  %689 = load %struct.Book*, %struct.Book** %688, align 8
  %690 = bitcast %struct.Book* %689 to i8*
  call void @dlfree(i8* %690)
  br label %691

691:                                              ; preds = %685
  %692 = load i32, i32* %55, align 4
  %693 = add nsw i32 %692, -1
  store i32 %693, i32* %55, align 4
  br label %682

694:                                              ; preds = %682
  store i32 0, i32* %56, align 4
  br label %695

695:                                              ; preds = %713, %694
  %696 = load i32, i32* %56, align 4
  %697 = load i32, i32* %2, align 4
  %698 = icmp slt i32 %696, %697
  br i1 %698, label %699, label %716

699:                                              ; preds = %695
  %700 = call i8* @dlmalloc(i64 1028)
  %701 = bitcast i8* %700 to %struct.Book*
  store %struct.Book* %701, %struct.Book** %57, align 8
  %702 = load %struct.Book*, %struct.Book** %57, align 8
  %703 = getelementptr inbounds %struct.Book, %struct.Book* %702, i32 0, i32 0
  %704 = getelementptr inbounds [1024 x i8], [1024 x i8]* %703, i64 0, i64 0
  %705 = getelementptr [25 x i8], [25 x i8]* @.str.17, i64 0, i64 0
  %706 = call i8* @strcpy(i8* %704, i8* %705) #1
  %707 = load %struct.Book*, %struct.Book** %57, align 8
  %708 = getelementptr inbounds %struct.Book, %struct.Book* %707, i32 0, i32 1
  store i32 6495424, i32* %708, align 4
  %709 = load %struct.Book*, %struct.Book** %57, align 8
  %710 = load i32, i32* %56, align 4
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %711
  store %struct.Book* %709, %struct.Book** %712, align 8
  br label %713

713:                                              ; preds = %699
  %714 = load i32, i32* %56, align 4
  %715 = add nsw i32 %714, 1
  store i32 %715, i32* %56, align 4
  br label %695

716:                                              ; preds = %695
  %717 = load i32, i32* %2, align 4
  %718 = sub nsw i32 %717, 1
  store i32 %718, i32* %58, align 4
  br label %719

719:                                              ; preds = %728, %716
  %720 = load i32, i32* %58, align 4
  %721 = icmp sge i32 %720, 0
  br i1 %721, label %722, label %731

722:                                              ; preds = %719
  %723 = load i32, i32* %58, align 4
  %724 = sext i32 %723 to i64
  %725 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %724
  %726 = load %struct.Book*, %struct.Book** %725, align 8
  %727 = bitcast %struct.Book* %726 to i8*
  call void @dlfree(i8* %727)
  br label %728

728:                                              ; preds = %722
  %729 = load i32, i32* %58, align 4
  %730 = add nsw i32 %729, -1
  store i32 %730, i32* %58, align 4
  br label %719

731:                                              ; preds = %719
  store i32 0, i32* %59, align 4
  br label %732

732:                                              ; preds = %750, %731
  %733 = load i32, i32* %59, align 4
  %734 = load i32, i32* %2, align 4
  %735 = icmp slt i32 %733, %734
  br i1 %735, label %736, label %753

736:                                              ; preds = %732
  %737 = call i8* @dlmalloc(i64 1028)
  %738 = bitcast i8* %737 to %struct.Book*
  store %struct.Book* %738, %struct.Book** %60, align 8
  %739 = load %struct.Book*, %struct.Book** %60, align 8
  %740 = getelementptr inbounds %struct.Book, %struct.Book* %739, i32 0, i32 0
  %741 = getelementptr inbounds [1024 x i8], [1024 x i8]* %740, i64 0, i64 0
  %742 = getelementptr [25 x i8], [25 x i8]* @.str.18, i64 0, i64 0
  %743 = call i8* @strcpy(i8* %741, i8* %742) #1
  %744 = load %struct.Book*, %struct.Book** %60, align 8
  %745 = getelementptr inbounds %struct.Book, %struct.Book* %744, i32 0, i32 1
  store i32 6495425, i32* %745, align 4
  %746 = load %struct.Book*, %struct.Book** %60, align 8
  %747 = load i32, i32* %59, align 4
  %748 = sext i32 %747 to i64
  %749 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %748
  store %struct.Book* %746, %struct.Book** %749, align 8
  br label %750

750:                                              ; preds = %736
  %751 = load i32, i32* %59, align 4
  %752 = add nsw i32 %751, 1
  store i32 %752, i32* %59, align 4
  br label %732

753:                                              ; preds = %732
  %754 = load i32, i32* %2, align 4
  %755 = sub nsw i32 %754, 1
  store i32 %755, i32* %61, align 4
  br label %756

756:                                              ; preds = %765, %753
  %757 = load i32, i32* %61, align 4
  %758 = icmp sge i32 %757, 0
  br i1 %758, label %759, label %768

759:                                              ; preds = %756
  %760 = load i32, i32* %61, align 4
  %761 = sext i32 %760 to i64
  %762 = getelementptr inbounds %struct.Book*, %struct.Book** %65, i64 %761
  %763 = load %struct.Book*, %struct.Book** %762, align 8
  %764 = bitcast %struct.Book* %763 to i8*
  call void @dlfree(i8* %764)
  br label %765

765:                                              ; preds = %759
  %766 = load i32, i32* %61, align 4
  %767 = add nsw i32 %766, -1
  store i32 %767, i32* %61, align 4
  br label %756

768:                                              ; preds = %756
  store i32 0, i32* %1, align 4
  %769 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %769)
  %770 = load i32, i32* %1, align 4
  ret i32 %770
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare i8* @dlmalloc(i64)

declare void @dlfree(i8*)

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.0 (git@github.com:scampanoni/LLVM_installer.git 713d2f6594d9a0b77e7f9a120aaa7c917715a640)"}
