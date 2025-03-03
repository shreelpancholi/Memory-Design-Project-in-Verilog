//single_port_ram
module single_port_ram #(parameter DATA_WIDTH = 8, ADDR_WIDTH = 6) (
  input [DATA_WIDTH-1:0] data, 
  input [ADDR_WIDTH-1:0] addr, 
  input we, clk,
  output [DATA_WIDTH-1:0] q
);
  reg [DATA_WIDTH-1:0] ram [(2**ADDR_WIDTH)-1:0];
  reg [ADDR_WIDTH-1:0] addr_reg;

  always @ (posedge clk) begin
    if (we)
      ram[addr] <= data;
    else
      addr_reg <= addr;
  end

  assign q = ram[addr_reg];
endmodule
