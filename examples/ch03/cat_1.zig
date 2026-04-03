const std = @import("std");

pub fn main() !void {
    const filepath = "meow.txt";

    var gpa = std.heap.DebugAllocator(.{}).init;
    defer _ = gpa.deinit();
    const ally = gpa.allocator();

    const cwd = std.fs.cwd();
    const max_bytes = 16 * 1024 * 1024;
    const text = try cwd.readFileAlloc(ally, filepath, max_bytes);
    defer ally.free(text);

    const stdout_file = std.fs.File.stdout();
    var stdout_buffer: [1024]u8 = undefined;
    var stdout_writer = stdout_file.writer(&stdout_buffer);
    const stdout = &stdout_writer.interface;

    try stdout.writeAll(text);
    try stdout.flush();
}
