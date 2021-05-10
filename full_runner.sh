
rm -rf run
mkdir run

output="run/output.txt"
touch $output
echo "test_name, malloc_time, jemalloc_time, dlmalloc_time" &> $output

#go to tests folder
cd code-samples;
output="../run/output.txt"

for filename in *.c; do

    ex=${filename%.*}
    echo -n "$ex, " >> $output

    # compile program with malloc
    clang -O1 -o "$ex" "$filename" -pthread;

    # run program with malloc
    perf stat ./$ex 2>&1 >/dev/null | tail -n 6 | sed 's/ \+//' | sed 's/ /, /' | head -n1 | sed -e 's/\s.*$//'| awk '{printf("%s ", $0)}' >> $output

    # go to the compiler dir
    cd ../run;
    output="output.txt";

    # compile to bitcode
    clang -O1 -S -emit-llvm -Xclang -disable-llvm-passes -o "$ex".ll ../code-samples/"$filename" -pthread;

    # noelle norm
    noelle-norm "$ex".ll -o "$ex".ll;   

    # compile with jemalloc
    noelle-load -S -load ~/CAT/lib/CAT.so -CAT -std_jemalloc "$ex".ll -o "$ex"-jemalloc.ll;
    llc -filetype=obj "$ex"-jemalloc.ll -o "$ex"-jemalloc.o;

    clang "$ex"-jemalloc.o -o "$ex"-jemalloc -I`jemalloc-config --includedir` \
    -L`jemalloc-config --libdir` -Wl,-rpath,`jemalloc-config --libdir` \
    -ljemalloc `jemalloc-config --libs`;

    perf stat ./"$ex"-jemalloc 2>&1 >/dev/null | tail -n 6 | sed 's/ \+//' | sed 's/ /, /' | head -n1 | sed -e 's/\s.*$//' | awk '{printf("%s ", $0)}' >> $output

    # compile with dlmalloc
    noelle-load -S -load ~/CAT/lib/CAT.so -CAT -dlmalloc "$ex".ll -o "$ex"-dlmalloc.ll;
    llc -filetype=obj "$ex"-dlmalloc.ll -o "$ex"-dlmalloc.o;

    clang "$ex"-dlmalloc.o -o "$ex"-dlmalloc \
    -L/home/akg434/noelle/alex/dlmalloc/lib/ -lmalloc -pthread

    perf stat ./"$ex"-dlmalloc 2>&1 >/dev/null | tail -n 6 | sed 's/ \+//' | sed 's/ / ,/' | head -n1 | sed -e 's/\s.*$//' >> $output

    cd ../code-samples;
    output="../run/output.txt"

done

cd ../run;

# compile all programs to bitcode
# for filename in *.c; do
#     clang -emit-llvm -o "$filename".bc -c ../../../../alex/basic/"$filename" -pthread;
# done

# noelle-norm malloc_test.bc -o norm-ir.bc;
# noelle-load -load /home/akg434/CAT/lib/CAT.so -CAT norm-ir.bc -o jemalloc.bc;
# llc -filetype=obj jemalloc.bc -o jemalloc.o;
# clang jemalloc.o -o jemalloc -I`jemalloc-config --includedir` \
# -L`jemalloc-config --libdir` -Wl,-rpath,`jemalloc-config --libdir` \
# -ljemalloc `jemalloc-config --libs`;

# perf stat ./jemalloc;