
module RCA_32_3(output [31:0] sum, output cout, input [31:0] a, b);

  wire [31:0] c;
  assign c[0]=0;
  FA fa0(sum[0], c[1], a[0], b[0], c[0]);
  FA fa[30:1](sum[30:1], c[31:2], a[30:1], b[30:1], c[30:1]);
  FA fa31(sum[31], cout, a[31], b[31], c[31]);   
endmodule


module FA(output sum, cout, input a, b, c);

  assign sum=a^b^c;
  assign cout=(a ^ b)&c|(a & b);
endmodule
