const std = @import("std");

const fib = @import("fibonacci.zig").fib;

pub fn main() void {
    const n = 17;
    std.debug.print("Fibonacci #{} is {}\n", .{ n, fib(n) });
}
