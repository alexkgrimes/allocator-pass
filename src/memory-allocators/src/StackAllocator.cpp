#include "StackAllocator.h"
#include "Utils.h"  /* CalculatePadding */
#include <stdlib.h>     /* malloc, free */
#include <algorithm>    /* max */
#include <iostream>
#ifdef _DEBUG
#include <iostream>
#include <stdio.h>
#endif

StackAllocator::StackAllocator(const std::size_t totalSize)
: Allocator(totalSize) {
    Init();
}

void StackAllocator::Init() {
    if (m_start_ptr != nullptr) {
        free(m_start_ptr);
    }
    m_start_ptr = malloc(m_totalSize);
    m_offset = 0;
}

StackAllocator::~StackAllocator() {
    free(m_start_ptr);
    m_start_ptr = nullptr;
}

void* StackAllocator::Allocate(const std::size_t size, const std::size_t alignment) {
    const std::size_t currentAddress = (std::size_t)m_start_ptr + m_offset;

    // std::size_t padding = Utils::CalculatePaddingWithHeader(currentAddress, alignment, sizeof (AllocationHeader));
    if (m_offset + size > m_totalSize) {
        std::cout << "ERROR: Stack allocator is out of space!" << std::endl;
        return nullptr;
    }
    // m_offset += padding;

    // const std::size_t nextAddress = currentAddress + padding;
    // const std::size_t nextAddress = currentAddress;
    // const std::size_t headerAddress = nextAddress - sizeof (AllocationHeader);
    // AllocationHeader allocationHeader{padding};
    // AllocationHeader * headerPtr = (AllocationHeader*) headerAddress;
    // headerPtr = &allocationHeader;
    
    m_offset += size;

#ifdef _DEBUG
    std::cout << "A" << "\t@C " << (void*) currentAddress << "\t@R " << (void*) currentAddress << "\tO " << m_offset << "\tP " << padding << std::endl;
#endif
    m_used = m_offset;
    m_peak = std::max(m_peak, m_used);

    return (void*) currentAddress;
}

void StackAllocator::Free(void *ptr) {
        // Move offset back to clear address

    const std::size_t currentAddress = (std::size_t) ptr;
    // const std::size_t headerAddress = currentAddress - sizeof (AllocationHeader);
    // const AllocationHeader * allocationHeader{ (AllocationHeader *) headerAddress};

    m_offset = currentAddress - (std::size_t) m_start_ptr;
    m_used = m_offset;

#ifdef _DEBUG
    std::cout << "F" << "\t@C " << (void*) currentAddress << "\t@F " << (void*) ((char*) m_start_ptr + m_offset) << "\tO " << m_offset << std::endl;
#endif
}

void StackAllocator::Free(void *ptr, size_t size) {
    const std::size_t currentAddress = (std::size_t) ptr;
    if (currentAddress == ((std::size_t)m_start_ptr + m_offset - size)) {
        m_offset -= size;
    } else {
        std::cout << "ERROR: Not freeing on call to free" << std::endl;
    }
    
}

void StackAllocator::Reset() {
    m_offset = 0;
    m_used = 0;
    m_peak = 0;
}