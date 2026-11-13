
module tb_full_adder_8bit;

    reg  [7:0] A;
    reg  [7:0] B;
    reg        Cin;

    wire [7:0] Sum;
    wire       Cout;

    // Instantiate the 8-bit full adder
    full_adder_8bit uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin

        $monitor("Time=%0t | A=%b | B=%b | Cin=%b | Sum=%b | Cout=%b",
                  $time, A, B, Cin, Sum, Cout);

        // Test case 1
        A = 8'b00000001;
        B = 8'b00000010;
        Cin = 0;
        #10;

       
        $finish;
    end

endmodule
