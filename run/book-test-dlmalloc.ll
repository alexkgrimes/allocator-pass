; ModuleID = 'book-test.ll'
source_filename = "../code-samples/book-test.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Book = type { [50 x i8], [50 x i8], [100 x i8], i32 }

@.str = private unnamed_addr constant [14 x i8] c"C Programming\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Nuha Ali\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"C Programming Tutorial\00", align 1

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
  store i32 0, i32* %1, align 4
  store i32 1000000, i32* %2, align 4
  %59 = load i32, i32* %2, align 4
  %60 = zext i32 %59 to i64
  %61 = call i8* @llvm.stacksave()
  store i8* %61, i8** %3, align 8
  %62 = alloca %struct.Book*, i64 %60, align 16
  store i64 %60, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %91, %0
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %2, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %94

67:                                               ; preds = %63
  %68 = call i8* @dlmalloc(i64 204)
  %69 = bitcast i8* %68 to %struct.Book*
  store %struct.Book* %69, %struct.Book** %6, align 8
  %70 = load %struct.Book*, %struct.Book** %6, align 8
  %71 = getelementptr inbounds %struct.Book, %struct.Book* %70, i32 0, i32 0
  %72 = getelementptr inbounds [50 x i8], [50 x i8]* %71, i64 0, i64 0
  %73 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %74 = call i8* @strcpy(i8* %72, i8* %73) #1
  %75 = load %struct.Book*, %struct.Book** %6, align 8
  %76 = getelementptr inbounds %struct.Book, %struct.Book* %75, i32 0, i32 1
  %77 = getelementptr inbounds [50 x i8], [50 x i8]* %76, i64 0, i64 0
  %78 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %79 = call i8* @strcpy(i8* %77, i8* %78) #1
  %80 = load %struct.Book*, %struct.Book** %6, align 8
  %81 = getelementptr inbounds %struct.Book, %struct.Book* %80, i32 0, i32 2
  %82 = getelementptr inbounds [100 x i8], [100 x i8]* %81, i64 0, i64 0
  %83 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %84 = call i8* @strcpy(i8* %82, i8* %83) #1
  %85 = load %struct.Book*, %struct.Book** %6, align 8
  %86 = getelementptr inbounds %struct.Book, %struct.Book* %85, i32 0, i32 3
  store i32 6495407, i32* %86, align 4
  %87 = load %struct.Book*, %struct.Book** %6, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %89
  store %struct.Book* %87, %struct.Book** %90, align 8
  br label %91

91:                                               ; preds = %67
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %63

94:                                               ; preds = %63
  %95 = load i32, i32* %2, align 4
  %96 = sub nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %106, %94
  %98 = load i32, i32* %7, align 4
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %97
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %102
  %104 = load %struct.Book*, %struct.Book** %103, align 8
  %105 = bitcast %struct.Book* %104 to i8*
  call void @dlfree(i8* %105)
  br label %106

106:                                              ; preds = %100
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %7, align 4
  br label %97

109:                                              ; preds = %97
  store i32 0, i32* %8, align 4
  br label %110

110:                                              ; preds = %138, %109
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %2, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %141

114:                                              ; preds = %110
  %115 = call i8* @dlmalloc(i64 204)
  %116 = bitcast i8* %115 to %struct.Book*
  store %struct.Book* %116, %struct.Book** %9, align 8
  %117 = load %struct.Book*, %struct.Book** %9, align 8
  %118 = getelementptr inbounds %struct.Book, %struct.Book* %117, i32 0, i32 0
  %119 = getelementptr inbounds [50 x i8], [50 x i8]* %118, i64 0, i64 0
  %120 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %121 = call i8* @strcpy(i8* %119, i8* %120) #1
  %122 = load %struct.Book*, %struct.Book** %9, align 8
  %123 = getelementptr inbounds %struct.Book, %struct.Book* %122, i32 0, i32 1
  %124 = getelementptr inbounds [50 x i8], [50 x i8]* %123, i64 0, i64 0
  %125 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %126 = call i8* @strcpy(i8* %124, i8* %125) #1
  %127 = load %struct.Book*, %struct.Book** %9, align 8
  %128 = getelementptr inbounds %struct.Book, %struct.Book* %127, i32 0, i32 2
  %129 = getelementptr inbounds [100 x i8], [100 x i8]* %128, i64 0, i64 0
  %130 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %131 = call i8* @strcpy(i8* %129, i8* %130) #1
  %132 = load %struct.Book*, %struct.Book** %9, align 8
  %133 = getelementptr inbounds %struct.Book, %struct.Book* %132, i32 0, i32 3
  store i32 6495407, i32* %133, align 4
  %134 = load %struct.Book*, %struct.Book** %9, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %136
  store %struct.Book* %134, %struct.Book** %137, align 8
  br label %138

138:                                              ; preds = %114
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %8, align 4
  br label %110

141:                                              ; preds = %110
  %142 = load i32, i32* %2, align 4
  %143 = sub nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %144

144:                                              ; preds = %153, %141
  %145 = load i32, i32* %10, align 4
  %146 = icmp sge i32 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %144
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %149
  %151 = load %struct.Book*, %struct.Book** %150, align 8
  %152 = bitcast %struct.Book* %151 to i8*
  call void @dlfree(i8* %152)
  br label %153

153:                                              ; preds = %147
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %10, align 4
  br label %144

156:                                              ; preds = %144
  store i32 0, i32* %11, align 4
  br label %157

157:                                              ; preds = %185, %156
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %2, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %188

161:                                              ; preds = %157
  %162 = call i8* @dlmalloc(i64 204)
  %163 = bitcast i8* %162 to %struct.Book*
  store %struct.Book* %163, %struct.Book** %12, align 8
  %164 = load %struct.Book*, %struct.Book** %12, align 8
  %165 = getelementptr inbounds %struct.Book, %struct.Book* %164, i32 0, i32 0
  %166 = getelementptr inbounds [50 x i8], [50 x i8]* %165, i64 0, i64 0
  %167 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %168 = call i8* @strcpy(i8* %166, i8* %167) #1
  %169 = load %struct.Book*, %struct.Book** %12, align 8
  %170 = getelementptr inbounds %struct.Book, %struct.Book* %169, i32 0, i32 1
  %171 = getelementptr inbounds [50 x i8], [50 x i8]* %170, i64 0, i64 0
  %172 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %173 = call i8* @strcpy(i8* %171, i8* %172) #1
  %174 = load %struct.Book*, %struct.Book** %12, align 8
  %175 = getelementptr inbounds %struct.Book, %struct.Book* %174, i32 0, i32 2
  %176 = getelementptr inbounds [100 x i8], [100 x i8]* %175, i64 0, i64 0
  %177 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %178 = call i8* @strcpy(i8* %176, i8* %177) #1
  %179 = load %struct.Book*, %struct.Book** %12, align 8
  %180 = getelementptr inbounds %struct.Book, %struct.Book* %179, i32 0, i32 3
  store i32 6495407, i32* %180, align 4
  %181 = load %struct.Book*, %struct.Book** %12, align 8
  %182 = load i32, i32* %11, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %183
  store %struct.Book* %181, %struct.Book** %184, align 8
  br label %185

