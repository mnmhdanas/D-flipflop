
module dff_sync_rsttb();
  reg din,clk,rst;
  wire q;
  
  dff_sync_rst dut(din,clk,rst,q);
  
  initial 
    begin
      clk = 1;
      forever #5 clk = ~clk;
    end
  
  initial 
    begin
      $dumpfile("dff_sync_rsttb.vcd");
      $dumpvars(0,dff_sync_rsttb);
      #100 $finish;
    end
  
    initial 
    begin
      din=1;rst=1;
      #10 rst=0;din=1;
      #2 rst =1;
      #2 rst =0;
      #6  din=1;rst =1;
      #10 din=1;rst =0;
      #10 din=0;
      #10 din=1;
      end
  
endmodule
  
