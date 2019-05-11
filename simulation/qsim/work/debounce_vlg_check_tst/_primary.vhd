library verilog;
use verilog.vl_types.all;
entity debounce_vlg_check_tst is
    port(
        debounced_out   : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end debounce_vlg_check_tst;