185:                                              ; preds = %161
  %186 = load i32, i32* %11, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %11, align 4
  br label %157

188:                                              ; preds = %157
  %189 = load i32, i32* %2, align 4
  %190 = sub nsw i32 %189, 1
  store i32 %190, i32* %13, align 4
  br label %191

191:                                              ; preds = %200, %188
  %192 = load i32, i32* %13, align 4
  %193 = icmp sge i32 %192, 0
  br i1 %193, label %194, label %203

194:                                              ; preds = %191
  %195 = load i32, i32* %13, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %196
  %198 = load %struct.Book*, %struct.Book** %197, align 8
  %199 = bitcast %struct.Book* %198 to i8*
  call void @dlfree(i8* %199)
  br label %200

200:                                              ; preds = %194
  %201 = load i32, i32* %13, align 4
  %202 = add nsw i32 %201, -1
  store i32 %202, i32* %13, align 4
  br label %191

203:                                              ; preds = %191
  store i32 0, i32* %14, align 4
  br label %204

204:                                              ; preds = %232, %203
  %205 = load i32, i32* %14, align 4
  %206 = load i32, i32* %2, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %235

208:                                              ; preds = %204
  %209 = call i8* @dlmalloc(i64 204)
  %210 = bitcast i8* %209 to %struct.Book*
  store %struct.Book* %210, %struct.Book** %15, align 8
  %211 = load %struct.Book*, %struct.Book** %15, align 8
  %212 = getelementptr inbounds %struct.Book, %struct.Book* %211, i32 0, i32 0
  %213 = getelementptr inbounds [50 x i8], [50 x i8]* %212, i64 0, i64 0
  %214 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %215 = call i8* @strcpy(i8* %213, i8* %214) #1
  %216 = load %struct.Book*, %struct.Book** %15, align 8
  %217 = getelementptr inbounds %struct.Book, %struct.Book* %216, i32 0, i32 1
  %218 = getelementptr inbounds [50 x i8], [50 x i8]* %217, i64 0, i64 0
  %219 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %220 = call i8* @strcpy(i8* %218, i8* %219) #1
  %221 = load %struct.Book*, %struct.Book** %15, align 8
  %222 = getelementptr inbounds %struct.Book, %struct.Book* %221, i32 0, i32 2
  %223 = getelementptr inbounds [100 x i8], [100 x i8]* %222, i64 0, i64 0
  %224 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %225 = call i8* @strcpy(i8* %223, i8* %224) #1
  %226 = load %struct.Book*, %struct.Book** %15, align 8
  %227 = getelementptr inbounds %struct.Book, %struct.Book* %226, i32 0, i32 3
  store i32 6495407, i32* %227, align 4
  %228 = load %struct.Book*, %struct.Book** %15, align 8
  %229 = load i32, i32* %14, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %230
  store %struct.Book* %228, %struct.Book** %231, align 8
  br label %232

232:                                              ; preds = %208
  %233 = load i32, i32* %14, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %14, align 4
  br label %204

235:                                              ; preds = %204
  %236 = load i32, i32* %2, align 4
  %237 = sub nsw i32 %236, 1
  store i32 %237, i32* %16, align 4
  br label %238

238:                                              ; preds = %247, %235
  %239 = load i32, i32* %16, align 4
  %240 = icmp sge i32 %239, 0
  br i1 %240, label %241, label %250

241:                                              ; preds = %238
  %242 = load i32, i32* %16, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %243
  %245 = load %struct.Book*, %struct.Book** %244, align 8
  %246 = bitcast %struct.Book* %245 to i8*
  call void @dlfree(i8* %246)
  br label %247

247:                                              ; preds = %241
  %248 = load i32, i32* %16, align 4
  %249 = add nsw i32 %248, -1
  store i32 %249, i32* %16, align 4
  br label %238

250:                                              ; preds = %238
  store i32 0, i32* %17, align 4
  br label %251

251:                                              ; preds = %279, %250
  %252 = load i32, i32* %17, align 4
  %253 = load i32, i32* %2, align 4
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %255, label %282

255:                                              ; preds = %251
  %256 = call i8* @dlmalloc(i64 204)
  %257 = bitcast i8* %256 to %struct.Book*
  store %struct.Book* %257, %struct.Book** %18, align 8
  %258 = load %struct.Book*, %struct.Book** %18, align 8
  %259 = getelementptr inbounds %struct.Book, %struct.Book* %258, i32 0, i32 0
  %260 = getelementptr inbounds [50 x i8], [50 x i8]* %259, i64 0, i64 0
  %261 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %262 = call i8* @strcpy(i8* %260, i8* %261) #1
  %263 = load %struct.Book*, %struct.Book** %18, align 8
  %264 = getelementptr inbounds %struct.Book, %struct.Book* %263, i32 0, i32 1
  %265 = getelementptr inbounds [50 x i8], [50 x i8]* %264, i64 0, i64 0
  %266 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %267 = call i8* @strcpy(i8* %265, i8* %266) #1
  %268 = load %struct.Book*, %struct.Book** %18, align 8
  %269 = getelementptr inbounds %struct.Book, %struct.Book* %268, i32 0, i32 2
  %270 = getelementptr inbounds [100 x i8], [100 x i8]* %269, i64 0, i64 0
  %271 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %272 = call i8* @strcpy(i8* %270, i8* %271) #1
  %273 = load %struct.Book*, %struct.Book** %18, align 8
  %274 = getelementptr inbounds %struct.Book, %struct.Book* %273, i32 0, i32 3
  store i32 6495407, i32* %274, align 4
  %275 = load %struct.Book*, %struct.Book** %18, align 8
  %276 = load i32, i32* %17, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %277
  store %struct.Book* %275, %struct.Book** %278, align 8
  br label %279

279:                                              ; preds = %255
  %280 = load i32, i32* %17, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %17, align 4
  br label %251

282:                                              ; preds = %251
  %283 = load i32, i32* %2, align 4
  %284 = sub nsw i32 %283, 1
  store i32 %284, i32* %19, align 4
  br label %285

285:                                              ; preds = %294, %282
  %286 = load i32, i32* %19, align 4
  %287 = icmp sge i32 %286, 0
  br i1 %287, label %288, label %297

