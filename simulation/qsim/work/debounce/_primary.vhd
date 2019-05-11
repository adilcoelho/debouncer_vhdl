library verilog;
use verilog.vl_types.all;
entity debounce is
    port(
        button          : in     vl_logic;
        clk             : in     vl_logic;
        debounced_out   : out    vl_logic
    );
end debounce;
