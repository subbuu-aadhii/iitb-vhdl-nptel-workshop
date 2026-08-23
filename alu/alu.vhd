library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu is
    port (
        sel : in std_logic_vector(1 downto 0);
        A   : in std_logic_vector(3 downto 0);
        B   : in std_logic_vector(3 downto 0);
        op  : out std_logic_vector(7 downto 0)
    );
end alu;

architecture a1 of alu is

    function sub(
    A : in std_logic_vector(3 downto 0);
    B : in std_logic_vector(3 downto 0))
return std_logic_vector is

    variable diff : signed(7 downto 0);

begin

    diff :=
        resize(signed('0' & A),8)
        -
        resize(signed('0' & B),8);

    return std_logic_vector(diff);

end sub;

begin

    alu_proc : process(A,B,sel)

        variable temp      : std_logic_vector(7 downto 0);
        variable shift_out : std_logic_vector(3 downto 0);

    begin

        if sel = "00" then

            temp := A & B;

        elsif sel = "01" then

            temp := sub(A,B);

        elsif sel = "10" then

            temp := "0000" & (A xor B);

        else

            shift_out := A;

            if B(3) = '0' then

                if B(1 downto 0) = "00" then
                    null;
                elsif B(1 downto 0) = "01" then
                    shift_out := shift_out(2 downto 0) & '0';
                elsif B(1 downto 0) = "10" then
                    shift_out := shift_out(1 downto 0) & "00";
                else
                    shift_out := shift_out(0) & "000";
                end if;

            else

                if B(1 downto 0) = "00" then
                    null;
                elsif B(1 downto 0) = "01" then
                    shift_out := '0' & shift_out(3 downto 1);
                elsif B(1 downto 0) = "10" then
                    shift_out := "00" & shift_out(3 downto 2);
                else
                    shift_out := "000" & shift_out(3);
                end if;

            end if;

            temp := "0000" & shift_out;

        end if;

        op <= temp;

    end process;

end a1;