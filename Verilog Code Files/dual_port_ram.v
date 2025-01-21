//dual_port_ram
module dual_port_ram #(parameter DATA_WIDTH = 8, ADDR_WIDTH = 6) (
  input [DATA_WIDTH-1:0] data_a, data_b, 
  input [ADDR_WIDTH-1:0] addr_a, addr_b, 
  input we_a, we_b, clk,
  output reg [DATA_WIDTH-1:0] q_a, q_b
);
  reg [DATA_WIDTH-1:0] ram [(2**ADDR_WIDTH)-1:0];

  always @ (posedge clk) begin
    if (we_a)
      ram[addr_a] <= data_a;
    else
      q_a <= ram[addr_a];
  end

  always @ (posedge clk) begin
    if (we_b)
      ram[addr_b] <= data_b;
    else
      q_b <= ram[addr_b];
  end
endmodule
