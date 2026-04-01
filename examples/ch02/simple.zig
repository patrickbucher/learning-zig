const std = @import("std");

pub fn main() void {
    const x: u6 = 42;
    std.debug.print("{}\n", .{x});
}
