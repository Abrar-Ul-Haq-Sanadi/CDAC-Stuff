library verilog;
use verilog.vl_types.all;
entity adder is
    port(
        i_clk           : in     vl_logic;
        i_reset_n       : in     vl_logic;
        i_valid         : in     vl_logic;
        i_data1         : in     vl_logic_vector(3 downto 0);
        i_data2         : in     vl_logic_vector(3 downto 0);
        o_sum           : out    vl_logic_vector(4 downto 0)
    );
end adder;
