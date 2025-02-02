const std = @import("std");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    stdout.print("hello world\n", .{});
}

//find me
