module memory_project (
  input clk,
  input [7:0] sp_data, dp_data_a, dp_data_b,
  input [5:0] sp_addr, dp_addr_a, dp_addr_b,
  input sp_we, dp_we_a, dp_we_b,
  input rom_en,
  input [3:0] rom_addr,
  output [7:0] sp_q, dp_q_a, dp_q_b,
  output [3:0] rom_data
);

  single_port_ram #(.DATA_WIDTH(8), .ADDR_WIDTH(6)) sp_ram (
    .data(sp_data), .addr(sp_addr), .we(sp_we), .clk(clk), .q(sp_q)
  );

  dual_port_ram #(.DATA_WIDTH(8), .ADDR_WIDTH(6)) dp_ram (
    .data_a(dp_data_a), .data_b(dp_data_b), 
    .addr_a(dp_addr_a), .addr_b(dp_addr_b), 
    .we_a(dp_we_a), .we_b(dp_we_b), 
    .clk(clk), .q_a(dp_q_a), .q_b(dp_q_b)
  );

  rom #(.DATA_WIDTH(4), .ADDR_WIDTH(4)) rom_inst (
    .clk(clk), .en(rom_en), .addr(rom_addr), .data(rom_data)
  );

endmodule
