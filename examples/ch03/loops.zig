const std = @import("std");

pub fn main() void {
    const dudes = [_][]const u8{ "Joey", "Danny", "Bobby", "Phil" };
    const ages = [_]i32{ 32, 45, 59, 41 };

    for (0.., dudes, ages) |i, dude, age| {
        std.debug.print("{}) {s} is {} years old.\n", .{ i + 1, dude, age });
    }

    const fibs = [_]i32{ 1, 1, 2, 3, 5, 8, 13 };
    std.debug.print("{any}\n", .{search(&fibs, 8)});
}

fn search(haystack: []const i32, needle: i32) error{NotFound}!usize {
    return for (haystack, 0..) |item, i| {
        if (item == needle) {
            break i;
        }
    } else error.NotFound;
}
