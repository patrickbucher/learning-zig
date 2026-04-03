const std = @import("std");

pub fn main() void {
    const x: f32 = 12.0;
    const y: f32 = 4.0;
    const z: f32 = 0.0;

    std.debug.print("{}/{}={any}\n", .{ x, y, divide(x, y) });
    std.debug.print("{}/{}={any}\n", .{ x, z, divide(x, z) });

    const result: f32 = divide(x, z) catch 0;
    std.debug.print("{}/{}={}\n", .{ x, z, result });
}

const DivisionError = error{
    DivideByZero,
};

fn divide(x: f32, y: f32) DivisionError!f32 {
    if (y == 0) {
        return error.DivideByZero;
    }
    return x / y;
}
