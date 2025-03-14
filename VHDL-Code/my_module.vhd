library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- 2 input OR Gate
entity OR2 is
    port(A, B : in std_logic;
        Y : out std_logic);
end OR2;
architecture AOR2 of OR2 is 
begin 
    Y <= (A or B);
end AOR2;

-- 2 input NOR gate
entity NOR2 is
    port(A, B : in std_logic;
        Y : out std_logic);
end NOR2;
architecture ANOR2 of NOR2 is 
begin 
    Y <= not (A or B);
end ANOR2;

--Inverter
entity INV is 
    port(A : in std_logic;
        Y : out std_logic);
end INV;
architecture AINV of INV is
begin
    Y <= not A;
end AINV;

entity CIRC1 is
    port(A, B, C : in std_logic;
    Y : out std_logic);
end CIRC1;
architecture ACIRC1 of CIRC1 is
    signal C2, R1, R2 : std_logic;
begin
    I1: entity INV(AINV) port map (C, C2);
    NOR1: entity NOR2(ANOR2) port map (A, B, R1);
    NOR2: entity NOR2(ANOR2) port map (B, C2, R2);
    OR1: entity OR2(AOR2) port map (R1, R2, Y);
end ACIRC1;
