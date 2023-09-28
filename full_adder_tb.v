`include "full_adder.v"

module full_adder_tb;
    reg [3:0] a;
    reg [3:0] b;
    reg cin;
    wire [3:0]sum;
    integer i;

    full_adder a0(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

    initial begin 
        $dumpfile("full_adder.vcd");
        $dumpvars(0, full_adder_tb);
        
        a = 'b0101; b = 'b0111; cin = 1;
        #10
        a = 'b1010; b = 'b0001; cin = 0;
        #10
        a = 'b11; b = 'b101; cin = 1;
        
    end
endmodule;