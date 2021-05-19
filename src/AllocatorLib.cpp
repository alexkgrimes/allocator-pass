// #include <utility>
// #include <type_traits>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
// #include <memory>
// #include <map>
// #include <iostream>
#include "../../../../alex/jemalloc/include/jemalloc/jemalloc.h"
#include "memory-allocators/includes/StackAllocator.h"
#include "AllocatorLib.h"

void Block::reset() {
  ptr = nullptr;
  length = 0;
}

// MARK: - Mallocator
Block Mallocator::allocate(size_t n) noexcept {
  printf("Mallocator::allocate\n");
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

void Mallocator::deallocate(Block &b) noexcept {
  printf("Mallocator::deallocate\n");
  free(b.ptr);
  b.reset();
}

// MARK: - Jemallocator

Block Jemallocator::allocate(size_t n) noexcept {
  printf("Jemallocator::allocate\n");
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

void Jemallocator::deallocate(Block b) noexcept {
  printf("Jemallocator::deallocate\n");
  jefree(b.ptr);
  b.reset();
}