288:                                              ; preds = %285
  %289 = load i32, i32* %19, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %290
  %292 = load %struct.Book*, %struct.Book** %291, align 8
  %293 = bitcast %struct.Book* %292 to i8*
  call void @dlfree(i8* %293)
  br label %294

294:                                              ; preds = %288
  %295 = load i32, i32* %19, align 4
  %296 = add nsw i32 %295, -1
  store i32 %296, i32* %19, align 4
  br label %285

297:                                              ; preds = %285
  store i32 0, i32* %20, align 4
  br label %298

298:                                              ; preds = %326, %297
  %299 = load i32, i32* %20, align 4
  %300 = load i32, i32* %2, align 4
  %301 = icmp slt i32 %299, %300
  br i1 %301, label %302, label %329

302:                                              ; preds = %298
  %303 = call i8* @dlmalloc(i64 204)
  %304 = bitcast i8* %303 to %struct.Book*
  store %struct.Book* %304, %struct.Book** %21, align 8
  %305 = load %struct.Book*, %struct.Book** %21, align 8
  %306 = getelementptr inbounds %struct.Book, %struct.Book* %305, i32 0, i32 0
  %307 = getelementptr inbounds [50 x i8], [50 x i8]* %306, i64 0, i64 0
  %308 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %309 = call i8* @strcpy(i8* %307, i8* %308) #1
  %310 = load %struct.Book*, %struct.Book** %21, align 8
  %311 = getelementptr inbounds %struct.Book, %struct.Book* %310, i32 0, i32 1
  %312 = getelementptr inbounds [50 x i8], [50 x i8]* %311, i64 0, i64 0
  %313 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %314 = call i8* @strcpy(i8* %312, i8* %313) #1
  %315 = load %struct.Book*, %struct.Book** %21, align 8
  %316 = getelementptr inbounds %struct.Book, %struct.Book* %315, i32 0, i32 2
  %317 = getelementptr inbounds [100 x i8], [100 x i8]* %316, i64 0, i64 0
  %318 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %319 = call i8* @strcpy(i8* %317, i8* %318) #1
  %320 = load %struct.Book*, %struct.Book** %21, align 8
  %321 = getelementptr inbounds %struct.Book, %struct.Book* %320, i32 0, i32 3
  store i32 6495407, i32* %321, align 4
  %322 = load %struct.Book*, %struct.Book** %21, align 8
  %323 = load i32, i32* %20, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %324
  store %struct.Book* %322, %struct.Book** %325, align 8
  br label %326

326:                                              ; preds = %302
  %327 = load i32, i32* %20, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %20, align 4
  br label %298

329:                                              ; preds = %298
  %330 = load i32, i32* %2, align 4
  %331 = sub nsw i32 %330, 1
  store i32 %331, i32* %22, align 4
  br label %332

332:                                              ; preds = %341, %329
  %333 = load i32, i32* %22, align 4
  %334 = icmp sge i32 %333, 0
  br i1 %334, label %335, label %344

335:                                              ; preds = %332
  %336 = load i32, i32* %22, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %337
  %339 = load %struct.Book*, %struct.Book** %338, align 8
  %340 = bitcast %struct.Book* %339 to i8*
  call void @dlfree(i8* %340)
  br label %341

341:                                              ; preds = %335
  %342 = load i32, i32* %22, align 4
  %343 = add nsw i32 %342, -1
  store i32 %343, i32* %22, align 4
  br label %332

344:                                              ; preds = %332
  store i32 0, i32* %23, align 4
  br label %345

345:                                              ; preds = %373, %344
  %346 = load i32, i32* %23, align 4
  %347 = load i32, i32* %2, align 4
  %348 = icmp slt i32 %346, %347
  br i1 %348, label %349, label %376

349:                                              ; preds = %345
  %350 = call i8* @dlmalloc(i64 204)
  %351 = bitcast i8* %350 to %struct.Book*
  store %struct.Book* %351, %struct.Book** %24, align 8
  %352 = load %struct.Book*, %struct.Book** %24, align 8
  %353 = getelementptr inbounds %struct.Book, %struct.Book* %352, i32 0, i32 0
  %354 = getelementptr inbounds [50 x i8], [50 x i8]* %353, i64 0, i64 0
  %355 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %356 = call i8* @strcpy(i8* %354, i8* %355) #1
  %357 = load %struct.Book*, %struct.Book** %24, align 8
  %358 = getelementptr inbounds %struct.Book, %struct.Book* %357, i32 0, i32 1
  %359 = getelementptr inbounds [50 x i8], [50 x i8]* %358, i64 0, i64 0
  %360 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %361 = call i8* @strcpy(i8* %359, i8* %360) #1
  %362 = load %struct.Book*, %struct.Book** %24, align 8
  %363 = getelementptr inbounds %struct.Book, %struct.Book* %362, i32 0, i32 2
  %364 = getelementptr inbounds [100 x i8], [100 x i8]* %363, i64 0, i64 0
  %365 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %366 = call i8* @strcpy(i8* %364, i8* %365) #1
  %367 = load %struct.Book*, %struct.Book** %24, align 8
  %368 = getelementptr inbounds %struct.Book, %struct.Book* %367, i32 0, i32 3
  store i32 6495407, i32* %368, align 4
  %369 = load %struct.Book*, %struct.Book** %24, align 8
  %370 = load i32, i32* %23, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %371
  store %struct.Book* %369, %struct.Book** %372, align 8
  br label %373

373:                                              ; preds = %349
  %374 = load i32, i32* %23, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %23, align 4
  br label %345

376:                                              ; preds = %345
  %377 = load i32, i32* %2, align 4
  %378 = sub nsw i32 %377, 1
  store i32 %378, i32* %25, align 4
  br label %379

379:                                              ; preds = %388, %376
  %380 = load i32, i32* %25, align 4
  %381 = icmp sge i32 %380, 0
  br i1 %381, label %382, label %391

382:                                              ; preds = %379
  %383 = load i32, i32* %25, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %384
  %386 = load %struct.Book*, %struct.Book** %385, align 8
  %387 = bitcast %struct.Book* %386 to i8*
  call void @dlfree(i8* %387)
  br label %388

388:                                              ; preds = %382
  %389 = load i32, i32* %25, align 4
  %390 = add nsw i32 %389, -1
  store i32 %390, i32* %25, align 4
  br label %379

391:                                              ; preds = %379
  store i32 0, i32* %26, align 4
  br label %392

392:                                              ; preds = %420, %391
  %393 = load i32, i32* %26, align 4
  %394 = load i32, i32* %2, align 4
  %395 = icmp slt i32 %393, %394
  br i1 %395, label %396, label %423

