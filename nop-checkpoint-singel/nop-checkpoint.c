#include <unistd.h>
#include <stdio.h>

int main() {
    for(int i = 0; i < 10000; i++) {
        printf("Main loop %d\n", i);
    }
    
    for(int i = 0; i < 500; i++) {
        printf("nop");
    }
    return 0;
}