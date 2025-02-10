# VHDL Integer Overflow Bug

This repository demonstrates a common error in VHDL: integer overflow in a counter. The `buggy_counter.vhd` file contains a counter that increments on each clock cycle.  However, it lacks bounds checking, leading to an overflow when the counter reaches its maximum value.  The `fixed_counter.vhd` file provides a corrected version.

## Bug Description
The original code uses a standard integer type for the counter.  Integers in VHDL have a limited range, and exceeding this range results in undefined behavior.  This can manifest as unexpected values, simulation failures, or even synthesis issues.

## Solution
The corrected code uses a `unsigned` type, which is specifically designed for counters and handles overflow predictably by wrapping around. Alternatively, explicit checks could be implemented to stop the counter at a defined maximum.