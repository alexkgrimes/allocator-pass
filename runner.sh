cd code-samples;

filename="split-alloc.c"
ex=$(echo "$filename" | cut -f 1 -d '.')

clang -O1 $filename;
./a.out;

### APPLY TRANSFORMATION ###

# clang -O1 -emit-llvm -c -Xclang -disable-llvm-passes A.c -o A.bc
clang -O1 -S -emit-llvm -Xclang -disable-llvm-passes $filename -o "$ex".ll
# clang -emit-llvm -c $filename
noelle-norm "$ex".ll -o "$ex".ll; 
noelle-load -S -load ~/CAT/lib/CAT.so -CAT -synthesize "$ex".ll -o "$ex".ll; 
noelle-load -S -load ~/CAT/lib/CAT.so -CAT -replace_alloc "$ex".ll -o "$ex".ll; 

opt -O3 "$ex".ll -o "$ex".ll;
clang -O3 -c -march=native "$ex".ll;
clang++ -g -O3 "$ex".o ../src/AllocatorLib.cpp ../src/Allocator.cpp;
./a.out;

cd ../..;