396:                                              ; preds = %392
  %397 = call i8* @dlmalloc(i64 204)
  %398 = bitcast i8* %397 to %struct.Book*
  store %struct.Book* %398, %struct.Book** %27, align 8
  %399 = load %struct.Book*, %struct.Book** %27, align 8
  %400 = getelementptr inbounds %struct.Book, %struct.Book* %399, i32 0, i32 0
  %401 = getelementptr inbounds [50 x i8], [50 x i8]* %400, i64 0, i64 0
  %402 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %403 = call i8* @strcpy(i8* %401, i8* %402) #1
  %404 = load %struct.Book*, %struct.Book** %27, align 8
  %405 = getelementptr inbounds %struct.Book, %struct.Book* %404, i32 0, i32 1
  %406 = getelementptr inbounds [50 x i8], [50 x i8]* %405, i64 0, i64 0
  %407 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %408 = call i8* @strcpy(i8* %406, i8* %407) #1
  %409 = load %struct.Book*, %struct.Book** %27, align 8
  %410 = getelementptr inbounds %struct.Book, %struct.Book* %409, i32 0, i32 2
  %411 = getelementptr inbounds [100 x i8], [100 x i8]* %410, i64 0, i64 0
  %412 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %413 = call i8* @strcpy(i8* %411, i8* %412) #1
  %414 = load %struct.Book*, %struct.Book** %27, align 8
  %415 = getelementptr inbounds %struct.Book, %struct.Book* %414, i32 0, i32 3
  store i32 6495407, i32* %415, align 4
  %416 = load %struct.Book*, %struct.Book** %27, align 8
  %417 = load i32, i32* %26, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %418
  store %struct.Book* %416, %struct.Book** %419, align 8
  br label %420

420:                                              ; preds = %396
  %421 = load i32, i32* %26, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %26, align 4
  br label %392

423:                                              ; preds = %392
  %424 = load i32, i32* %2, align 4
  %425 = sub nsw i32 %424, 1
  store i32 %425, i32* %28, align 4
  br label %426

426:                                              ; preds = %435, %423
  %427 = load i32, i32* %28, align 4
  %428 = icmp sge i32 %427, 0
  br i1 %428, label %429, label %438

429:                                              ; preds = %426
  %430 = load i32, i32* %28, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %431
  %433 = load %struct.Book*, %struct.Book** %432, align 8
  %434 = bitcast %struct.Book* %433 to i8*
  call void @dlfree(i8* %434)
  br label %435

435:                                              ; preds = %429
  %436 = load i32, i32* %28, align 4
  %437 = add nsw i32 %436, -1
  store i32 %437, i32* %28, align 4
  br label %426

438:                                              ; preds = %426
  store i32 0, i32* %29, align 4
  br label %439

439:                                              ; preds = %467, %438
  %440 = load i32, i32* %29, align 4
  %441 = load i32, i32* %2, align 4
  %442 = icmp slt i32 %440, %441
  br i1 %442, label %443, label %470

443:                                              ; preds = %439
  %444 = call i8* @dlmalloc(i64 204)
  %445 = bitcast i8* %444 to %struct.Book*
  store %struct.Book* %445, %struct.Book** %30, align 8
  %446 = load %struct.Book*, %struct.Book** %30, align 8
  %447 = getelementptr inbounds %struct.Book, %struct.Book* %446, i32 0, i32 0
  %448 = getelementptr inbounds [50 x i8], [50 x i8]* %447, i64 0, i64 0
  %449 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %450 = call i8* @strcpy(i8* %448, i8* %449) #1
  %451 = load %struct.Book*, %struct.Book** %30, align 8
  %452 = getelementptr inbounds %struct.Book, %struct.Book* %451, i32 0, i32 1
  %453 = getelementptr inbounds [50 x i8], [50 x i8]* %452, i64 0, i64 0
  %454 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %455 = call i8* @strcpy(i8* %453, i8* %454) #1
  %456 = load %struct.Book*, %struct.Book** %30, align 8
  %457 = getelementptr inbounds %struct.Book, %struct.Book* %456, i32 0, i32 2
  %458 = getelementptr inbounds [100 x i8], [100 x i8]* %457, i64 0, i64 0
  %459 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %460 = call i8* @strcpy(i8* %458, i8* %459) #1
  %461 = load %struct.Book*, %struct.Book** %30, align 8
  %462 = getelementptr inbounds %struct.Book, %struct.Book* %461, i32 0, i32 3
  store i32 6495407, i32* %462, align 4
  %463 = load %struct.Book*, %struct.Book** %30, align 8
  %464 = load i32, i32* %29, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %465
  store %struct.Book* %463, %struct.Book** %466, align 8
  br label %467

467:                                              ; preds = %443
  %468 = load i32, i32* %29, align 4
  %469 = add nsw i32 %468, 1
  store i32 %469, i32* %29, align 4
  br label %439

470:                                              ; preds = %439
  %471 = load i32, i32* %2, align 4
  %472 = sub nsw i32 %471, 1
  store i32 %472, i32* %31, align 4
  br label %473

473:                                              ; preds = %482, %470
  %474 = load i32, i32* %31, align 4
  %475 = icmp sge i32 %474, 0
  br i1 %475, label %476, label %485

476:                                              ; preds = %473
  %477 = load i32, i32* %31, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %478
  %480 = load %struct.Book*, %struct.Book** %479, align 8
  %481 = bitcast %struct.Book* %480 to i8*
  call void @dlfree(i8* %481)
  br label %482

482:                                              ; preds = %476
  %483 = load i32, i32* %31, align 4
  %484 = add nsw i32 %483, -1
  store i32 %484, i32* %31, align 4
  br label %473

485:                                              ; preds = %473
  store i32 0, i32* %32, align 4
  br label %486

486:                                              ; preds = %514, %485
  %487 = load i32, i32* %32, align 4
  %488 = load i32, i32* %2, align 4
  %489 = icmp slt i32 %487, %488
  br i1 %489, label %490, label %517

490:                                              ; preds = %486
  %491 = call i8* @dlmalloc(i64 204)
  %492 = bitcast i8* %491 to %struct.Book*
  store %struct.Book* %492, %struct.Book** %33, align 8
  %493 = load %struct.Book*, %struct.Book** %33, align 8
  %494 = getelementptr inbounds %struct.Book, %struct.Book* %493, i32 0, i32 0
  %495 = getelementptr inbounds [50 x i8], [50 x i8]* %494, i64 0, i64 0
  %496 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %497 = call i8* @strcpy(i8* %495, i8* %496) #1
  %498 = load %struct.Book*, %struct.Book** %33, align 8
  %499 = getelementptr inbounds %struct.Book, %struct.Book* %498, i32 0, i32 1
  %500 = getelementptr inbounds [50 x i8], [50 x i8]* %499, i64 0, i64 0
  %501 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %502 = call i8* @strcpy(i8* %500, i8* %501) #1
  %503 = load %struct.Book*, %struct.Book** %33, align 8
  %504 = getelementptr inbounds %struct.Book, %struct.Book* %503, i32 0, i32 2
  %505 = getelementptr inbounds [100 x i8], [100 x i8]* %504, i64 0, i64 0
  %506 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %507 = call i8* @strcpy(i8* %505, i8* %506) #1
  %508 = load %struct.Book*, %struct.Book** %33, align 8
  %509 = getelementptr inbounds %struct.Book, %struct.Book* %508, i32 0, i32 3
  store i32 6495407, i32* %509, align 4
  %510 = load %struct.Book*, %struct.Book** %33, align 8
  %511 = load i32, i32* %32, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %512
  store %struct.Book* %510, %struct.Book** %513, align 8
  br label %514

