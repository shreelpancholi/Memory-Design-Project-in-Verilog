`timescale 1ns/1ps

module memory_project_tb;

  reg clk;
  reg [7:0] sp_data, dp_data_a, dp_data_b;
  reg [5:0] sp_addr, dp_addr_a, dp_addr_b;
  reg sp_we, dp_we_a, dp_we_b;
  reg rom_en;
  reg [3:0] rom_addr;
  wire [7:0] sp_q, dp_q_a, dp_q_b;
  wire [3:0] rom_data;

  // Instantiate top module
  memory_project uut (
    .clk(clk),
    .sp_data(sp_data), .sp_addr(sp_addr), .sp_we(sp_we), .sp_q(sp_q),
    .dp_data_a(dp_data_a), .dp_addr_a(dp_addr_a), .dp_we_a(dp_we_a), .dp_q_a(dp_q_a),
    .dp_data_b(dp_data_b), .dp_addr_b(dp_addr_b), .dp_we_b(dp_we_b), .dp_q_b(dp_q_b),
    .rom_en(rom_en), .rom_addr(rom_addr), .rom_data(rom_data)
  );

  // Clock generation
  initial clk = 0;
  always #5 clk = ~clk;

  // Test sequence
  initial begin
    // Single-port RAM test
    sp_we = 1; sp_data = 8'hA5; sp_addr = 6'h01; #10;
    sp_we = 0; sp_addr = 6'h01; #10;

    // Dual-port RAM test
    dp_we_a = 1; dp_data_a = 8'h5A; dp_addr_a = 6'h02; #10;
    dp_we_a = 0; dp_addr_a = 6'h02; #10;

    dp_we_b = 1; dp_data_b = 8'hC3; dp_addr_b = 6'h03; #10;
    dp_we_b = 0; dp_addr_b = 6'h03; #10;

    // ROM test
    rom_en = 1; rom_addr = 4'h0; #10;
    rom_addr = 4'h5; #10;

    $stop;
  end

endmodule
