| Allocator           | Code Pattern              | Test File         | Original          | Improved      |
|---------------------|---------------------------|-------------------|-------------------|---------------|
| StackAllocator | Allocate in loop, deallocate opposite loop | stack-sample.c | 8.9496 | 3.92543 | 
| PoolAllocator | All same size, structure not TOO big (if too big, creation pool dominates) | pool-sample.c | 5.0156 |  3.5805 |