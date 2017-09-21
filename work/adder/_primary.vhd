library verilog;
use verilog.vl_types.all;
entity adder is
    port(
        a               : in     vl_logic_vector(31 downto 0);
        b               : in     vl_logic_vector(31 downto 0);
        c_in            : in     vl_logic;
        y               : out    vl_logic_vector(31 downto 0);
        c_out           : out    vl_logic
    );
end adder;
