//
// Quiz time. See if you can make this program work!
//
// Solve this any way you like, just be sure the output is:
//
//     my_num=42
//
const std = @import("std");

const NumError = error{IllegalNumber};

// solution 1
pub fn main() !void {
    const stdout = std.io.getStdOut().writer();

    const my_num: u32 = try getNumber();

    try stdout.print("my_num={}\n", .{my_num});
}

// This function is obviously weird and non-functional. But you will not be changing it for this quiz.
fn getNumber() NumError!u32 {
    if (false) return NumError.IllegalNumber;
    return 42;
}

// solution 2
// pub fn main() void {
//     const stdout = std.io.getStdOut().writer();

//     const my_num: u32 = getNumber() catch return;

//     stdout.print("my_num={}\n", .{my_num}) catch return;
// }

// // This function is obviously weird and non-functional. But you will not be changing it for this quiz.
// fn getNumber() NumError!u32 {
//     if (false) return NumError.IllegalNumber;
//     return 42;
// }
//

// solution 3
// pub fn main() void {
//     const stdout = std.io.getStdOut().writer();

//     const my_num: NumError!u32 = getNumber();

//     stdout.print("my_num={!}\n", .{my_num}) catch return;
// }

// // This function is obviously weird and non-functional. But you will not be changing it for this quiz.
// fn getNumber() NumError!u32 {
//     return 42;
// }

// solution 4
// pub fn main() void {
//     const stdout = std.io.getStdOut().writer();

//     const my_num: NumError!u32 = getNumber() catch NumError.IllegalNumber;

//     stdout.print("my_num={!}\n", .{my_num}) catch return;
// }

// // This function is obviously weird and non-functional. But you will not be changing it for this quiz.
// fn getNumber() NumError!u32 {
//     return 42;
// }
