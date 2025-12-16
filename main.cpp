#include <cstdio>
int main() {
    int i = 0;
    int t = 0;
    while(true) {
        if(t > 99999) {
            i++;
            t = 0;
            printf("%d\n", i);
        }
        t++;
    }
}
