
module dff_sync_rst(din,clk,rst,q);
  input din,clk,rst;
  output reg q;
  
  always@(posedge clk) //synchronous reset
    begin
      if(rst)
        q <= 0;
      else
        q <= din;
    end
endmodule
