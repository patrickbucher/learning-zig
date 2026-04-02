const std = @import("std");

pub fn main() void {
    const arr = [_]i32{ 11, 22, 33, 44, 55 };
    const slice: []const i32 = &arr;
    const x = slice[2];

    std.debug.print("slice: {any}, x: {}\n", .{ slice, x });
    std.debug.print("ptr: {*}, len: {}\n", .{ slice.ptr, slice.len });

    const range = arr[1..4];
    std.debug.print("range: {any}\n", .{range});
}
