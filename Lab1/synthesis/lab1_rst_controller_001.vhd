-- lab1_rst_controller_001.vhd

-- Generated using ACDS version 18.1 646

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity lab1_rst_controller_001 is
	generic (
		NUM_RESET_INPUTS          : integer := 1;
		OUTPUT_RESET_SYNC_EDGES   : string  := "deassert";
		SYNC_DEPTH                : integer := 2;
		RESET_REQUEST_PRESENT     : integer := 1;
		RESET_REQ_WAIT_TIME       : integer := 1;
		MIN_RST_ASSERTION_TIME    : integer := 3;
		RESET_REQ_EARLY_DSRT_TIME : integer := 1;
		USE_RESET_REQUEST_IN0     : integer := 0;
		USE_RESET_REQUEST_IN1     : integer := 0;
		USE_RESET_REQUEST_IN2     : integer := 0;
		USE_RESET_REQUEST_IN3     : integer := 0;
		USE_RESET_REQUEST_IN4     : integer := 0;
		USE_RESET_REQUEST_IN5     : integer := 0;
		USE_RESET_REQUEST_IN6     : integer := 0;
		USE_RESET_REQUEST_IN7     : integer := 0;
		USE_RESET_REQUEST_IN8     : integer := 0;
		USE_RESET_REQUEST_IN9     : integer := 0;
		USE_RESET_REQUEST_IN10    : integer := 0;
		USE_RESET_REQUEST_IN11    : integer := 0;
		USE_RESET_REQUEST_IN12    : integer := 0;
		USE_RESET_REQUEST_IN13    : integer := 0;
		USE_RESET_REQUEST_IN14    : integer := 0;
		USE_RESET_REQUEST_IN15    : integer := 0;
		ADAPT_RESET_REQUEST       : integer := 0
	);
	port (
		reset_in0      : in  std_logic := '0'; -- reset_in0.reset
		clk            : in  std_logic := '0'; --       clk.clk
		reset_out      : out std_logic;        -- reset_out.reset
		reset_req      : out std_logic;        --          .reset_req
		reset_in1      : in  std_logic := '0';
		reset_in10     : in  std_logic := '0';
		reset_in11     : in  std_logic := '0';
		reset_in12     : in  std_logic := '0';
		reset_in13     : in  std_logic := '0';
		reset_in14     : in  std_logic := '0';
		reset_in15     : in  std_logic := '0';
		reset_in2      : in  std_logic := '0';
		reset_in3      : in  std_logic := '0';
		reset_in4      : in  std_logic := '0';
		reset_in5      : in  std_logic := '0';
		reset_in6      : in  std_logic := '0';
		reset_in7      : in  std_logic := '0';
		reset_in8      : in  std_logic := '0';
		reset_in9      : in  std_logic := '0';
		reset_req_in0  : in  std_logic := '0';
		reset_req_in1  : in  std_logic := '0';
		reset_req_in10 : in  std_logic := '0';
		reset_req_in11 : in  std_logic := '0';
		reset_req_in12 : in  std_logic := '0';
		reset_req_in13 : in  std_logic := '0';
		reset_req_in14 : in  std_logic := '0';
		reset_req_in15 : in  std_logic := '0';
		reset_req_in2  : in  std_logic := '0';
		reset_req_in3  : in  std_logic := '0';
		reset_req_in4  : in  std_logic := '0';
		reset_req_in5  : in  std_logic := '0';
		reset_req_in6  : in  std_logic := '0';
		reset_req_in7  : in  std_logic := '0';
		reset_req_in8  : in  std_logic := '0';
		reset_req_in9  : in  std_logic := '0'
	);
end entity lab1_rst_controller_001;

