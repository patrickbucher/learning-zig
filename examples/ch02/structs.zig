const std = @import("std");

const Point = struct {
    const Self = @This();

    x: i32 = 0,
    y: i32 = 0,

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

const Rectangle = struct {
    width: i32,
    height: i32,

    fn size(self: Rectangle) i32 {
        return self.width * self.height;
    }

    fn scale(self: *Rectangle, f: f32) void {
        const w: f32 = @floatFromInt(self.width);
        const h: f32 = @floatFromInt(self.height);
        self.width = @intFromFloat(std.math.round(w * f));
        self.height = @intFromFloat(std.math.round(h * f));
    }
};

pub fn main() void {
    const a = Point{ .x = 3, .y = 4 };
    const o = Point{};
    std.debug.print("x = {}, y = {}\n", .{ a.x, a.y });
    std.debug.print("dist to origin: {}\n", .{a.dist(o)});

    animal_noises.moo();
    animal_noises.woof();

    var r = Rectangle{ .width = 3, .height = 4 };
    const a1 = r.size();
    r.scale(1.5);
    const a2 = Rectangle.size(r);
    std.debug.print("rect size before: {}, after: {}\n", .{ a1, a2 });
}
