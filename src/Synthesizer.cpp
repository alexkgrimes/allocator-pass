#include <utility>
#include <type_traits>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <memory>
#include <map>
#include "../../../alex/jemalloc/include/jemalloc/jemalloc.h"

enum Allocator {
  std_malloc, std_jemalloc, dlmalloc
};

struct Block {
  void  *ptr;
  size_t length;

  void reset() {
    ptr = nullptr;
    length = 0;
  }
};

// MARK: - Mallocator

class Mallocator {
  public:

    Block allocate(size_t n) {
      Block result;

      if (n == 0) {
        return result;
      }

      auto p = malloc(n);
      if (p != nullptr) {
        result.ptr = p;
        result.length = n;
        return result;
      }
      return result;
    }

    void deallocate(Block &b) {
      free(b.ptr);
      b.reset();
    }
};

// MARK: - Jemallocator

class Jemallocator {
  public:

    Block allocate(size_t n) {
      Block result;

      if (n == 0) {
        return result;
      }

      auto p = jemalloc(n);
      if (p != nullptr) {
        result.ptr = p;
        result.length = n;
        return result;
      }
      return result;
    }

    void deallocate(Block &b) {
      jefree(b.ptr);
      b.reset();
    }
};

template <size_t Threshold, class SmallAllocator, class LargeAllocator>
  class Segregator : private SmallAllocator, private LargeAllocator {
    public:

      static constexpr size_t threshold = Threshold;

      Block allocate(size_t n) {
        Block result;
        if (n <= threshold) {
          result = SmallAllocator::allocate(n);
        } else {
          result = LargeAllocator::allocate(n);
        }
        
        return result;
      }

      void deallocate(Block &b) {

        if (b.length <= Threshold) {
          return SmallAllocator::deallocate(b);
        }
        return LargeAllocator::deallocate(b);
      }
  };




// template<class AlexAllocator, class... Args>
// // template<class M = Mallocator, class J = Jemallocator>
// class AlexAllocator: private Mallocator, private Jemallocator {
//   private:
//     map<Block, Allocator> ownersMap;

//   public:
//     Block allocate(size_t n) {

//     }

//     void deallocate(Block &b) {

//     }
// };