architecture rtl of lab1_rst_controller_001 is
	component altera_reset_controller is
		generic (
			NUM_RESET_INPUTS          : integer := 6;
			OUTPUT_RESET_SYNC_EDGES   : string  := "deassert";
			SYNC_DEPTH                : integer := 2;
			RESET_REQUEST_PRESENT     : integer := 0;
			RESET_REQ_WAIT_TIME       : integer := 1;
			MIN_RST_ASSERTION_TIME    : integer := 3;
			RESET_REQ_EARLY_DSRT_TIME : integer := 1;
			USE_RESET_REQUEST_IN0     : integer := 0;
			USE_RESET_REQUEST_IN1     : integer := 0;
			USE_RESET_REQUEST_IN2     : integer := 0;
			USE_RESET_REQUEST_IN3     : integer := 0;
			USE_RESET_REQUEST_IN4     : integer := 0;
			USE_RESET_REQUEST_IN5     : integer := 0;
			USE_RESET_REQUEST_IN6     : integer := 0;
			USE_RESET_REQUEST_IN7     : integer := 0;
			USE_RESET_REQUEST_IN8     : integer := 0;
			USE_RESET_REQUEST_IN9     : integer := 0;
			USE_RESET_REQUEST_IN10    : integer := 0;
			USE_RESET_REQUEST_IN11    : integer := 0;
			USE_RESET_REQUEST_IN12    : integer := 0;
			USE_RESET_REQUEST_IN13    : integer := 0;
			USE_RESET_REQUEST_IN14    : integer := 0;
			USE_RESET_REQUEST_IN15    : integer := 0;
			ADAPT_RESET_REQUEST       : integer := 0
		);
		port (
			reset_in0      : in  std_logic := 'X'; -- reset
			clk            : in  std_logic := 'X'; -- clk
			reset_out      : out std_logic;        -- reset
			reset_req      : out std_logic;        -- reset_req
			reset_req_in0  : in  std_logic := 'X'; -- reset_req
			reset_in1      : in  std_logic := 'X'; -- reset
			reset_req_in1  : in  std_logic := 'X'; -- reset_req
			reset_in2      : in  std_logic := 'X'; -- reset
			reset_req_in2  : in  std_logic := 'X'; -- reset_req
			reset_in3      : in  std_logic := 'X'; -- reset
			reset_req_in3  : in  std_logic := 'X'; -- reset_req
			reset_in4      : in  std_logic := 'X'; -- reset
			reset_req_in4  : in  std_logic := 'X'; -- reset_req
			reset_in5      : in  std_logic := 'X'; -- reset
			reset_req_in5  : in  std_logic := 'X'; -- reset_req
			reset_in6      : in  std_logic := 'X'; -- reset
			reset_req_in6  : in  std_logic := 'X'; -- reset_req
			reset_in7      : in  std_logic := 'X'; -- reset
			reset_req_in7  : in  std_logic := 'X'; -- reset_req
			reset_in8      : in  std_logic := 'X'; -- reset
			reset_req_in8  : in  std_logic := 'X'; -- reset_req
			reset_in9      : in  std_logic := 'X'; -- reset
			reset_req_in9  : in  std_logic := 'X'; -- reset_req
			reset_in10     : in  std_logic := 'X'; -- reset
			reset_req_in10 : in  std_logic := 'X'; -- reset_req
			reset_in11     : in  std_logic := 'X'; -- reset
			reset_req_in11 : in  std_logic := 'X'; -- reset_req
			reset_in12     : in  std_logic := 'X'; -- reset
			reset_req_in12 : in  std_logic := 'X'; -- reset_req
			reset_in13     : in  std_logic := 'X'; -- reset
			reset_req_in13 : in  std_logic := 'X'; -- reset_req
			reset_in14     : in  std_logic := 'X'; -- reset
			reset_req_in14 : in  std_logic := 'X'; -- reset_req
			reset_in15     : in  std_logic := 'X'; -- reset
			reset_req_in15 : in  std_logic := 'X'  -- reset_req
		);
	end component altera_reset_controller;

