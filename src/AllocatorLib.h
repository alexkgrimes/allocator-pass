// #include <type_traits>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
// #include <memory>
// #include <map>
// #include <iostream>
#include "../../../../alex/jemalloc/include/jemalloc/jemalloc.h"
#include "memory-allocators/includes/StackAllocator.h"

struct Block {
  void  *ptr;
  size_t length;

  Block() {}
  Block(void* p, size_t l) {
    ptr = p;
    length = l;
  }
  void reset(); 
};

template <size_t TotalSize>
class Stackocator {
  private: 
    static const size_t totalSize = TotalSize;
    Allocator * stackAllocator = new StackAllocator(totalSize);

  public:

    Block allocate(size_t n) noexcept {
        printf("Stackocator::allocate\n");
        Block result;

        if (n == 0) {
            return result;
        }

        auto p = stackAllocator->Allocate(n);
        if (p != nullptr) {
            result.ptr = p;
            result.length = n;
            return result;
        }
        return result;
    }
    void deallocate(Block b) noexcept  {
        printf("Stackocator::deallocate\n");
        stackAllocator->Free(b.ptr);
        b.reset();
    }
};

class Mallocator {
  public:
    Block allocate(size_t n) noexcept;
    void deallocate(Block &b) noexcept;
};

class Jemallocator {
  public:
    Block allocate(size_t n) noexcept;
    void deallocate(Block b) noexcept;
};

// MARK: - Segregator
template <size_t Threshold, class SmallAllocator, class LargeAllocator>
  class Segregator: private SmallAllocator, LargeAllocator {
    public:

      static constexpr size_t threshold = Threshold;

      Block allocate(size_t n) noexcept {
        Block result;
        if (n <= threshold) {
          result = SmallAllocator::allocate(n);
        } else {
          result = LargeAllocator::allocate(n);
        }
        
        return result;
      }

      void deallocate(Block b) noexcept {

        if (b.length <= Threshold) {
          return SmallAllocator::deallocate(b);
        }
        return LargeAllocator::deallocate(b);
      }
  };
