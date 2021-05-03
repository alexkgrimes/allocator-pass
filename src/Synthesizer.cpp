#include <utility>
#include <type_traits>
#include <stddef.h>
#include <memory>

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

// template<class T, class Allocator, class... Args>
template<class M = Mallocator, class J = Jemallocator>
class MyAllocator: private M, private J {
  public:
    Block allocate(size_t n);
    void deallocate(Block &b);
};