begin

	rst_controller_001 : component altera_reset_controller
		generic map (
			NUM_RESET_INPUTS          => NUM_RESET_INPUTS,
			OUTPUT_RESET_SYNC_EDGES   => OUTPUT_RESET_SYNC_EDGES,
			SYNC_DEPTH                => SYNC_DEPTH,
			RESET_REQUEST_PRESENT     => RESET_REQUEST_PRESENT,
			RESET_REQ_WAIT_TIME       => RESET_REQ_WAIT_TIME,
			MIN_RST_ASSERTION_TIME    => MIN_RST_ASSERTION_TIME,
			RESET_REQ_EARLY_DSRT_TIME => RESET_REQ_EARLY_DSRT_TIME,
			USE_RESET_REQUEST_IN0     => USE_RESET_REQUEST_IN0,
			USE_RESET_REQUEST_IN1     => USE_RESET_REQUEST_IN1,
			USE_RESET_REQUEST_IN2     => USE_RESET_REQUEST_IN2,
			USE_RESET_REQUEST_IN3     => USE_RESET_REQUEST_IN3,
			USE_RESET_REQUEST_IN4     => USE_RESET_REQUEST_IN4,
			USE_RESET_REQUEST_IN5     => USE_RESET_REQUEST_IN5,
			USE_RESET_REQUEST_IN6     => USE_RESET_REQUEST_IN6,
			USE_RESET_REQUEST_IN7     => USE_RESET_REQUEST_IN7,
			USE_RESET_REQUEST_IN8     => USE_RESET_REQUEST_IN8,
			USE_RESET_REQUEST_IN9     => USE_RESET_REQUEST_IN9,
			USE_RESET_REQUEST_IN10    => USE_RESET_REQUEST_IN10,
			USE_RESET_REQUEST_IN11    => USE_RESET_REQUEST_IN11,
			USE_RESET_REQUEST_IN12    => USE_RESET_REQUEST_IN12,
			USE_RESET_REQUEST_IN13    => USE_RESET_REQUEST_IN13,
			USE_RESET_REQUEST_IN14    => USE_RESET_REQUEST_IN14,
			USE_RESET_REQUEST_IN15    => USE_RESET_REQUEST_IN15,
			ADAPT_RESET_REQUEST       => ADAPT_RESET_REQUEST
		)
		port map (
			reset_in0      => reset_in0, -- reset_in0.reset
			clk            => clk,       --       clk.clk
			reset_out      => reset_out, -- reset_out.reset
			reset_req      => reset_req, --          .reset_req
			reset_req_in0  => '0',       -- (terminated)
			reset_in1      => '0',       -- (terminated)
			reset_req_in1  => '0',       -- (terminated)
			reset_in2      => '0',       -- (terminated)
			reset_req_in2  => '0',       -- (terminated)
			reset_in3      => '0',       -- (terminated)
			reset_req_in3  => '0',       -- (terminated)
			reset_in4      => '0',       -- (terminated)
			reset_req_in4  => '0',       -- (terminated)
			reset_in5      => '0',       -- (terminated)
			reset_req_in5  => '0',       -- (terminated)
			reset_in6      => '0',       -- (terminated)
			reset_req_in6  => '0',       -- (terminated)
			reset_in7      => '0',       -- (terminated)
			reset_req_in7  => '0',       -- (terminated)
			reset_in8      => '0',       -- (terminated)
			reset_req_in8  => '0',       -- (terminated)
			reset_in9      => '0',       -- (terminated)
			reset_req_in9  => '0',       -- (terminated)
			reset_in10     => '0',       -- (terminated)
			reset_req_in10 => '0',       -- (terminated)
			reset_in11     => '0',       -- (terminated)
			reset_req_in11 => '0',       -- (terminated)
			reset_in12     => '0',       -- (terminated)
			reset_req_in12 => '0',       -- (terminated)
			reset_in13     => '0',       -- (terminated)
			reset_req_in13 => '0',       -- (terminated)
			reset_in14     => '0',       -- (terminated)
			reset_req_in14 => '0',       -- (terminated)
			reset_in15     => '0',       -- (terminated)
			reset_req_in15 => '0'        -- (terminated)
		);

end architecture rtl; -- of lab1_rst_controller_001
