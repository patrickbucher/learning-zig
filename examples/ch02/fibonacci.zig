const std = @import("std");
const expect = std.testing.expect;

pub fn fib(n: u32) u32 {
    if (n == 0) {
        return 0;
    } else if (n == 1) {
        return 1;
    }
    return fib(n - 2) + fib(n - 1);
}

test "fibonacci numbers" {
    try expect(fib(0) == 0);
    try expect(fib(1) == 1);
    try expect(fib(2) == 1);
    try expect(fib(3) == 2);
    try expect(fib(4) == 3);
    try expect(fib(5) == 5);
    try expect(fib(6) == 8);
    try expect(fib(7) == 13);
}
