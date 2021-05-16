#include "AllocatorLib.cpp"

class AlexAllocator {
    using alex_allocator = Segregator<8, Segregator<128, Mallocator, Jemallocator>,
                                         Segregator<1248, Stackocator<20400>, Jemallocator>>;

    static alex_allocator bestAllocator;
    static void* allocate(size_t n) {
        return bestAllocator.allocate(n).ptr;
    }

    static void deallocate(void* p, size_t n) {
        auto b = Block(p, n);
        bestAllocator.deallocate(b);
    }
};
