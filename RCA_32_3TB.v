module RCA_32_3TB;
  wire [31:0] abin_sum;
  wire abin_cout;
  reg [31:0]abin_a, abin_b;
  reg c;
  
  RCA_32_3 rca32(abin_sum[31:0], abin_cout, abin_a[31:0], abin_b[31:0]);
  
  initial
  begin
    $display("abin_a|abin_b||abin_cout|abin_sum");
  end
  
  initial
  begin
    $monitor("%b|%b||%b|%b", abin_a[31:0], abin_b[31:0], abin_cout, abin_sum[31:0]);
  end
  
  initial
  begin
    abin_a='b10100000101000001111111111111111; abin_b='b10100000101111111111111111100000; 
    #10 abin_a='b01011000111111111111111111110100; abin_b='b11110100111101001111111111111111;
    #10 abin_a='b11111111111111110000111100111101; abin_b='b00001111000011111111111111111111;
    #10 abin_a='b11011111111111111110100011001010; abin_b='b11001111111111111111100011001010;

  end
endmodule