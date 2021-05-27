#ifndef UTILS_H
#define UTILS_H
#include <stdio.h>
#include <iostream>

class Utils {
public:
	static const std::size_t CalculatePadding(const std::size_t baseAddress, const std::size_t alignment) {
		if (alignment == 0) {
			return 0;
		}

		const std::size_t multiplier = (baseAddress / alignment) + 1;
		const std::size_t alignedAddress = multiplier * alignment;
		const std::size_t padding = alignedAddress - baseAddress;
		return padding;
	}

	static const std::size_t CalculatePaddingWithHeader(const std::size_t baseAddress, const std::size_t alignment, const std::size_t headerSize) {
		std::size_t padding = CalculatePadding(baseAddress, alignment);
		std::size_t neededSpace = headerSize;

		if (padding < neededSpace){
			// Header does not fit - Calculate next aligned address that header fits
			neededSpace -= padding;

			// How many alignments I need to fit the header        
        	if(alignment != 0 && neededSpace % alignment > 0){
		        padding += alignment * (1+(neededSpace / alignment));
        	}else if (alignment != 0) {
		        padding += alignment * (neededSpace / alignment);
        	} 
		}

		return padding;
	}
};

#endif /* UTILS_H */