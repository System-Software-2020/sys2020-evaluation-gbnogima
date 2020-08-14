#include <unistd.h>
#include <sys/syscall.h>

ssize_t write (int fd, const void *s, size_t n){
    syscall(4, fd, s, n);
    return 0;
}

int main() {
    write(1, "Hello\n", 6);
    return 0;
}