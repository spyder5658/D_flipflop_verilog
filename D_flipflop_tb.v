`timescale 1ns/1ns
`include "D_flipflop.v"

module D_flipflop_tb;

reg D=0, CLK=0;
wire Q;
D_flipflop uut(D,CLK,Q);

always begin
    CLK = ~CLK;
    #10;
end

initial begin
    $dumpfile("D_flipflop_tb.vcd");
    $dumpvars(0,D_flipflop_tb);
    D=1; #40;
    D=0; #40;
    $finish;
end

endmodule