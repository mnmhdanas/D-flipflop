module dff(din,clk,rst,q);
  input din,clk,rst;
  output reg q;
  
  always@(posedge clk,posedge rst) //asynchronous reset
    begin
      if(rst)
        q <= 0;
      else
        q<= din;
    end
endmodule
