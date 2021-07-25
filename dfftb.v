
module dfftb();
  reg din,clk,rst;
  wire q;
  
  dff dut(din,clk,rst,q);
  
  initial 
    begin
      clk = 1;
      forever #5 clk = ~clk;
    end
  
  initial 
    begin
      $dumpfile("dfftb.vcd");
      $dumpvars(0,dfftb);
      #100 $finish;
    end
  
    initial 
    begin
      din=1;rst=1;
      #10 rst=0;din=0;
      #10 din=1;
      #10 din=1;
      #10 din=0;
      end
  
endmodule
  
