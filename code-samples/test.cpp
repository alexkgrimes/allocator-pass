#include <stdio.h>

class Bear {
    public:
        static void hiThere() {
            printf("hi here");
        }
        
};



int addTwoNums(int a, int b) {
    return a + b;
}

int boop(int a, int b) {
    return a + b;
}

int main (){
    Bear::hiThere();
    addTwoNums(1, 2);
    boop(5, 6);
}