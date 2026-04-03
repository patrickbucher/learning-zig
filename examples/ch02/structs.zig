const std = @import("std");

const Point = struct {
    const Self = @This();

    x: i32,
    y: i32,

    fn dist(self: Self, to: Self) f32 {
        return std.math.sqrt(std.math.pow(f32, @floatFromInt(self.x - to.x), 2) +
            std.math.pow(f32, @floatFromInt(self.y - to.y), 2));
    }
};

const animal_noises = struct {
    fn moo() void {
        std.debug.print("moo!\n", .{});
    }

    fn woof() void {
        std.debug.print("woof!\n", .{});
    }
};

pub fn main() void {
    const a = Point{ .x = 3, .y = 4 };
    const o = Point{ .x = 0, .y = 0 };
    std.debug.print("x = {}, y = {}\n", .{ a.x, a.y });
    std.debug.print("dist to origin: {}\n", .{a.dist(o)});

    animal_noises.moo();
    animal_noises.woof();
}
