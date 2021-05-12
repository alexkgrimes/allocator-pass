#include <utility>
#include <type_traits>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <memory>
#include <map>
#include <iostream>
#include "../../../../alex/jemalloc/include/jemalloc/jemalloc.h"

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

    Block allocate(size_t n) noexcept {
      std::cout << "Mallocator::allocate\n";
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

    void deallocate(Block &b) noexcept {
      std::cout << "Mallocator::deallocate\n";
      free(b.ptr);
      b.reset();
    }
};

// MARK: - Jemallocator
class Jemallocator {
  public:

    Block allocate(size_t n) noexcept {
      std::cout << "Jemallocator::allocate\n";
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

    void deallocate(Block &b) noexcept {
      std::cout << "Jemallocator::deallocate\n";
      jefree(b.ptr);
      b.reset();
    }
};

template <size_t Threshold, class SmallAllocator, class LargeAllocator>
  class Segregator: private SmallAllocator, LargeAllocator {
    public:

      // using SmallAllocator = VirtualSmallAllocator;
      // using LargeAllocator = VirtualLargeAllocator;

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

      void deallocate(Block &b) noexcept {

        if (b.length <= Threshold) {
          return SmallAllocator::deallocate(b);
        }
        return LargeAllocator::deallocate(b);
      }
  };

  // int main() {
  //    using AlexAllocator = Segregator<8, Segregator<1637, Mallocator, Jemallocator>, 
  //                                         Segregator<2963, Mallocator, Jemallocator>>;
 
  //     AlexAllocator bestAllocator;

  //     auto m1 = bestAllocator.allocate(32);
  //     bestAllocator.deallocate(m1);
  //     return 0;
  // }




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