514:                                              ; preds = %490
  %515 = load i32, i32* %32, align 4
  %516 = add nsw i32 %515, 1
  store i32 %516, i32* %32, align 4
  br label %486

517:                                              ; preds = %486
  %518 = load i32, i32* %2, align 4
  %519 = sub nsw i32 %518, 1
  store i32 %519, i32* %34, align 4
  br label %520

520:                                              ; preds = %529, %517
  %521 = load i32, i32* %34, align 4
  %522 = icmp sge i32 %521, 0
  br i1 %522, label %523, label %532

523:                                              ; preds = %520
  %524 = load i32, i32* %34, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %525
  %527 = load %struct.Book*, %struct.Book** %526, align 8
  %528 = bitcast %struct.Book* %527 to i8*
  call void @dlfree(i8* %528)
  br label %529

529:                                              ; preds = %523
  %530 = load i32, i32* %34, align 4
  %531 = add nsw i32 %530, -1
  store i32 %531, i32* %34, align 4
  br label %520

532:                                              ; preds = %520
  store i32 0, i32* %35, align 4
  br label %533

533:                                              ; preds = %561, %532
  %534 = load i32, i32* %35, align 4
  %535 = load i32, i32* %2, align 4
  %536 = icmp slt i32 %534, %535
  br i1 %536, label %537, label %564

537:                                              ; preds = %533
  %538 = call i8* @dlmalloc(i64 204)
  %539 = bitcast i8* %538 to %struct.Book*
  store %struct.Book* %539, %struct.Book** %36, align 8
  %540 = load %struct.Book*, %struct.Book** %36, align 8
  %541 = getelementptr inbounds %struct.Book, %struct.Book* %540, i32 0, i32 0
  %542 = getelementptr inbounds [50 x i8], [50 x i8]* %541, i64 0, i64 0
  %543 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %544 = call i8* @strcpy(i8* %542, i8* %543) #1
  %545 = load %struct.Book*, %struct.Book** %36, align 8
  %546 = getelementptr inbounds %struct.Book, %struct.Book* %545, i32 0, i32 1
  %547 = getelementptr inbounds [50 x i8], [50 x i8]* %546, i64 0, i64 0
  %548 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %549 = call i8* @strcpy(i8* %547, i8* %548) #1
  %550 = load %struct.Book*, %struct.Book** %36, align 8
  %551 = getelementptr inbounds %struct.Book, %struct.Book* %550, i32 0, i32 2
  %552 = getelementptr inbounds [100 x i8], [100 x i8]* %551, i64 0, i64 0
  %553 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %554 = call i8* @strcpy(i8* %552, i8* %553) #1
  %555 = load %struct.Book*, %struct.Book** %36, align 8
  %556 = getelementptr inbounds %struct.Book, %struct.Book* %555, i32 0, i32 3
  store i32 6495407, i32* %556, align 4
  %557 = load %struct.Book*, %struct.Book** %36, align 8
  %558 = load i32, i32* %35, align 4
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %559
  store %struct.Book* %557, %struct.Book** %560, align 8
  br label %561

561:                                              ; preds = %537
  %562 = load i32, i32* %35, align 4
  %563 = add nsw i32 %562, 1
  store i32 %563, i32* %35, align 4
  br label %533

564:                                              ; preds = %533
  %565 = load i32, i32* %2, align 4
  %566 = sub nsw i32 %565, 1
  store i32 %566, i32* %37, align 4
  br label %567

567:                                              ; preds = %576, %564
  %568 = load i32, i32* %37, align 4
  %569 = icmp sge i32 %568, 0
  br i1 %569, label %570, label %579

570:                                              ; preds = %567
  %571 = load i32, i32* %37, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %572
  %574 = load %struct.Book*, %struct.Book** %573, align 8
  %575 = bitcast %struct.Book* %574 to i8*
  call void @dlfree(i8* %575)
  br label %576

576:                                              ; preds = %570
  %577 = load i32, i32* %37, align 4
  %578 = add nsw i32 %577, -1
  store i32 %578, i32* %37, align 4
  br label %567

579:                                              ; preds = %567
  store i32 0, i32* %38, align 4
  br label %580

580:                                              ; preds = %608, %579
  %581 = load i32, i32* %38, align 4
  %582 = load i32, i32* %2, align 4
  %583 = icmp slt i32 %581, %582
  br i1 %583, label %584, label %611

584:                                              ; preds = %580
  %585 = call i8* @dlmalloc(i64 204)
  %586 = bitcast i8* %585 to %struct.Book*
  store %struct.Book* %586, %struct.Book** %39, align 8
  %587 = load %struct.Book*, %struct.Book** %39, align 8
  %588 = getelementptr inbounds %struct.Book, %struct.Book* %587, i32 0, i32 0
  %589 = getelementptr inbounds [50 x i8], [50 x i8]* %588, i64 0, i64 0
  %590 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %591 = call i8* @strcpy(i8* %589, i8* %590) #1
  %592 = load %struct.Book*, %struct.Book** %39, align 8
  %593 = getelementptr inbounds %struct.Book, %struct.Book* %592, i32 0, i32 1
  %594 = getelementptr inbounds [50 x i8], [50 x i8]* %593, i64 0, i64 0
  %595 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %596 = call i8* @strcpy(i8* %594, i8* %595) #1
  %597 = load %struct.Book*, %struct.Book** %39, align 8
  %598 = getelementptr inbounds %struct.Book, %struct.Book* %597, i32 0, i32 2
  %599 = getelementptr inbounds [100 x i8], [100 x i8]* %598, i64 0, i64 0
  %600 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %601 = call i8* @strcpy(i8* %599, i8* %600) #1
  %602 = load %struct.Book*, %struct.Book** %39, align 8
  %603 = getelementptr inbounds %struct.Book, %struct.Book* %602, i32 0, i32 3
  store i32 6495407, i32* %603, align 4
  %604 = load %struct.Book*, %struct.Book** %39, align 8
  %605 = load i32, i32* %38, align 4
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %606
  store %struct.Book* %604, %struct.Book** %607, align 8
  br label %608

