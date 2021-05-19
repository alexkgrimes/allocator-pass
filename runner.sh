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

clang -O1 -S -emit-llvm "$ex".ll -o "$ex".ll ;
clang -O1 -c -march=native "$ex".ll ;
# clang++ -O3 -c -o Allocator.o ../src/Allocator.cpp;

# llvm-ar rc Allocator.a Allocator.o;
clang -g -O1 "$ex".o \
    ../src/Allocator.cpp ../src/AllocatorLib.cpp \
    ../src/memory-allocators/src/StackAllocator.cpp \
    -I`jemalloc-config --includedir` \
    -L`jemalloc-config --libdir` -Wl,-rpath,`jemalloc-config --libdir` \
    -ljemalloc `jemalloc-config --libs`;
./a.out;

cd ../..;