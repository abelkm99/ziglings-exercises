//
// Zig has a handy "try" shortcut for this common error handling pattern:
//
//     canFail() catch |err| return err;
//
// which can be more compactly written as:
//
//     try canFail();
//
const std = @import("std");

const MyNumberError = error{
    TooSmall,
    TooBig,
};

pub fn main() void {
    const a: u32 = addFive(44) catch 0;
    const b: u32 = addFive(14) catch 0; // this one is > 10 and < 20
    const c: u32 = addFive(4) catch 0;

    std.debug.print("a={}, b={}, c={}\n", .{ a, b, c });
}

fn addFive(n: u32) MyNumberError!u32 {
    // This function needs to return any error which might come back from detect().
    // Please use a "try" statement rather than a "catch".
    //
    // technically if error is detected it will directry return from here
    // std.debug.print("detecting to add five\n", .{});
    const x = try detect(n);
    // std.debug.print("no error detected adding five\n", .{});

    return x + 5;
}

fn detect(n: u32) MyNumberError!u32 {
    if (n < 10) return MyNumberError.TooSmall;
    if (n > 20) return MyNumberError.TooBig;
    return n;
}
