

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bcdCounter is
Port(clk: in std_logic; 
	up_down: in std_logic;
	cnt_out: out std_logic_vector(3 downto 0);
	clk_out: out std_logic);
	attribute mark_debug: string;
    attribute keep: string;
    attribute mark_debug of cnt_out: signal is "true";
    attribute mark_debug of clk_out: signal is "true";
    attribute mark_debug of up_down: signal is "true";
    attribute mark_debug of clk: signal is "true";
    
end bcdCounter;

architecture Behavioral of bcdCounter is
signal cnt_div: std_logic_vector(6 downto 0);
signal cnt: std_logic_vector(3 downto 0);
signal clk2: std_logic; 

begin	

    process(clk) begin
    if rising_edge(clk)then	
	   if(cnt_div = 99) then	
            cnt_div <= (others => '0');
		  clk2 <= '1';
	   elsif(cnt_div < 49) then	
		  cnt_div <= cnt_div +1;
	  	  clk2 <= '1';
	   else
		  cnt_div <= cnt_div+1;
		  clk2 <= '0';
	   end if;
    end if;

end process;

process(clk2,up_down) begin	
	if rising_edge(clk2) then	
		if(up_down = '1') then
		  if(cnt = "1001")then
		      cnt <= "0000";
		  else
			  cnt <= cnt+1;
		  end if;
	    else
	       if(cnt = "0000")then
	          cnt <= "1001";
	       else
		      cnt <= cnt-1;
		   end if;
	    end if;
	end if;
end process;

cnt_out <= cnt;
clk_out <= clk2;
end Behavioral;

