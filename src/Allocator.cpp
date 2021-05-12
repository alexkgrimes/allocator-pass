#include "AllocatorLib.cpp"

class AlexAllocator {
    using alex_allocator = Segregator<8, Segregator<128, Mallocator, Jemallocator>,
                                          Segregator<1248, Mallocator, Jemallocator>>;

    static alex_allocator bestAllocator;
    static Block allocate(size_t n) {
        return bestAllocator.allocate(n);
    }

    static void deallocate(Block &b) {
        bestAllocator.deallocate(b);
    }
};