608:                                              ; preds = %584
  %609 = load i32, i32* %38, align 4
  %610 = add nsw i32 %609, 1
  store i32 %610, i32* %38, align 4
  br label %580

611:                                              ; preds = %580
  %612 = load i32, i32* %2, align 4
  %613 = sub nsw i32 %612, 1
  store i32 %613, i32* %40, align 4
  br label %614

614:                                              ; preds = %623, %611
  %615 = load i32, i32* %40, align 4
  %616 = icmp sge i32 %615, 0
  br i1 %616, label %617, label %626

617:                                              ; preds = %614
  %618 = load i32, i32* %40, align 4
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %619
  %621 = load %struct.Book*, %struct.Book** %620, align 8
  %622 = bitcast %struct.Book* %621 to i8*
  call void @dlfree(i8* %622)
  br label %623

623:                                              ; preds = %617
  %624 = load i32, i32* %40, align 4
  %625 = add nsw i32 %624, -1
  store i32 %625, i32* %40, align 4
  br label %614

626:                                              ; preds = %614
  store i32 0, i32* %41, align 4
  br label %627

627:                                              ; preds = %655, %626
  %628 = load i32, i32* %41, align 4
  %629 = load i32, i32* %2, align 4
  %630 = icmp slt i32 %628, %629
  br i1 %630, label %631, label %658

631:                                              ; preds = %627
  %632 = call i8* @dlmalloc(i64 204)
  %633 = bitcast i8* %632 to %struct.Book*
  store %struct.Book* %633, %struct.Book** %42, align 8
  %634 = load %struct.Book*, %struct.Book** %42, align 8
  %635 = getelementptr inbounds %struct.Book, %struct.Book* %634, i32 0, i32 0
  %636 = getelementptr inbounds [50 x i8], [50 x i8]* %635, i64 0, i64 0
  %637 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %638 = call i8* @strcpy(i8* %636, i8* %637) #1
  %639 = load %struct.Book*, %struct.Book** %42, align 8
  %640 = getelementptr inbounds %struct.Book, %struct.Book* %639, i32 0, i32 1
  %641 = getelementptr inbounds [50 x i8], [50 x i8]* %640, i64 0, i64 0
  %642 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %643 = call i8* @strcpy(i8* %641, i8* %642) #1
  %644 = load %struct.Book*, %struct.Book** %42, align 8
  %645 = getelementptr inbounds %struct.Book, %struct.Book* %644, i32 0, i32 2
  %646 = getelementptr inbounds [100 x i8], [100 x i8]* %645, i64 0, i64 0
  %647 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %648 = call i8* @strcpy(i8* %646, i8* %647) #1
  %649 = load %struct.Book*, %struct.Book** %42, align 8
  %650 = getelementptr inbounds %struct.Book, %struct.Book* %649, i32 0, i32 3
  store i32 6495407, i32* %650, align 4
  %651 = load %struct.Book*, %struct.Book** %42, align 8
  %652 = load i32, i32* %41, align 4
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %653
  store %struct.Book* %651, %struct.Book** %654, align 8
  br label %655

655:                                              ; preds = %631
  %656 = load i32, i32* %41, align 4
  %657 = add nsw i32 %656, 1
  store i32 %657, i32* %41, align 4
  br label %627

658:                                              ; preds = %627
  %659 = load i32, i32* %2, align 4
  %660 = sub nsw i32 %659, 1
  store i32 %660, i32* %43, align 4
  br label %661

661:                                              ; preds = %670, %658
  %662 = load i32, i32* %43, align 4
  %663 = icmp sge i32 %662, 0
  br i1 %663, label %664, label %673

664:                                              ; preds = %661
  %665 = load i32, i32* %43, align 4
  %666 = sext i32 %665 to i64
  %667 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %666
  %668 = load %struct.Book*, %struct.Book** %667, align 8
  %669 = bitcast %struct.Book* %668 to i8*
  call void @dlfree(i8* %669)
  br label %670

670:                                              ; preds = %664
  %671 = load i32, i32* %43, align 4
  %672 = add nsw i32 %671, -1
  store i32 %672, i32* %43, align 4
  br label %661

673:                                              ; preds = %661
  store i32 0, i32* %44, align 4
  br label %674

674:                                              ; preds = %702, %673
  %675 = load i32, i32* %44, align 4
  %676 = load i32, i32* %2, align 4
  %677 = icmp slt i32 %675, %676
  br i1 %677, label %678, label %705

678:                                              ; preds = %674
  %679 = call i8* @dlmalloc(i64 204)
  %680 = bitcast i8* %679 to %struct.Book*
  store %struct.Book* %680, %struct.Book** %45, align 8
  %681 = load %struct.Book*, %struct.Book** %45, align 8
  %682 = getelementptr inbounds %struct.Book, %struct.Book* %681, i32 0, i32 0
  %683 = getelementptr inbounds [50 x i8], [50 x i8]* %682, i64 0, i64 0
  %684 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %685 = call i8* @strcpy(i8* %683, i8* %684) #1
  %686 = load %struct.Book*, %struct.Book** %45, align 8
  %687 = getelementptr inbounds %struct.Book, %struct.Book* %686, i32 0, i32 1
  %688 = getelementptr inbounds [50 x i8], [50 x i8]* %687, i64 0, i64 0
  %689 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %690 = call i8* @strcpy(i8* %688, i8* %689) #1
  %691 = load %struct.Book*, %struct.Book** %45, align 8
  %692 = getelementptr inbounds %struct.Book, %struct.Book* %691, i32 0, i32 2
  %693 = getelementptr inbounds [100 x i8], [100 x i8]* %692, i64 0, i64 0
  %694 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %695 = call i8* @strcpy(i8* %693, i8* %694) #1
  %696 = load %struct.Book*, %struct.Book** %45, align 8
  %697 = getelementptr inbounds %struct.Book, %struct.Book* %696, i32 0, i32 3
  store i32 6495407, i32* %697, align 4
  %698 = load %struct.Book*, %struct.Book** %45, align 8
  %699 = load i32, i32* %44, align 4
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %700
  store %struct.Book* %698, %struct.Book** %701, align 8
  br label %702

702:                                              ; preds = %678
  %703 = load i32, i32* %44, align 4
  %704 = add nsw i32 %703, 1
  store i32 %704, i32* %44, align 4
  br label %674

705:                                              ; preds = %674
  %706 = load i32, i32* %2, align 4
  %707 = sub nsw i32 %706, 1
  store i32 %707, i32* %46, align 4
  br label %708

708:                                              ; preds = %717, %705
  %709 = load i32, i32* %46, align 4
  %710 = icmp sge i32 %709, 0
  br i1 %710, label %711, label %720

