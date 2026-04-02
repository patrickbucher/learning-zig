const std = @import("std");

pub fn main() void {
    const T = @TypeOf("I am a string literal");
    std.debug.print("{}\n", .{T});
}
