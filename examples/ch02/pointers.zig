const std = @import("std");

pub fn main() void {
    var x: i32 = 123;
    std.debug.print("{}\n", .{x});

    const x_ptr: *i32 = &x;
    x_ptr.* = 321;

    std.debug.print("{}\n", .{x_ptr.*});
    std.debug.print("{}\n", .{x});
}