711:                                              ; preds = %708
  %712 = load i32, i32* %46, align 4
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %713
  %715 = load %struct.Book*, %struct.Book** %714, align 8
  %716 = bitcast %struct.Book* %715 to i8*
  call void @dlfree(i8* %716)
  br label %717

717:                                              ; preds = %711
  %718 = load i32, i32* %46, align 4
  %719 = add nsw i32 %718, -1
  store i32 %719, i32* %46, align 4
  br label %708

720:                                              ; preds = %708
  store i32 0, i32* %47, align 4
  br label %721

721:                                              ; preds = %749, %720
  %722 = load i32, i32* %47, align 4
  %723 = load i32, i32* %2, align 4
  %724 = icmp slt i32 %722, %723
  br i1 %724, label %725, label %752

725:                                              ; preds = %721
  %726 = call i8* @dlmalloc(i64 204)
  %727 = bitcast i8* %726 to %struct.Book*
  store %struct.Book* %727, %struct.Book** %48, align 8
  %728 = load %struct.Book*, %struct.Book** %48, align 8
  %729 = getelementptr inbounds %struct.Book, %struct.Book* %728, i32 0, i32 0
  %730 = getelementptr inbounds [50 x i8], [50 x i8]* %729, i64 0, i64 0
  %731 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %732 = call i8* @strcpy(i8* %730, i8* %731) #1
  %733 = load %struct.Book*, %struct.Book** %48, align 8
  %734 = getelementptr inbounds %struct.Book, %struct.Book* %733, i32 0, i32 1
  %735 = getelementptr inbounds [50 x i8], [50 x i8]* %734, i64 0, i64 0
  %736 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %737 = call i8* @strcpy(i8* %735, i8* %736) #1
  %738 = load %struct.Book*, %struct.Book** %48, align 8
  %739 = getelementptr inbounds %struct.Book, %struct.Book* %738, i32 0, i32 2
  %740 = getelementptr inbounds [100 x i8], [100 x i8]* %739, i64 0, i64 0
  %741 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %742 = call i8* @strcpy(i8* %740, i8* %741) #1
  %743 = load %struct.Book*, %struct.Book** %48, align 8
  %744 = getelementptr inbounds %struct.Book, %struct.Book* %743, i32 0, i32 3
  store i32 6495407, i32* %744, align 4
  %745 = load %struct.Book*, %struct.Book** %48, align 8
  %746 = load i32, i32* %47, align 4
  %747 = sext i32 %746 to i64
  %748 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %747
  store %struct.Book* %745, %struct.Book** %748, align 8
  br label %749

749:                                              ; preds = %725
  %750 = load i32, i32* %47, align 4
  %751 = add nsw i32 %750, 1
  store i32 %751, i32* %47, align 4
  br label %721

752:                                              ; preds = %721
  %753 = load i32, i32* %2, align 4
  %754 = sub nsw i32 %753, 1
  store i32 %754, i32* %49, align 4
  br label %755

755:                                              ; preds = %764, %752
  %756 = load i32, i32* %49, align 4
  %757 = icmp sge i32 %756, 0
  br i1 %757, label %758, label %767

758:                                              ; preds = %755
  %759 = load i32, i32* %49, align 4
  %760 = sext i32 %759 to i64
  %761 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %760
  %762 = load %struct.Book*, %struct.Book** %761, align 8
  %763 = bitcast %struct.Book* %762 to i8*
  call void @dlfree(i8* %763)
  br label %764

764:                                              ; preds = %758
  %765 = load i32, i32* %49, align 4
  %766 = add nsw i32 %765, -1
  store i32 %766, i32* %49, align 4
  br label %755

767:                                              ; preds = %755
  store i32 0, i32* %50, align 4
  br label %768

768:                                              ; preds = %796, %767
  %769 = load i32, i32* %50, align 4
  %770 = load i32, i32* %2, align 4
  %771 = icmp slt i32 %769, %770
  br i1 %771, label %772, label %799

772:                                              ; preds = %768
  %773 = call i8* @dlmalloc(i64 204)
  %774 = bitcast i8* %773 to %struct.Book*
  store %struct.Book* %774, %struct.Book** %51, align 8
  %775 = load %struct.Book*, %struct.Book** %51, align 8
  %776 = getelementptr inbounds %struct.Book, %struct.Book* %775, i32 0, i32 0
  %777 = getelementptr inbounds [50 x i8], [50 x i8]* %776, i64 0, i64 0
  %778 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %779 = call i8* @strcpy(i8* %777, i8* %778) #1
  %780 = load %struct.Book*, %struct.Book** %51, align 8
  %781 = getelementptr inbounds %struct.Book, %struct.Book* %780, i32 0, i32 1
  %782 = getelementptr inbounds [50 x i8], [50 x i8]* %781, i64 0, i64 0
  %783 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %784 = call i8* @strcpy(i8* %782, i8* %783) #1
  %785 = load %struct.Book*, %struct.Book** %51, align 8
  %786 = getelementptr inbounds %struct.Book, %struct.Book* %785, i32 0, i32 2
  %787 = getelementptr inbounds [100 x i8], [100 x i8]* %786, i64 0, i64 0
  %788 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %789 = call i8* @strcpy(i8* %787, i8* %788) #1
  %790 = load %struct.Book*, %struct.Book** %51, align 8
  %791 = getelementptr inbounds %struct.Book, %struct.Book* %790, i32 0, i32 3
  store i32 6495407, i32* %791, align 4
  %792 = load %struct.Book*, %struct.Book** %51, align 8
  %793 = load i32, i32* %50, align 4
  %794 = sext i32 %793 to i64
  %795 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %794
  store %struct.Book* %792, %struct.Book** %795, align 8
  br label %796

796:                                              ; preds = %772
  %797 = load i32, i32* %50, align 4
  %798 = add nsw i32 %797, 1
  store i32 %798, i32* %50, align 4
  br label %768

799:                                              ; preds = %768
  %800 = load i32, i32* %2, align 4
  %801 = sub nsw i32 %800, 1
  store i32 %801, i32* %52, align 4
  br label %802

802:                                              ; preds = %811, %799
  %803 = load i32, i32* %52, align 4
  %804 = icmp sge i32 %803, 0
  br i1 %804, label %805, label %814

805:                                              ; preds = %802
  %806 = load i32, i32* %52, align 4
  %807 = sext i32 %806 to i64
  %808 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %807
  %809 = load %struct.Book*, %struct.Book** %808, align 8
  %810 = bitcast %struct.Book* %809 to i8*
  call void @dlfree(i8* %810)
  br label %811

811:                                              ; preds = %805
  %812 = load i32, i32* %52, align 4
  %813 = add nsw i32 %812, -1
  store i32 %813, i32* %52, align 4
  br label %802

