const std = @import("std");

pub fn main() void {
    const arr = [3]i32{ 1, 2, 3 };
    var arr_copy = arr;
    arr_copy[2] = 5;
    std.debug.print("arr:      {any}\n", .{arr});
    std.debug.print("arr_copy: {any}\n", .{arr_copy});
}
