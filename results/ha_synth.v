module ha
  (input  a,
   input  b,
   output sum,
   output carry);
  wire n2;
  wire n3;
  assign sum = n2; //(module output)
  assign carry = n3; //(module output)
  /* ha.vhdl:22:16  */
  assign n2 = a ^ b;
  /* ha.vhdl:23:16  */
  assign n3 = a & b;
endmodule