814:                                              ; preds = %802
  store i32 0, i32* %53, align 4
  br label %815

815:                                              ; preds = %843, %814
  %816 = load i32, i32* %53, align 4
  %817 = load i32, i32* %2, align 4
  %818 = icmp slt i32 %816, %817
  br i1 %818, label %819, label %846

819:                                              ; preds = %815
  %820 = call i8* @dlmalloc(i64 204)
  %821 = bitcast i8* %820 to %struct.Book*
  store %struct.Book* %821, %struct.Book** %54, align 8
  %822 = load %struct.Book*, %struct.Book** %54, align 8
  %823 = getelementptr inbounds %struct.Book, %struct.Book* %822, i32 0, i32 0
  %824 = getelementptr inbounds [50 x i8], [50 x i8]* %823, i64 0, i64 0
  %825 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %826 = call i8* @strcpy(i8* %824, i8* %825) #1
  %827 = load %struct.Book*, %struct.Book** %54, align 8
  %828 = getelementptr inbounds %struct.Book, %struct.Book* %827, i32 0, i32 1
  %829 = getelementptr inbounds [50 x i8], [50 x i8]* %828, i64 0, i64 0
  %830 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %831 = call i8* @strcpy(i8* %829, i8* %830) #1
  %832 = load %struct.Book*, %struct.Book** %54, align 8
  %833 = getelementptr inbounds %struct.Book, %struct.Book* %832, i32 0, i32 2
  %834 = getelementptr inbounds [100 x i8], [100 x i8]* %833, i64 0, i64 0
  %835 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %836 = call i8* @strcpy(i8* %834, i8* %835) #1
  %837 = load %struct.Book*, %struct.Book** %54, align 8
  %838 = getelementptr inbounds %struct.Book, %struct.Book* %837, i32 0, i32 3
  store i32 6495407, i32* %838, align 4
  %839 = load %struct.Book*, %struct.Book** %54, align 8
  %840 = load i32, i32* %53, align 4
  %841 = sext i32 %840 to i64
  %842 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %841
  store %struct.Book* %839, %struct.Book** %842, align 8
  br label %843

843:                                              ; preds = %819
  %844 = load i32, i32* %53, align 4
  %845 = add nsw i32 %844, 1
  store i32 %845, i32* %53, align 4
  br label %815

846:                                              ; preds = %815
  %847 = load i32, i32* %2, align 4
  %848 = sub nsw i32 %847, 1
  store i32 %848, i32* %55, align 4
  br label %849

849:                                              ; preds = %858, %846
  %850 = load i32, i32* %55, align 4
  %851 = icmp sge i32 %850, 0
  br i1 %851, label %852, label %861

852:                                              ; preds = %849
  %853 = load i32, i32* %55, align 4
  %854 = sext i32 %853 to i64
  %855 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %854
  %856 = load %struct.Book*, %struct.Book** %855, align 8
  %857 = bitcast %struct.Book* %856 to i8*
  call void @dlfree(i8* %857)
  br label %858

858:                                              ; preds = %852
  %859 = load i32, i32* %55, align 4
  %860 = add nsw i32 %859, -1
  store i32 %860, i32* %55, align 4
  br label %849

861:                                              ; preds = %849
  store i32 0, i32* %56, align 4
  br label %862

862:                                              ; preds = %890, %861
  %863 = load i32, i32* %56, align 4
  %864 = load i32, i32* %2, align 4
  %865 = icmp slt i32 %863, %864
  br i1 %865, label %866, label %893

866:                                              ; preds = %862
  %867 = call i8* @dlmalloc(i64 204)
  %868 = bitcast i8* %867 to %struct.Book*
  store %struct.Book* %868, %struct.Book** %57, align 8
  %869 = load %struct.Book*, %struct.Book** %57, align 8
  %870 = getelementptr inbounds %struct.Book, %struct.Book* %869, i32 0, i32 0
  %871 = getelementptr inbounds [50 x i8], [50 x i8]* %870, i64 0, i64 0
  %872 = getelementptr [14 x i8], [14 x i8]* @.str, i64 0, i64 0
  %873 = call i8* @strcpy(i8* %871, i8* %872) #1
  %874 = load %struct.Book*, %struct.Book** %57, align 8
  %875 = getelementptr inbounds %struct.Book, %struct.Book* %874, i32 0, i32 1
  %876 = getelementptr inbounds [50 x i8], [50 x i8]* %875, i64 0, i64 0
  %877 = getelementptr [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0
  %878 = call i8* @strcpy(i8* %876, i8* %877) #1
  %879 = load %struct.Book*, %struct.Book** %57, align 8
  %880 = getelementptr inbounds %struct.Book, %struct.Book* %879, i32 0, i32 2
  %881 = getelementptr inbounds [100 x i8], [100 x i8]* %880, i64 0, i64 0
  %882 = getelementptr [23 x i8], [23 x i8]* @.str.2, i64 0, i64 0
  %883 = call i8* @strcpy(i8* %881, i8* %882) #1
  %884 = load %struct.Book*, %struct.Book** %57, align 8
  %885 = getelementptr inbounds %struct.Book, %struct.Book* %884, i32 0, i32 3
  store i32 6495407, i32* %885, align 4
  %886 = load %struct.Book*, %struct.Book** %57, align 8
  %887 = load i32, i32* %56, align 4
  %888 = sext i32 %887 to i64
  %889 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %888
  store %struct.Book* %886, %struct.Book** %889, align 8
  br label %890

890:                                              ; preds = %866
  %891 = load i32, i32* %56, align 4
  %892 = add nsw i32 %891, 1
  store i32 %892, i32* %56, align 4
  br label %862

893:                                              ; preds = %862
  %894 = load i32, i32* %2, align 4
  %895 = sub nsw i32 %894, 1
  store i32 %895, i32* %58, align 4
  br label %896

896:                                              ; preds = %905, %893
  %897 = load i32, i32* %58, align 4
  %898 = icmp sge i32 %897, 0
  br i1 %898, label %899, label %908

899:                                              ; preds = %896
  %900 = load i32, i32* %58, align 4
  %901 = sext i32 %900 to i64
  %902 = getelementptr inbounds %struct.Book*, %struct.Book** %62, i64 %901
  %903 = load %struct.Book*, %struct.Book** %902, align 8
  %904 = bitcast %struct.Book* %903 to i8*
  call void @dlfree(i8* %904)
  br label %905

905:                                              ; preds = %899
  %906 = load i32, i32* %58, align 4
  %907 = add nsw i32 %906, -1
  store i32 %907, i32* %58, align 4
  br label %896

908:                                              ; preds = %896
  store i32 0, i32* %1, align 4
  %909 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %909)
  %910 = load i32, i32* %1, align 4
  ret i32 %910
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
