-- Generator : SpinalHDL v1.4.0    git head : ecb5a80b713566f417ea3ea061f9969e73770a7f
-- Date      : 28/07/2020, 11:32:45
-- Component : Murax

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

package pkg_enum is
  type AluBitwiseCtrlEnum is (XOR_1,OR_1,AND_1);
  type AluCtrlEnum is (ADD_SUB,SLT_SLTU,BITWISE);
  type EnvCtrlEnum is (NONE,XRET);
  type ShiftCtrlEnum is (DISABLE_1,SLL_1,SRL_1,SRA_1);
  type BranchCtrlEnum is (INC,B,JAL,JALR);
  type Src2CtrlEnum is (RS,IMI,IMS,PC);
  type Src1CtrlEnum is (RS,IMU,PC_INCREMENT,URS1);
  type JtagState is (RESET,IDLE,IR_SELECT,IR_CAPTURE,IR_SHIFT,IR_EXIT1,IR_PAUSE,IR_EXIT2,IR_UPDATE,DR_SELECT,DR_CAPTURE,DR_SHIFT,DR_EXIT1,DR_PAUSE,DR_EXIT2,DR_UPDATE);
  type UartStopType is (ONE,TWO);
  type UartParityType is (NONE,EVEN,ODD);
  type UartCtrlTxState is (IDLE,START,DATA,PARITY,STOP);
  type UartCtrlRxState is (IDLE,START,DATA,PARITY,STOP);

  function pkg_mux (sel : std_logic;one : AluBitwiseCtrlEnum;zero : AluBitwiseCtrlEnum) return AluBitwiseCtrlEnum;
  subtype AluBitwiseCtrlEnum_defaultEncoding_type is std_logic_vector(1 downto 0);
  constant AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : AluBitwiseCtrlEnum_defaultEncoding_type := "00";
  constant AluBitwiseCtrlEnum_defaultEncoding_OR_1 : AluBitwiseCtrlEnum_defaultEncoding_type := "01";
  constant AluBitwiseCtrlEnum_defaultEncoding_AND_1 : AluBitwiseCtrlEnum_defaultEncoding_type := "10";

  function pkg_mux (sel : std_logic;one : AluCtrlEnum;zero : AluCtrlEnum) return AluCtrlEnum;
  subtype AluCtrlEnum_defaultEncoding_type is std_logic_vector(1 downto 0);
  constant AluCtrlEnum_defaultEncoding_ADD_SUB : AluCtrlEnum_defaultEncoding_type := "00";
  constant AluCtrlEnum_defaultEncoding_SLT_SLTU : AluCtrlEnum_defaultEncoding_type := "01";
  constant AluCtrlEnum_defaultEncoding_BITWISE : AluCtrlEnum_defaultEncoding_type := "10";

  function pkg_mux (sel : std_logic;one : EnvCtrlEnum;zero : EnvCtrlEnum) return EnvCtrlEnum;
  subtype EnvCtrlEnum_defaultEncoding_type is std_logic_vector(0 downto 0);
  constant EnvCtrlEnum_defaultEncoding_NONE : EnvCtrlEnum_defaultEncoding_type := "0";
  constant EnvCtrlEnum_defaultEncoding_XRET : EnvCtrlEnum_defaultEncoding_type := "1";

  function pkg_mux (sel : std_logic;one : ShiftCtrlEnum;zero : ShiftCtrlEnum) return ShiftCtrlEnum;
  subtype ShiftCtrlEnum_defaultEncoding_type is std_logic_vector(1 downto 0);
  constant ShiftCtrlEnum_defaultEncoding_DISABLE_1 : ShiftCtrlEnum_defaultEncoding_type := "00";
  constant ShiftCtrlEnum_defaultEncoding_SLL_1 : ShiftCtrlEnum_defaultEncoding_type := "01";
  constant ShiftCtrlEnum_defaultEncoding_SRL_1 : ShiftCtrlEnum_defaultEncoding_type := "10";
  constant ShiftCtrlEnum_defaultEncoding_SRA_1 : ShiftCtrlEnum_defaultEncoding_type := "11";

  function pkg_mux (sel : std_logic;one : BranchCtrlEnum;zero : BranchCtrlEnum) return BranchCtrlEnum;
  subtype BranchCtrlEnum_defaultEncoding_type is std_logic_vector(1 downto 0);
  constant BranchCtrlEnum_defaultEncoding_INC : BranchCtrlEnum_defaultEncoding_type := "00";
  constant BranchCtrlEnum_defaultEncoding_B : BranchCtrlEnum_defaultEncoding_type := "01";
  constant BranchCtrlEnum_defaultEncoding_JAL : BranchCtrlEnum_defaultEncoding_type := "10";
  constant BranchCtrlEnum_defaultEncoding_JALR : BranchCtrlEnum_defaultEncoding_type := "11";

  function pkg_mux (sel : std_logic;one : Src2CtrlEnum;zero : Src2CtrlEnum) return Src2CtrlEnum;
  subtype Src2CtrlEnum_defaultEncoding_type is std_logic_vector(1 downto 0);
  constant Src2CtrlEnum_defaultEncoding_RS : Src2CtrlEnum_defaultEncoding_type := "00";
  constant Src2CtrlEnum_defaultEncoding_IMI : Src2CtrlEnum_defaultEncoding_type := "01";
  constant Src2CtrlEnum_defaultEncoding_IMS : Src2CtrlEnum_defaultEncoding_type := "10";
  constant Src2CtrlEnum_defaultEncoding_PC : Src2CtrlEnum_defaultEncoding_type := "11";

  function pkg_mux (sel : std_logic;one : Src1CtrlEnum;zero : Src1CtrlEnum) return Src1CtrlEnum;
  subtype Src1CtrlEnum_defaultEncoding_type is std_logic_vector(1 downto 0);
  constant Src1CtrlEnum_defaultEncoding_RS : Src1CtrlEnum_defaultEncoding_type := "00";
  constant Src1CtrlEnum_defaultEncoding_IMU : Src1CtrlEnum_defaultEncoding_type := "01";
  constant Src1CtrlEnum_defaultEncoding_PC_INCREMENT : Src1CtrlEnum_defaultEncoding_type := "10";
  constant Src1CtrlEnum_defaultEncoding_URS1 : Src1CtrlEnum_defaultEncoding_type := "11";

  function pkg_mux (sel : std_logic;one : JtagState;zero : JtagState) return JtagState;
  function pkg_toStdLogicVector_defaultEncoding (value : JtagState) return std_logic_vector;
  function pkg_toJtagState_defaultEncoding (value : std_logic_vector(3 downto 0)) return JtagState;
  function pkg_mux (sel : std_logic;one : UartStopType;zero : UartStopType) return UartStopType;
  subtype UartStopType_defaultEncoding_type is std_logic_vector(0 downto 0);
  constant UartStopType_defaultEncoding_ONE : UartStopType_defaultEncoding_type := "0";
  constant UartStopType_defaultEncoding_TWO : UartStopType_defaultEncoding_type := "1";

  function pkg_mux (sel : std_logic;one : UartParityType;zero : UartParityType) return UartParityType;
  subtype UartParityType_defaultEncoding_type is std_logic_vector(1 downto 0);
  constant UartParityType_defaultEncoding_NONE : UartParityType_defaultEncoding_type := "00";
  constant UartParityType_defaultEncoding_EVEN : UartParityType_defaultEncoding_type := "01";
  constant UartParityType_defaultEncoding_ODD : UartParityType_defaultEncoding_type := "10";

  function pkg_mux (sel : std_logic;one : UartCtrlTxState;zero : UartCtrlTxState) return UartCtrlTxState;
  function pkg_toStdLogicVector_defaultEncoding (value : UartCtrlTxState) return std_logic_vector;
  function pkg_toUartCtrlTxState_defaultEncoding (value : std_logic_vector(2 downto 0)) return UartCtrlTxState;
  function pkg_mux (sel : std_logic;one : UartCtrlRxState;zero : UartCtrlRxState) return UartCtrlRxState;
  function pkg_toStdLogicVector_defaultEncoding (value : UartCtrlRxState) return std_logic_vector;
  function pkg_toUartCtrlRxState_defaultEncoding (value : std_logic_vector(2 downto 0)) return UartCtrlRxState;
end pkg_enum;

package body pkg_enum is
  function pkg_mux (sel : std_logic;one : AluBitwiseCtrlEnum;zero : AluBitwiseCtrlEnum) return AluBitwiseCtrlEnum is
  begin
    if sel = '1' then
      return one;
    else
      return zero;
    end if;
  end pkg_mux;

  function pkg_mux (sel : std_logic;one : AluCtrlEnum;zero : AluCtrlEnum) return AluCtrlEnum is
  begin
    if sel = '1' then
      return one;
    else
      return zero;
    end if;
  end pkg_mux;

  function pkg_mux (sel : std_logic;one : EnvCtrlEnum;zero : EnvCtrlEnum) return EnvCtrlEnum is
  begin
    if sel = '1' then
      return one;
    else
      return zero;
    end if;
  end pkg_mux;

  function pkg_mux (sel : std_logic;one : ShiftCtrlEnum;zero : ShiftCtrlEnum) return ShiftCtrlEnum is
  begin
    if sel = '1' then
      return one;
    else
      return zero;
    end if;
  end pkg_mux;

  function pkg_mux (sel : std_logic;one : BranchCtrlEnum;zero : BranchCtrlEnum) return BranchCtrlEnum is
  begin
    if sel = '1' then
      return one;
    else
      return zero;
    end if;
  end pkg_mux;

  function pkg_mux (sel : std_logic;one : Src2CtrlEnum;zero : Src2CtrlEnum) return Src2CtrlEnum is
  begin
    if sel = '1' then
      return one;
    else
      return zero;
    end if;
  end pkg_mux;

  function pkg_mux (sel : std_logic;one : Src1CtrlEnum;zero : Src1CtrlEnum) return Src1CtrlEnum is
  begin
    if sel = '1' then
      return one;
    else
      return zero;
    end if;
  end pkg_mux;

  function pkg_mux (sel : std_logic;one : JtagState;zero : JtagState) return JtagState is
  begin
    if sel = '1' then
      return one;
    else
      return zero;
    end if;
  end pkg_mux;

  function pkg_toJtagState_defaultEncoding (value : std_logic_vector(3 downto 0)) return JtagState is
  begin
    case value is
      when "0000" => return RESET;
      when "0001" => return IDLE;
      when "0010" => return IR_SELECT;
      when "0011" => return IR_CAPTURE;
      when "0100" => return IR_SHIFT;
      when "0101" => return IR_EXIT1;
      when "0110" => return IR_PAUSE;
      when "0111" => return IR_EXIT2;
      when "1000" => return IR_UPDATE;
      when "1001" => return DR_SELECT;
      when "1010" => return DR_CAPTURE;
      when "1011" => return DR_SHIFT;
      when "1100" => return DR_EXIT1;
      when "1101" => return DR_PAUSE;
      when "1110" => return DR_EXIT2;
      when "1111" => return DR_UPDATE;
      when others => return RESET;
    end case;
  end;
  function pkg_toStdLogicVector_defaultEncoding (value : JtagState) return std_logic_vector is
  begin
    case value is
      when RESET => return "0000";
      when IDLE => return "0001";
      when IR_SELECT => return "0010";
      when IR_CAPTURE => return "0011";
      when IR_SHIFT => return "0100";
      when IR_EXIT1 => return "0101";
      when IR_PAUSE => return "0110";
      when IR_EXIT2 => return "0111";
      when IR_UPDATE => return "1000";
      when DR_SELECT => return "1001";
      when DR_CAPTURE => return "1010";
      when DR_SHIFT => return "1011";
      when DR_EXIT1 => return "1100";
      when DR_PAUSE => return "1101";
      when DR_EXIT2 => return "1110";
      when DR_UPDATE => return "1111";
      when others => return "0000";
    end case;
  end;
  function pkg_mux (sel : std_logic;one : UartStopType;zero : UartStopType) return UartStopType is
  begin
    if sel = '1' then
      return one;
    else
      return zero;
    end if;
  end pkg_mux;

  function pkg_mux (sel : std_logic;one : UartParityType;zero : UartParityType) return UartParityType is
  begin
    if sel = '1' then
      return one;
    else
      return zero;
    end if;
  end pkg_mux;

  function pkg_mux (sel : std_logic;one : UartCtrlTxState;zero : UartCtrlTxState) return UartCtrlTxState is
  begin
    if sel = '1' then
      return one;
    else
      return zero;
    end if;
  end pkg_mux;

  function pkg_toUartCtrlTxState_defaultEncoding (value : std_logic_vector(2 downto 0)) return UartCtrlTxState is
  begin
    case value is
      when "000" => return IDLE;
      when "001" => return START;
      when "010" => return DATA;
      when "011" => return PARITY;
      when "100" => return STOP;
      when others => return IDLE;
    end case;
  end;
  function pkg_toStdLogicVector_defaultEncoding (value : UartCtrlTxState) return std_logic_vector is
  begin
    case value is
      when IDLE => return "000";
      when START => return "001";
      when DATA => return "010";
      when PARITY => return "011";
      when STOP => return "100";
      when others => return "000";
    end case;
  end;
  function pkg_mux (sel : std_logic;one : UartCtrlRxState;zero : UartCtrlRxState) return UartCtrlRxState is
  begin
    if sel = '1' then
      return one;
    else
      return zero;
    end if;
  end pkg_mux;

  function pkg_toUartCtrlRxState_defaultEncoding (value : std_logic_vector(2 downto 0)) return UartCtrlRxState is
  begin
    case value is
      when "000" => return IDLE;
      when "001" => return START;
      when "010" => return DATA;
      when "011" => return PARITY;
      when "100" => return STOP;
      when others => return IDLE;
    end case;
  end;
  function pkg_toStdLogicVector_defaultEncoding (value : UartCtrlRxState) return std_logic_vector is
  begin
    case value is
      when IDLE => return "000";
      when START => return "001";
      when DATA => return "010";
      when PARITY => return "011";
      when STOP => return "100";
      when others => return "000";
    end case;
  end;
end pkg_enum;


library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

package pkg_scala2hdl is
  function pkg_extract (that : std_logic_vector; bitId : integer) return std_logic;
  function pkg_extract (that : std_logic_vector; base : unsigned; size : integer) return std_logic_vector;
  function pkg_cat (a : std_logic_vector; b : std_logic_vector) return std_logic_vector;
  function pkg_not (value : std_logic_vector) return std_logic_vector;
  function pkg_extract (that : unsigned; bitId : integer) return std_logic;
  function pkg_extract (that : unsigned; base : unsigned; size : integer) return unsigned;
  function pkg_cat (a : unsigned; b : unsigned) return unsigned;
  function pkg_not (value : unsigned) return unsigned;
  function pkg_extract (that : signed; bitId : integer) return std_logic;
  function pkg_extract (that : signed; base : unsigned; size : integer) return signed;
  function pkg_cat (a : signed; b : signed) return signed;
  function pkg_not (value : signed) return signed;


  function pkg_mux (sel : std_logic;one : std_logic;zero : std_logic) return std_logic;
  function pkg_mux (sel : std_logic;one : std_logic_vector;zero : std_logic_vector) return std_logic_vector;
  function pkg_mux (sel : std_logic;one : unsigned;zero : unsigned) return unsigned;
  function pkg_mux (sel : std_logic;one : signed;zero : signed) return signed;


  function pkg_toStdLogic (value : boolean) return std_logic;
  function pkg_toStdLogicVector (value : std_logic) return std_logic_vector;
  function pkg_toUnsigned(value : std_logic) return unsigned;
  function pkg_toSigned (value : std_logic) return signed;
  function pkg_stdLogicVector (lit : std_logic_vector) return std_logic_vector;
  function pkg_unsigned (lit : unsigned) return unsigned;
  function pkg_signed (lit : signed) return signed;

  function pkg_resize (that : std_logic_vector; width : integer) return std_logic_vector;
  function pkg_resize (that : unsigned; width : integer) return unsigned;
  function pkg_resize (that : signed; width : integer) return signed;

  function pkg_extract (that : std_logic_vector; high : integer; low : integer) return std_logic_vector;
  function pkg_extract (that : unsigned; high : integer; low : integer) return unsigned;
  function pkg_extract (that : signed; high : integer; low : integer) return signed;

  function pkg_shiftRight (that : std_logic_vector; size : natural) return std_logic_vector;
  function pkg_shiftRight (that : std_logic_vector; size : unsigned) return std_logic_vector;
  function pkg_shiftLeft (that : std_logic_vector; size : natural) return std_logic_vector;
  function pkg_shiftLeft (that : std_logic_vector; size : unsigned) return std_logic_vector;

  function pkg_shiftRight (that : unsigned; size : natural) return unsigned;
  function pkg_shiftRight (that : unsigned; size : unsigned) return unsigned;
  function pkg_shiftLeft (that : unsigned; size : natural) return unsigned;
  function pkg_shiftLeft (that : unsigned; size : unsigned) return unsigned;

  function pkg_shiftRight (that : signed; size : natural) return signed;
  function pkg_shiftRight (that : signed; size : unsigned) return signed;
  function pkg_shiftLeft (that : signed; size : natural) return signed;
  function pkg_shiftLeft (that : signed; size : unsigned; w : integer) return signed;

  function pkg_rotateLeft (that : std_logic_vector; size : unsigned) return std_logic_vector;
end  pkg_scala2hdl;

package body pkg_scala2hdl is
  function pkg_extract (that : std_logic_vector; bitId : integer) return std_logic is
  begin
    return that(bitId);
  end pkg_extract;


  function pkg_extract (that : std_logic_vector; base : unsigned; size : integer) return std_logic_vector is
   constant elementCount : integer := (that'length-size)+1;
   type tableType is array (0 to elementCount-1) of std_logic_vector(size-1 downto 0);
   variable table : tableType;
  begin
    for i in 0 to elementCount-1 loop
      table(i) := that(i + size - 1 downto i);
    end loop;
    return table(to_integer(base));
  end pkg_extract;


  function pkg_cat (a : std_logic_vector; b : std_logic_vector) return std_logic_vector is
    variable cat : std_logic_vector(a'length + b'length-1 downto 0);
  begin
    cat := a & b;
    return cat;
  end pkg_cat;


  function pkg_not (value : std_logic_vector) return std_logic_vector is
    variable ret : std_logic_vector(value'high downto 0);
  begin
    ret := not value;
    return ret;
  end pkg_not;


  function pkg_extract (that : unsigned; bitId : integer) return std_logic is
  begin
    return that(bitId);
  end pkg_extract;


  function pkg_extract (that : unsigned; base : unsigned; size : integer) return unsigned is
   constant elementCount : integer := (that'length-size)+1;
   type tableType is array (0 to elementCount-1) of unsigned(size-1 downto 0);
   variable table : tableType;
  begin
    for i in 0 to elementCount-1 loop
      table(i) := that(i + size - 1 downto i);
    end loop;
    return table(to_integer(base));
  end pkg_extract;


  function pkg_cat (a : unsigned; b : unsigned) return unsigned is
    variable cat : unsigned(a'length + b'length-1 downto 0);
  begin
    cat := a & b;
    return cat;
  end pkg_cat;


  function pkg_not (value : unsigned) return unsigned is
    variable ret : unsigned(value'high downto 0);
  begin
    ret := not value;
    return ret;
  end pkg_not;


  function pkg_extract (that : signed; bitId : integer) return std_logic is
  begin
    return that(bitId);
  end pkg_extract;


  function pkg_extract (that : signed; base : unsigned; size : integer) return signed is
   constant elementCount : integer := (that'length-size)+1;
   type tableType is array (0 to elementCount-1) of signed(size-1 downto 0);
   variable table : tableType;
  begin
    for i in 0 to elementCount-1 loop
      table(i) := that(i + size - 1 downto i);
    end loop;
    return table(to_integer(base));
  end pkg_extract;


  function pkg_cat (a : signed; b : signed) return signed is
    variable cat : signed(a'length + b'length-1 downto 0);
  begin
    cat := a & b;
    return cat;
  end pkg_cat;


  function pkg_not (value : signed) return signed is
    variable ret : signed(value'high downto 0);
  begin
    ret := not value;
    return ret;
  end pkg_not;



  -- unsigned shifts
  function pkg_shiftRight (that : unsigned; size : natural) return unsigned is
  begin
    if size >= that'length then
      return "";
    else
      return shift_right(that,size)(that'high-size downto 0);
    end if;
  end pkg_shiftRight;

  function pkg_shiftRight (that : unsigned; size : unsigned) return unsigned is
  begin
    return shift_right(that,to_integer(size));
  end pkg_shiftRight;

  function pkg_shiftLeft (that : unsigned; size : natural) return unsigned is
  begin
    return shift_left(resize(that,that'length + size),size);
  end pkg_shiftLeft;

  function pkg_shiftLeft (that : unsigned; size : unsigned) return unsigned is
  begin
    return shift_left(resize(that,that'length + 2**size'length - 1),to_integer(size));
  end pkg_shiftLeft;


  -- std_logic_vector shifts
  function pkg_shiftRight (that : std_logic_vector; size : natural) return std_logic_vector is
  begin
    return std_logic_vector(pkg_shiftRight(unsigned(that),size));
  end pkg_shiftRight;

  function pkg_shiftRight (that : std_logic_vector; size : unsigned) return std_logic_vector is
  begin
    return std_logic_vector(pkg_shiftRight(unsigned(that),size));
  end pkg_shiftRight;

  function pkg_shiftLeft (that : std_logic_vector; size : natural) return std_logic_vector is
  begin
    return std_logic_vector(pkg_shiftLeft(unsigned(that),size));
  end pkg_shiftLeft;

  function pkg_shiftLeft (that : std_logic_vector; size : unsigned) return std_logic_vector is
  begin
    return std_logic_vector(pkg_shiftLeft(unsigned(that),size));
  end pkg_shiftLeft;

  -- signed shifts
  function pkg_shiftRight (that : signed; size : natural) return signed is
  begin
    return signed(pkg_shiftRight(unsigned(that),size));
  end pkg_shiftRight;

  function pkg_shiftRight (that : signed; size : unsigned) return signed is
  begin
    return shift_right(that,to_integer(size));
  end pkg_shiftRight;

  function pkg_shiftLeft (that : signed; size : natural) return signed is
  begin
    return signed(pkg_shiftLeft(unsigned(that),size));
  end pkg_shiftLeft;

  function pkg_shiftLeft (that : signed; size : unsigned; w : integer) return signed is
  begin
    return shift_left(resize(that,w),to_integer(size));
  end pkg_shiftLeft;

  function pkg_rotateLeft (that : std_logic_vector; size : unsigned) return std_logic_vector is
  begin
    return std_logic_vector(rotate_left(unsigned(that),to_integer(size)));
  end pkg_rotateLeft;

  function pkg_extract (that : std_logic_vector; high : integer; low : integer) return std_logic_vector is
    variable temp : std_logic_vector(high-low downto 0);
  begin
    temp := that(high downto low);
    return temp;
  end pkg_extract;

  function pkg_extract (that : unsigned; high : integer; low : integer) return unsigned is
    variable temp : unsigned(high-low downto 0);
  begin
    temp := that(high downto low);
    return temp;
  end pkg_extract;

  function pkg_extract (that : signed; high : integer; low : integer) return signed is
    variable temp : signed(high-low downto 0);
  begin
    temp := that(high downto low);
    return temp;
  end pkg_extract;

  function pkg_mux (sel : std_logic;one : std_logic;zero : std_logic) return std_logic is
  begin
    if sel = '1' then
      return one;
    else
      return zero;
    end if;
  end pkg_mux;

  function pkg_mux (sel : std_logic;one : std_logic_vector;zero : std_logic_vector) return std_logic_vector is
    variable ret : std_logic_vector(zero'range);  begin
    if sel = '1' then
      ret := one;
    else
      ret := zero;
    end if;
    return ret;  end pkg_mux;

  function pkg_mux (sel : std_logic;one : unsigned;zero : unsigned) return unsigned is
    variable ret : unsigned(zero'range);  begin
    if sel = '1' then
      ret := one;
    else
      ret := zero;
    end if;
    return ret;  end pkg_mux;

  function pkg_mux (sel : std_logic;one : signed;zero : signed) return signed is
    variable ret : signed(zero'range);  begin
    if sel = '1' then
      ret := one;
    else
      ret := zero;
    end if;
    return ret;  end pkg_mux;

  function pkg_toStdLogic (value : boolean) return std_logic is
  begin
    if value = true then
      return '1';
    else
      return '0';
    end if;
  end pkg_toStdLogic;

  function pkg_toStdLogicVector (value : std_logic) return std_logic_vector is
    variable ret : std_logic_vector(0 downto 0);
  begin
    ret(0) := value;
    return ret;
  end pkg_toStdLogicVector;

  function pkg_toUnsigned (value : std_logic) return unsigned is
    variable ret : unsigned(0 downto 0);
  begin
    ret(0) := value;
    return ret;
  end pkg_toUnsigned;

  function pkg_toSigned (value : std_logic) return signed is
    variable ret : signed(0 downto 0);
  begin
    ret(0) := value;
    return ret;
  end pkg_toSigned;

  function pkg_stdLogicVector (lit : std_logic_vector) return std_logic_vector is
    variable ret : std_logic_vector(lit'length-1 downto 0);
  begin
    ret := lit;    return ret;
  end pkg_stdLogicVector;

  function pkg_unsigned (lit : unsigned) return unsigned is
    variable ret : unsigned(lit'length-1 downto 0);
  begin
    ret := lit;    return ret;
  end pkg_unsigned;

  function pkg_signed (lit : signed) return signed is
    variable ret : signed(lit'length-1 downto 0);
  begin
    ret := lit;    return ret;
  end pkg_signed;

  function pkg_resize (that : std_logic_vector; width : integer) return std_logic_vector is
  begin
    return std_logic_vector(resize(unsigned(that),width));
  end pkg_resize;


  function pkg_resize (that : unsigned; width : integer) return unsigned is
	  variable ret : unsigned(width-1 downto 0);
  begin
    if that'length = 0 then
       ret := (others => '0');
    else
       ret := resize(that,width);
    end if;
		return ret;
  end pkg_resize;
 
  function pkg_resize (that : signed; width : integer) return signed is
	  variable ret : signed(width-1 downto 0);
  begin
    if that'length = 0 then
       ret := (others => '0');
    elsif that'length >= width then
       ret := that(width-1 downto 0);
    else
       ret := resize(that,width);
    end if;
		return ret;
  end pkg_resize;
 end pkg_scala2hdl;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity BufferCC is
  port(
    io_initial : in std_logic;
    io_dataIn : in std_logic;
    io_dataOut : out std_logic;
    io_mainClk : in std_logic;
    resetCtrl_systemReset : in std_logic
  );
end BufferCC;

architecture arch of BufferCC is

  signal buffers_0 : std_logic;
  signal buffers_1 : std_logic;
begin
  io_dataOut <= buffers_1;
  process(io_mainClk, resetCtrl_systemReset)
  begin
    if resetCtrl_systemReset = '1' then
      buffers_0 <= io_initial;
      buffers_1 <= io_initial;
    elsif rising_edge(io_mainClk) then
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end if;
  end process;

end arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity BufferCC_1 is
  port(
    io_dataIn : in std_logic;
    io_dataOut : out std_logic;
    io_mainClk : in std_logic;
    resetCtrl_mainClkReset : in std_logic
  );
end BufferCC_1;

architecture arch of BufferCC_1 is

  signal buffers_0 : std_logic;
  signal buffers_1 : std_logic;
begin
  io_dataOut <= buffers_1;
  process(io_mainClk)
  begin
    if rising_edge(io_mainClk) then
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end if;
  end process;

end arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity UartCtrlTx is
  port(
    io_configFrame_dataLength : in unsigned(2 downto 0);
    io_configFrame_stop : in UartStopType_defaultEncoding_type;
    io_configFrame_parity : in UartParityType_defaultEncoding_type;
    io_samplingTick : in std_logic;
    io_write_valid : in std_logic;
    io_write_ready : out std_logic;
    io_write_payload : in std_logic_vector(7 downto 0);
    io_cts : in std_logic;
    io_txd : out std_logic;
    io_break : in std_logic;
    io_mainClk : in std_logic;
    resetCtrl_systemReset : in std_logic
  );
end UartCtrlTx;

architecture arch of UartCtrlTx is
  signal zz_2 : std_logic;

  signal clockDivider_counter_willIncrement : std_logic;
  signal clockDivider_counter_willClear : std_logic;
  signal clockDivider_counter_valueNext : unsigned(2 downto 0);
  signal clockDivider_counter_value : unsigned(2 downto 0);
  signal clockDivider_counter_willOverflowIfInc : std_logic;
  signal clockDivider_counter_willOverflow : std_logic;
  signal tickCounter_value : unsigned(2 downto 0);
  signal stateMachine_state : UartCtrlTxState;
  signal stateMachine_parity : std_logic;
  signal stateMachine_txd : std_logic;
  signal zz_1 : std_logic;
begin
  zz_2 <= pkg_toStdLogic(tickCounter_value = io_configFrame_dataLength);
  process(io_samplingTick)
  begin
    clockDivider_counter_willIncrement <= pkg_toStdLogic(false);
    if io_samplingTick = '1' then
      clockDivider_counter_willIncrement <= pkg_toStdLogic(true);
    end if;
  end process;

  clockDivider_counter_willClear <= pkg_toStdLogic(false);
  clockDivider_counter_willOverflowIfInc <= pkg_toStdLogic(clockDivider_counter_value = pkg_unsigned("100"));
  clockDivider_counter_willOverflow <= (clockDivider_counter_willOverflowIfInc and clockDivider_counter_willIncrement);
  process(clockDivider_counter_willOverflow,clockDivider_counter_value,clockDivider_counter_willIncrement,clockDivider_counter_willClear)
  begin
    if clockDivider_counter_willOverflow = '1' then
      clockDivider_counter_valueNext <= pkg_unsigned("000");
    else
      clockDivider_counter_valueNext <= (clockDivider_counter_value + pkg_resize(unsigned(pkg_toStdLogicVector(clockDivider_counter_willIncrement)),3));
    end if;
    if clockDivider_counter_willClear = '1' then
      clockDivider_counter_valueNext <= pkg_unsigned("000");
    end if;
  end process;

  process(stateMachine_state,io_write_payload,tickCounter_value,stateMachine_parity)
  begin
    stateMachine_txd <= pkg_toStdLogic(true);
    case stateMachine_state is
      when pkg_enum.IDLE =>
      when pkg_enum.START =>
        stateMachine_txd <= pkg_toStdLogic(false);
      when pkg_enum.DATA =>
        stateMachine_txd <= pkg_extract(io_write_payload,to_integer(tickCounter_value));
      when pkg_enum.PARITY =>
        stateMachine_txd <= stateMachine_parity;
      when others =>
    end case;
  end process;

  process(io_break,stateMachine_state,clockDivider_counter_willOverflow,zz_2)
  begin
    io_write_ready <= io_break;
    case stateMachine_state is
      when pkg_enum.IDLE =>
      when pkg_enum.START =>
      when pkg_enum.DATA =>
        if clockDivider_counter_willOverflow = '1' then
          if zz_2 = '1' then
            io_write_ready <= pkg_toStdLogic(true);
          end if;
        end if;
      when pkg_enum.PARITY =>
      when others =>
    end case;
  end process;

  io_txd <= zz_1;
  process(io_mainClk, resetCtrl_systemReset)
  begin
    if resetCtrl_systemReset = '1' then
      clockDivider_counter_value <= pkg_unsigned("000");
      stateMachine_state <= pkg_enum.IDLE;
      zz_1 <= pkg_toStdLogic(true);
    elsif rising_edge(io_mainClk) then
      clockDivider_counter_value <= clockDivider_counter_valueNext;
      case stateMachine_state is
        when pkg_enum.IDLE =>
          if ((io_write_valid and (not io_cts)) and clockDivider_counter_willOverflow) = '1' then
            stateMachine_state <= pkg_enum.START;
          end if;
        when pkg_enum.START =>
          if clockDivider_counter_willOverflow = '1' then
            stateMachine_state <= pkg_enum.DATA;
          end if;
        when pkg_enum.DATA =>
          if clockDivider_counter_willOverflow = '1' then
            if zz_2 = '1' then
              if pkg_toStdLogic(io_configFrame_parity = UartParityType_defaultEncoding_NONE) = '1' then
                stateMachine_state <= pkg_enum.STOP;
              else
                stateMachine_state <= pkg_enum.PARITY;
              end if;
            end if;
          end if;
        when pkg_enum.PARITY =>
          if clockDivider_counter_willOverflow = '1' then
            stateMachine_state <= pkg_enum.STOP;
          end if;
        when others =>
          if clockDivider_counter_willOverflow = '1' then
            if pkg_toStdLogic(tickCounter_value = pkg_resize(pkg_mux(pkg_toStdLogic(io_configFrame_stop = UartStopType_defaultEncoding_ONE),pkg_unsigned("0"),pkg_unsigned("1")),3)) = '1' then
              stateMachine_state <= pkg_mux(io_write_valid,pkg_enum.START,pkg_enum.IDLE);
            end if;
          end if;
      end case;
      zz_1 <= (stateMachine_txd and (not io_break));
    end if;
  end process;

  process(io_mainClk)
  begin
    if rising_edge(io_mainClk) then
      if clockDivider_counter_willOverflow = '1' then
        tickCounter_value <= (tickCounter_value + pkg_unsigned("001"));
      end if;
      if clockDivider_counter_willOverflow = '1' then
        stateMachine_parity <= (stateMachine_parity xor stateMachine_txd);
      end if;
      case stateMachine_state is
        when pkg_enum.IDLE =>
        when pkg_enum.START =>
          if clockDivider_counter_willOverflow = '1' then
            stateMachine_parity <= pkg_toStdLogic(io_configFrame_parity = UartParityType_defaultEncoding_ODD);
            tickCounter_value <= pkg_unsigned("000");
          end if;
        when pkg_enum.DATA =>
          if clockDivider_counter_willOverflow = '1' then
            if zz_2 = '1' then
              tickCounter_value <= pkg_unsigned("000");
            end if;
          end if;
        when pkg_enum.PARITY =>
          if clockDivider_counter_willOverflow = '1' then
            tickCounter_value <= pkg_unsigned("000");
          end if;
        when others =>
      end case;
    end if;
  end process;

end arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity UartCtrlRx is
  port(
    io_configFrame_dataLength : in unsigned(2 downto 0);
    io_configFrame_stop : in UartStopType_defaultEncoding_type;
    io_configFrame_parity : in UartParityType_defaultEncoding_type;
    io_samplingTick : in std_logic;
    io_read_valid : out std_logic;
    io_read_ready : in std_logic;
    io_read_payload : out std_logic_vector(7 downto 0);
    io_rxd : in std_logic;
    io_rts : out std_logic;
    io_error : out std_logic;
    io_break : out std_logic;
    io_mainClk : in std_logic;
    resetCtrl_systemReset : in std_logic
  );
end UartCtrlRx;

architecture arch of UartCtrlRx is
  signal zz_2 : std_logic;
  signal io_rxd_buffercc_io_dataOut : std_logic;
  signal zz_3 : std_logic;
  signal zz_4 : std_logic;
  signal zz_5 : std_logic;
  signal zz_6 : std_logic;
  signal zz_7 : std_logic;

  signal zz_1 : std_logic;
  signal sampler_synchroniser : std_logic;
  signal sampler_samples_0 : std_logic;
  signal sampler_samples_1 : std_logic;
  signal sampler_samples_2 : std_logic;
  signal sampler_value : std_logic;
  signal sampler_tick : std_logic;
  signal bitTimer_counter : unsigned(2 downto 0);
  signal bitTimer_tick : std_logic;
  signal bitCounter_value : unsigned(2 downto 0);
  signal break_counter : unsigned(6 downto 0);
  signal break_valid : std_logic;
  signal stateMachine_state : UartCtrlRxState;
  signal stateMachine_parity : std_logic;
  signal stateMachine_shifter : std_logic_vector(7 downto 0);
  signal stateMachine_validReg : std_logic;
begin
  zz_3 <= pkg_toStdLogic(stateMachine_parity = sampler_value);
  zz_4 <= (not sampler_value);
  zz_5 <= pkg_toStdLogic(bitTimer_counter = pkg_unsigned("000"));
  zz_6 <= ((sampler_tick and (not sampler_value)) and (not break_valid));
  zz_7 <= pkg_toStdLogic(bitCounter_value = io_configFrame_dataLength);
  io_rxd_buffercc : entity work.BufferCC
    port map ( 
      io_initial => zz_2,
      io_dataIn => io_rxd,
      io_dataOut => io_rxd_buffercc_io_dataOut,
      io_mainClk => io_mainClk,
      resetCtrl_systemReset => resetCtrl_systemReset 
    );
  process(stateMachine_state,bitTimer_tick,zz_3,zz_4)
  begin
    io_error <= pkg_toStdLogic(false);
    case stateMachine_state is
      when pkg_enum.IDLE =>
      when pkg_enum.START =>
      when pkg_enum.DATA =>
      when pkg_enum.PARITY =>
        if bitTimer_tick = '1' then
          if zz_3 = '0' then
            io_error <= pkg_toStdLogic(true);
          end if;
        end if;
      when others =>
        if bitTimer_tick = '1' then
          if zz_4 = '1' then
            io_error <= pkg_toStdLogic(true);
          end if;
        end if;
    end case;
  end process;

  io_rts <= zz_1;
  zz_2 <= pkg_toStdLogic(false);
  sampler_synchroniser <= io_rxd_buffercc_io_dataOut;
  sampler_samples_0 <= sampler_synchroniser;
  process(sampler_tick,zz_5)
  begin
    bitTimer_tick <= pkg_toStdLogic(false);
    if sampler_tick = '1' then
      if zz_5 = '1' then
        bitTimer_tick <= pkg_toStdLogic(true);
      end if;
    end if;
  end process;

  break_valid <= pkg_toStdLogic(break_counter = pkg_unsigned("1000001"));
  io_break <= break_valid;
  io_read_valid <= stateMachine_validReg;
  io_read_payload <= stateMachine_shifter;
  process(io_mainClk, resetCtrl_systemReset)
  begin
    if resetCtrl_systemReset = '1' then
      zz_1 <= pkg_toStdLogic(false);
      sampler_samples_1 <= pkg_toStdLogic(true);
      sampler_samples_2 <= pkg_toStdLogic(true);
      sampler_value <= pkg_toStdLogic(true);
      sampler_tick <= pkg_toStdLogic(false);
      break_counter <= pkg_unsigned("0000000");
      stateMachine_state <= pkg_enum.IDLE;
      stateMachine_validReg <= pkg_toStdLogic(false);
    elsif rising_edge(io_mainClk) then
      zz_1 <= (not io_read_ready);
      if io_samplingTick = '1' then
        sampler_samples_1 <= sampler_samples_0;
      end if;
      if io_samplingTick = '1' then
        sampler_samples_2 <= sampler_samples_1;
      end if;
      sampler_value <= (((pkg_toStdLogic(false) or ((pkg_toStdLogic(true) and sampler_samples_0) and sampler_samples_1)) or ((pkg_toStdLogic(true) and sampler_samples_0) and sampler_samples_2)) or ((pkg_toStdLogic(true) and sampler_samples_1) and sampler_samples_2));
      sampler_tick <= io_samplingTick;
      if sampler_value = '1' then
        break_counter <= pkg_unsigned("0000000");
      else
        if (io_samplingTick and (not break_valid)) = '1' then
          break_counter <= (break_counter + pkg_unsigned("0000001"));
        end if;
      end if;
      stateMachine_validReg <= pkg_toStdLogic(false);
      case stateMachine_state is
        when pkg_enum.IDLE =>
          if zz_6 = '1' then
            stateMachine_state <= pkg_enum.START;
          end if;
        when pkg_enum.START =>
          if bitTimer_tick = '1' then
            stateMachine_state <= pkg_enum.DATA;
            if pkg_toStdLogic(sampler_value = pkg_toStdLogic(true)) = '1' then
              stateMachine_state <= pkg_enum.IDLE;
            end if;
          end if;
        when pkg_enum.DATA =>
          if bitTimer_tick = '1' then
            if zz_7 = '1' then
              if pkg_toStdLogic(io_configFrame_parity = UartParityType_defaultEncoding_NONE) = '1' then
                stateMachine_state <= pkg_enum.STOP;
                stateMachine_validReg <= pkg_toStdLogic(true);
              else
                stateMachine_state <= pkg_enum.PARITY;
              end if;
            end if;
          end if;
        when pkg_enum.PARITY =>
          if bitTimer_tick = '1' then
            if zz_3 = '1' then
              stateMachine_state <= pkg_enum.STOP;
              stateMachine_validReg <= pkg_toStdLogic(true);
            else
              stateMachine_state <= pkg_enum.IDLE;
            end if;
          end if;
        when others =>
          if bitTimer_tick = '1' then
            if zz_4 = '1' then
              stateMachine_state <= pkg_enum.IDLE;
            else
              if pkg_toStdLogic(bitCounter_value = pkg_resize(pkg_mux(pkg_toStdLogic(io_configFrame_stop = UartStopType_defaultEncoding_ONE),pkg_unsigned("0"),pkg_unsigned("1")),3)) = '1' then
                stateMachine_state <= pkg_enum.IDLE;
              end if;
            end if;
          end if;
      end case;
    end if;
  end process;

  process(io_mainClk)
  begin
    if rising_edge(io_mainClk) then
      if sampler_tick = '1' then
        bitTimer_counter <= (bitTimer_counter - pkg_unsigned("001"));
        if zz_5 = '1' then
          bitTimer_counter <= pkg_unsigned("100");
        end if;
      end if;
      if bitTimer_tick = '1' then
        bitCounter_value <= (bitCounter_value + pkg_unsigned("001"));
      end if;
      if bitTimer_tick = '1' then
        stateMachine_parity <= (stateMachine_parity xor sampler_value);
      end if;
      case stateMachine_state is
        when pkg_enum.IDLE =>
          if zz_6 = '1' then
            bitTimer_counter <= pkg_unsigned("001");
          end if;
        when pkg_enum.START =>
          if bitTimer_tick = '1' then
            bitCounter_value <= pkg_unsigned("000");
            stateMachine_parity <= pkg_toStdLogic(io_configFrame_parity = UartParityType_defaultEncoding_ODD);
          end if;
        when pkg_enum.DATA =>
          if bitTimer_tick = '1' then
            stateMachine_shifter(to_integer(bitCounter_value)) <= sampler_value;
            if zz_7 = '1' then
              bitCounter_value <= pkg_unsigned("000");
            end if;
          end if;
        when pkg_enum.PARITY =>
          if bitTimer_tick = '1' then
            bitCounter_value <= pkg_unsigned("000");
          end if;
        when others =>
      end case;
    end if;
  end process;

end arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity StreamFifoLowLatency is
  port(
    io_push_valid : in std_logic;
    io_push_ready : out std_logic;
    io_push_payload_error : in std_logic;
    io_push_payload_inst : in std_logic_vector(31 downto 0);
    io_pop_valid : out std_logic;
    io_pop_ready : in std_logic;
    io_pop_payload_error : out std_logic;
    io_pop_payload_inst : out std_logic_vector(31 downto 0);
    io_flush : in std_logic;
    io_occupancy : out unsigned(0 downto 0);
    io_mainClk : in std_logic;
    resetCtrl_systemReset : in std_logic
  );
end StreamFifoLowLatency;

architecture arch of StreamFifoLowLatency is
  signal zz_4 : std_logic;
  signal zz_5 : std_logic;
  signal zz_6 : std_logic;

  signal zz_1 : std_logic;
  signal pushPtr_willIncrement : std_logic;
  signal pushPtr_willClear : std_logic;
  signal pushPtr_willOverflowIfInc : std_logic;
  signal pushPtr_willOverflow : std_logic;
  signal popPtr_willIncrement : std_logic;
  signal popPtr_willClear : std_logic;
  signal popPtr_willOverflowIfInc : std_logic;
  signal popPtr_willOverflow : std_logic;
  signal ptrMatch : std_logic;
  signal risingOccupancy : std_logic;
  signal empty : std_logic;
  signal full : std_logic;
  signal pushing : std_logic;
  signal popping : std_logic;
  signal zz_2 : std_logic_vector(32 downto 0);
  signal zz_3 : std_logic_vector(32 downto 0);
begin
  io_push_ready <= zz_4;
  io_pop_valid <= zz_5;
  zz_6 <= (not empty);
  process(pushing)
  begin
    zz_1 <= pkg_toStdLogic(false);
    if pushing = '1' then
      zz_1 <= pkg_toStdLogic(true);
    end if;
  end process;

  process(pushing)
  begin
    pushPtr_willIncrement <= pkg_toStdLogic(false);
    if pushing = '1' then
      pushPtr_willIncrement <= pkg_toStdLogic(true);
    end if;
  end process;

  process(io_flush)
  begin
    pushPtr_willClear <= pkg_toStdLogic(false);
    if io_flush = '1' then
      pushPtr_willClear <= pkg_toStdLogic(true);
    end if;
  end process;

  pushPtr_willOverflowIfInc <= pkg_toStdLogic(true);
  pushPtr_willOverflow <= (pushPtr_willOverflowIfInc and pushPtr_willIncrement);
  process(popping)
  begin
    popPtr_willIncrement <= pkg_toStdLogic(false);
    if popping = '1' then
      popPtr_willIncrement <= pkg_toStdLogic(true);
    end if;
  end process;

  process(io_flush)
  begin
    popPtr_willClear <= pkg_toStdLogic(false);
    if io_flush = '1' then
      popPtr_willClear <= pkg_toStdLogic(true);
    end if;
  end process;

  popPtr_willOverflowIfInc <= pkg_toStdLogic(true);
  popPtr_willOverflow <= (popPtr_willOverflowIfInc and popPtr_willIncrement);
  ptrMatch <= pkg_toStdLogic(true);
  empty <= (ptrMatch and (not risingOccupancy));
  full <= (ptrMatch and risingOccupancy);
  pushing <= (io_push_valid and zz_4);
  popping <= (zz_5 and io_pop_ready);
  zz_4 <= (not full);
  process(zz_6,io_push_valid)
  begin
    if zz_6 = '1' then
      zz_5 <= pkg_toStdLogic(true);
    else
      zz_5 <= io_push_valid;
    end if;
  end process;

  zz_2 <= zz_3;
  process(zz_6,zz_2,io_push_payload_error)
  begin
    if zz_6 = '1' then
      io_pop_payload_error <= pkg_extract(pkg_extract(zz_2,0,0),0);
    else
      io_pop_payload_error <= io_push_payload_error;
    end if;
  end process;

  process(zz_6,zz_2,io_push_payload_inst)
  begin
    if zz_6 = '1' then
      io_pop_payload_inst <= pkg_extract(zz_2,32,1);
    else
      io_pop_payload_inst <= io_push_payload_inst;
    end if;
  end process;

  io_occupancy <= unsigned(pkg_toStdLogicVector((risingOccupancy and ptrMatch)));
  process(io_mainClk, resetCtrl_systemReset)
  begin
    if resetCtrl_systemReset = '1' then
      risingOccupancy <= pkg_toStdLogic(false);
    elsif rising_edge(io_mainClk) then
      if pkg_toStdLogic(pushing /= popping) = '1' then
        risingOccupancy <= pushing;
      end if;
      if io_flush = '1' then
        risingOccupancy <= pkg_toStdLogic(false);
      end if;
    end if;
  end process;

  process(io_mainClk)
  begin
    if rising_edge(io_mainClk) then
      if zz_1 = '1' then
        zz_3 <= pkg_cat(io_push_payload_inst,pkg_toStdLogicVector(io_push_payload_error));
      end if;
    end if;
  end process;

end arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity FlowCCByToggle is
  port(
    io_input_valid : in std_logic;
    io_input_payload_last : in std_logic;
    io_input_payload_fragment : in std_logic_vector(0 downto 0);
    io_output_valid : out std_logic;
    io_output_payload_last : out std_logic;
    io_output_payload_fragment : out std_logic_vector(0 downto 0);
    io_jtag_tck : in std_logic;
    io_mainClk : in std_logic;
    resetCtrl_mainClkReset : in std_logic
  );
end FlowCCByToggle;

architecture arch of FlowCCByToggle is
  signal inputArea_target_buffercc_io_dataOut : std_logic;

  signal outHitSignal : std_logic;
  signal inputArea_target : std_logic := '0';
  signal inputArea_data_last : std_logic;
  signal inputArea_data_fragment : std_logic_vector(0 downto 0);
  signal outputArea_target : std_logic;
  signal outputArea_hit : std_logic;
  signal outputArea_flow_valid : std_logic;
  signal outputArea_flow_payload_last : std_logic;
  signal outputArea_flow_payload_fragment : std_logic_vector(0 downto 0);
  signal outputArea_flow_regNext_valid : std_logic;
  signal outputArea_flow_regNext_payload_last : std_logic;
  signal outputArea_flow_regNext_payload_fragment : std_logic_vector(0 downto 0);
begin
  inputArea_target_buffercc : entity work.BufferCC_1
    port map ( 
      io_dataIn => inputArea_target,
      io_dataOut => inputArea_target_buffercc_io_dataOut,
      io_mainClk => io_mainClk,
      resetCtrl_mainClkReset => resetCtrl_mainClkReset 
    );
  outputArea_target <= inputArea_target_buffercc_io_dataOut;
  outputArea_flow_valid <= pkg_toStdLogic(outputArea_target /= outputArea_hit);
  outputArea_flow_payload_last <= inputArea_data_last;
  outputArea_flow_payload_fragment <= inputArea_data_fragment;
  io_output_valid <= outputArea_flow_regNext_valid;
  io_output_payload_last <= outputArea_flow_regNext_payload_last;
  io_output_payload_fragment <= outputArea_flow_regNext_payload_fragment;
  process(io_jtag_tck)
  begin
    if rising_edge(io_jtag_tck) then
      if io_input_valid = '1' then
        inputArea_target <= (not inputArea_target);
        inputArea_data_last <= io_input_payload_last;
        inputArea_data_fragment <= io_input_payload_fragment;
      end if;
    end if;
  end process;

  process(io_mainClk)
  begin
    if rising_edge(io_mainClk) then
      outputArea_hit <= outputArea_target;
      outputArea_flow_regNext_payload_last <= outputArea_flow_payload_last;
      outputArea_flow_regNext_payload_fragment <= outputArea_flow_payload_fragment;
    end if;
  end process;

  process(io_mainClk, resetCtrl_mainClkReset)
  begin
    if resetCtrl_mainClkReset = '1' then
      outputArea_flow_regNext_valid <= pkg_toStdLogic(false);
    elsif rising_edge(io_mainClk) then
      outputArea_flow_regNext_valid <= outputArea_flow_valid;
    end if;
  end process;

end arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity BufferCC_2 is
  port(
    io_dataIn : in std_logic_vector(31 downto 0);
    io_dataOut : out std_logic_vector(31 downto 0);
    io_mainClk : in std_logic;
    resetCtrl_systemReset : in std_logic
  );
end BufferCC_2;

architecture arch of BufferCC_2 is

  signal buffers_0 : std_logic_vector(31 downto 0);
  signal buffers_1 : std_logic_vector(31 downto 0);
begin
  io_dataOut <= buffers_1;
  process(io_mainClk)
  begin
    if rising_edge(io_mainClk) then
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end if;
  end process;

end arch;


--BufferCC_3 remplaced by BufferCC_2


--BufferCC_4 remplaced by BufferCC_2


--BufferCC_5 remplaced by BufferCC_2

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity UartCtrl is
  port(
    io_config_frame_dataLength : in unsigned(2 downto 0);
    io_config_frame_stop : in UartStopType_defaultEncoding_type;
    io_config_frame_parity : in UartParityType_defaultEncoding_type;
    io_config_clockDivider : in unsigned(19 downto 0);
    io_write_valid : in std_logic;
    io_write_ready : out std_logic;
    io_write_payload : in std_logic_vector(7 downto 0);
    io_read_valid : out std_logic;
    io_read_ready : in std_logic;
    io_read_payload : out std_logic_vector(7 downto 0);
    io_uart_txd : out std_logic;
    io_uart_rxd : in std_logic;
    io_readError : out std_logic;
    io_writeBreak : in std_logic;
    io_readBreak : out std_logic;
    io_mainClk : in std_logic;
    resetCtrl_systemReset : in std_logic
  );
end UartCtrl;

architecture arch of UartCtrl is
  signal zz_1 : std_logic;
  signal tx_io_write_ready : std_logic;
  signal tx_io_txd : std_logic;
  signal rx_io_read_valid : std_logic;
  signal rx_io_read_payload : std_logic_vector(7 downto 0);
  signal rx_io_rts : std_logic;
  signal rx_io_error : std_logic;
  signal rx_io_break : std_logic;

  signal clockDivider_counter : unsigned(19 downto 0);
  signal clockDivider_tick : std_logic;
  signal io_write_thrown_valid : std_logic;
  signal io_write_thrown_ready : std_logic;
  signal io_write_thrown_payload : std_logic_vector(7 downto 0);
begin
  tx : entity work.UartCtrlTx
    port map ( 
      io_configFrame_dataLength => io_config_frame_dataLength,
      io_configFrame_stop => io_config_frame_stop,
      io_configFrame_parity => io_config_frame_parity,
      io_samplingTick => clockDivider_tick,
      io_write_valid => io_write_thrown_valid,
      io_write_ready => tx_io_write_ready,
      io_write_payload => io_write_thrown_payload,
      io_cts => zz_1,
      io_txd => tx_io_txd,
      io_break => io_writeBreak,
      io_mainClk => io_mainClk,
      resetCtrl_systemReset => resetCtrl_systemReset 
    );
  rx : entity work.UartCtrlRx
    port map ( 
      io_configFrame_dataLength => io_config_frame_dataLength,
      io_configFrame_stop => io_config_frame_stop,
      io_configFrame_parity => io_config_frame_parity,
      io_samplingTick => clockDivider_tick,
      io_read_valid => rx_io_read_valid,
      io_read_ready => io_read_ready,
      io_read_payload => rx_io_read_payload,
      io_rxd => io_uart_rxd,
      io_rts => rx_io_rts,
      io_error => rx_io_error,
      io_break => rx_io_break,
      io_mainClk => io_mainClk,
      resetCtrl_systemReset => resetCtrl_systemReset 
    );
  clockDivider_tick <= pkg_toStdLogic(clockDivider_counter = pkg_unsigned("00000000000000000000"));
  process(io_write_valid,rx_io_break)
  begin
    io_write_thrown_valid <= io_write_valid;
    if rx_io_break = '1' then
      io_write_thrown_valid <= pkg_toStdLogic(false);
    end if;
  end process;

  process(io_write_thrown_ready,rx_io_break)
  begin
    io_write_ready <= io_write_thrown_ready;
    if rx_io_break = '1' then
      io_write_ready <= pkg_toStdLogic(true);
    end if;
  end process;

  io_write_thrown_payload <= io_write_payload;
  io_write_thrown_ready <= tx_io_write_ready;
  io_read_valid <= rx_io_read_valid;
  io_read_payload <= rx_io_read_payload;
  io_uart_txd <= tx_io_txd;
  io_readError <= rx_io_error;
  zz_1 <= pkg_toStdLogic(false);
  io_readBreak <= rx_io_break;
  process(io_mainClk, resetCtrl_systemReset)
  begin
    if resetCtrl_systemReset = '1' then
      clockDivider_counter <= pkg_unsigned("00000000000000000000");
    elsif rising_edge(io_mainClk) then
      clockDivider_counter <= (clockDivider_counter - pkg_unsigned("00000000000000000001"));
      if clockDivider_tick = '1' then
        clockDivider_counter <= io_config_clockDivider;
      end if;
    end if;
  end process;

end arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity StreamFifo is
  port(
    io_push_valid : in std_logic;
    io_push_ready : out std_logic;
    io_push_payload : in std_logic_vector(7 downto 0);
    io_pop_valid : out std_logic;
    io_pop_ready : in std_logic;
    io_pop_payload : out std_logic_vector(7 downto 0);
    io_flush : in std_logic;
    io_occupancy : out unsigned(4 downto 0);
    io_availability : out unsigned(4 downto 0);
    io_mainClk : in std_logic;
    resetCtrl_systemReset : in std_logic
  );
end StreamFifo;

architecture arch of StreamFifo is
  signal zz_3 : std_logic_vector(7 downto 0);
  signal zz_4 : std_logic;
  signal zz_5 : std_logic;
  signal zz_6 : std_logic;

  signal zz_1 : std_logic;
  signal logic_pushPtr_willIncrement : std_logic;
  signal logic_pushPtr_willClear : std_logic;
  signal logic_pushPtr_valueNext : unsigned(3 downto 0);
  signal logic_pushPtr_value : unsigned(3 downto 0);
  signal logic_pushPtr_willOverflowIfInc : std_logic;
  signal logic_pushPtr_willOverflow : std_logic;
  signal logic_popPtr_willIncrement : std_logic;
  signal logic_popPtr_willClear : std_logic;
  signal logic_popPtr_valueNext : unsigned(3 downto 0);
  signal logic_popPtr_value : unsigned(3 downto 0);
  signal logic_popPtr_willOverflowIfInc : std_logic;
  signal logic_popPtr_willOverflow : std_logic;
  signal logic_ptrMatch : std_logic;
  signal logic_risingOccupancy : std_logic;
  signal logic_pushing : std_logic;
  signal logic_popping : std_logic;
  signal logic_empty : std_logic;
  signal logic_full : std_logic;
  signal zz_2 : std_logic;
  signal logic_ptrDif : unsigned(3 downto 0);
  type logic_ram_type is array (0 to 15) of std_logic_vector(7 downto 0);
  signal logic_ram : logic_ram_type;
begin
  io_push_ready <= zz_4;
  io_pop_valid <= zz_5;
  zz_6 <= pkg_toStdLogic(true);
  process(io_mainClk)
  begin
    if rising_edge(io_mainClk) then
      if zz_6 = '1' then
        zz_3 <= logic_ram(to_integer(logic_popPtr_valueNext));
      end if;
    end if;
  end process;

  process(io_mainClk)
  begin
    if rising_edge(io_mainClk) then
      if zz_1 = '1' then
        logic_ram(to_integer(logic_pushPtr_value)) <= io_push_payload;
      end if;
    end if;
  end process;

  process(logic_pushing)
  begin
    zz_1 <= pkg_toStdLogic(false);
    if logic_pushing = '1' then
      zz_1 <= pkg_toStdLogic(true);
    end if;
  end process;

  process(logic_pushing)
  begin
    logic_pushPtr_willIncrement <= pkg_toStdLogic(false);
    if logic_pushing = '1' then
      logic_pushPtr_willIncrement <= pkg_toStdLogic(true);
    end if;
  end process;

  process(io_flush)
  begin
    logic_pushPtr_willClear <= pkg_toStdLogic(false);
    if io_flush = '1' then
      logic_pushPtr_willClear <= pkg_toStdLogic(true);
    end if;
  end process;

  logic_pushPtr_willOverflowIfInc <= pkg_toStdLogic(logic_pushPtr_value = pkg_unsigned("1111"));
  logic_pushPtr_willOverflow <= (logic_pushPtr_willOverflowIfInc and logic_pushPtr_willIncrement);
  process(logic_pushPtr_value,logic_pushPtr_willIncrement,logic_pushPtr_willClear)
  begin
    logic_pushPtr_valueNext <= (logic_pushPtr_value + pkg_resize(unsigned(pkg_toStdLogicVector(logic_pushPtr_willIncrement)),4));
    if logic_pushPtr_willClear = '1' then
      logic_pushPtr_valueNext <= pkg_unsigned("0000");
    end if;
  end process;

  process(logic_popping)
  begin
    logic_popPtr_willIncrement <= pkg_toStdLogic(false);
    if logic_popping = '1' then
      logic_popPtr_willIncrement <= pkg_toStdLogic(true);
    end if;
  end process;

  process(io_flush)
  begin
    logic_popPtr_willClear <= pkg_toStdLogic(false);
    if io_flush = '1' then
      logic_popPtr_willClear <= pkg_toStdLogic(true);
    end if;
  end process;

  logic_popPtr_willOverflowIfInc <= pkg_toStdLogic(logic_popPtr_value = pkg_unsigned("1111"));
  logic_popPtr_willOverflow <= (logic_popPtr_willOverflowIfInc and logic_popPtr_willIncrement);
  process(logic_popPtr_value,logic_popPtr_willIncrement,logic_popPtr_willClear)
  begin
    logic_popPtr_valueNext <= (logic_popPtr_value + pkg_resize(unsigned(pkg_toStdLogicVector(logic_popPtr_willIncrement)),4));
    if logic_popPtr_willClear = '1' then
      logic_popPtr_valueNext <= pkg_unsigned("0000");
    end if;
  end process;

  logic_ptrMatch <= pkg_toStdLogic(logic_pushPtr_value = logic_popPtr_value);
  logic_pushing <= (io_push_valid and zz_4);
  logic_popping <= (zz_5 and io_pop_ready);
  logic_empty <= (logic_ptrMatch and (not logic_risingOccupancy));
  logic_full <= (logic_ptrMatch and logic_risingOccupancy);
  zz_4 <= (not logic_full);
  zz_5 <= ((not logic_empty) and (not (zz_2 and (not logic_full))));
  io_pop_payload <= zz_3;
  logic_ptrDif <= (logic_pushPtr_value - logic_popPtr_value);
  io_occupancy <= unsigned(pkg_cat(pkg_toStdLogicVector((logic_risingOccupancy and logic_ptrMatch)),std_logic_vector(logic_ptrDif)));
  io_availability <= unsigned(pkg_cat(pkg_toStdLogicVector(((not logic_risingOccupancy) and logic_ptrMatch)),std_logic_vector((logic_popPtr_value - logic_pushPtr_value))));
  process(io_mainClk, resetCtrl_systemReset)
  begin
    if resetCtrl_systemReset = '1' then
      logic_pushPtr_value <= pkg_unsigned("0000");
      logic_popPtr_value <= pkg_unsigned("0000");
      logic_risingOccupancy <= pkg_toStdLogic(false);
      zz_2 <= pkg_toStdLogic(false);
    elsif rising_edge(io_mainClk) then
      logic_pushPtr_value <= logic_pushPtr_valueNext;
      logic_popPtr_value <= logic_popPtr_valueNext;
      zz_2 <= pkg_toStdLogic(logic_popPtr_valueNext = logic_pushPtr_value);
      if pkg_toStdLogic(logic_pushing /= logic_popping) = '1' then
        logic_risingOccupancy <= logic_pushing;
      end if;
      if io_flush = '1' then
        logic_risingOccupancy <= pkg_toStdLogic(false);
      end if;
    end if;
  end process;

end arch;


--StreamFifo_1 remplaced by StreamFifo

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity Prescaler is
  port(
    io_clear : in std_logic;
    io_limit : in unsigned(15 downto 0);
    io_overflow : out std_logic;
    io_mainClk : in std_logic;
    resetCtrl_systemReset : in std_logic
  );
end Prescaler;

architecture arch of Prescaler is
  signal zz_1 : std_logic;

  signal counter : unsigned(15 downto 0);
begin
  io_overflow <= zz_1;
  zz_1 <= pkg_toStdLogic(counter = io_limit);
  process(io_mainClk)
  begin
    if rising_edge(io_mainClk) then
      counter <= (counter + pkg_unsigned("0000000000000001"));
      if (io_clear or zz_1) = '1' then
        counter <= pkg_unsigned("0000000000000000");
      end if;
    end if;
  end process;

end arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity Timer is
  port(
    io_tick : in std_logic;
    io_clear : in std_logic;
    io_limit : in unsigned(15 downto 0);
    io_full : out std_logic;
    io_value : out unsigned(15 downto 0);
    io_mainClk : in std_logic;
    resetCtrl_systemReset : in std_logic
  );
end Timer;

architecture arch of Timer is

  signal counter : unsigned(15 downto 0);
  signal limitHit : std_logic;
  signal inhibitFull : std_logic;
begin
  limitHit <= pkg_toStdLogic(counter = io_limit);
  io_full <= ((limitHit and io_tick) and (not inhibitFull));
  io_value <= counter;
  process(io_mainClk, resetCtrl_systemReset)
  begin
    if resetCtrl_systemReset = '1' then
      inhibitFull <= pkg_toStdLogic(false);
    elsif rising_edge(io_mainClk) then
      if io_tick = '1' then
        inhibitFull <= limitHit;
      end if;
      if io_clear = '1' then
        inhibitFull <= pkg_toStdLogic(false);
      end if;
    end if;
  end process;

  process(io_mainClk)
  begin
    if rising_edge(io_mainClk) then
      if io_tick = '1' then
        counter <= (counter + pkg_resize(unsigned(pkg_toStdLogicVector((not limitHit))),16));
      end if;
      if io_clear = '1' then
        counter <= pkg_unsigned("0000000000000000");
      end if;
    end if;
  end process;

end arch;


--Timer_1 remplaced by Timer

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity InterruptCtrl is
  port(
    io_inputs : in std_logic_vector(1 downto 0);
    io_clears : in std_logic_vector(1 downto 0);
    io_masks : in std_logic_vector(1 downto 0);
    io_pendings : out std_logic_vector(1 downto 0);
    io_mainClk : in std_logic;
    resetCtrl_systemReset : in std_logic
  );
end InterruptCtrl;

architecture arch of InterruptCtrl is

  signal pendings : std_logic_vector(1 downto 0);
begin
  io_pendings <= (pendings and io_masks);
  process(io_mainClk, resetCtrl_systemReset)
  begin
    if resetCtrl_systemReset = '1' then
      pendings <= pkg_stdLogicVector("00");
    elsif rising_edge(io_mainClk) then
      pendings <= ((pendings and pkg_not(io_clears)) or io_inputs);
    end if;
  end process;

end arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity BufferCC_6 is
  port(
    io_dataIn : in std_logic;
    io_dataOut : out std_logic;
    io_mainClk : in std_logic
  );
end BufferCC_6;

architecture arch of BufferCC_6 is

  signal buffers_0 : std_logic;
  signal buffers_1 : std_logic;
begin
  io_dataOut <= buffers_1;
  process(io_mainClk)
  begin
    if rising_edge(io_mainClk) then
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end if;
  end process;

end arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity MuraxMasterArbiter is
  port(
    io_iBus_cmd_valid : in std_logic;
    io_iBus_cmd_ready : out std_logic;
    io_iBus_cmd_payload_pc : in unsigned(31 downto 0);
    io_iBus_rsp_valid : out std_logic;
    io_iBus_rsp_payload_error : out std_logic;
    io_iBus_rsp_payload_inst : out std_logic_vector(31 downto 0);
    io_dBus_cmd_valid : in std_logic;
    io_dBus_cmd_ready : out std_logic;
    io_dBus_cmd_payload_wr : in std_logic;
    io_dBus_cmd_payload_address : in unsigned(31 downto 0);
    io_dBus_cmd_payload_data : in std_logic_vector(31 downto 0);
    io_dBus_cmd_payload_size : in unsigned(1 downto 0);
    io_dBus_rsp_ready : out std_logic;
    io_dBus_rsp_error : out std_logic;
    io_dBus_rsp_data : out std_logic_vector(31 downto 0);
    io_masterBus_cmd_valid : out std_logic;
    io_masterBus_cmd_ready : in std_logic;
    io_masterBus_cmd_payload_write : out std_logic;
    io_masterBus_cmd_payload_address : out unsigned(31 downto 0);
    io_masterBus_cmd_payload_data : out std_logic_vector(31 downto 0);
    io_masterBus_cmd_payload_mask : out std_logic_vector(3 downto 0);
    io_masterBus_rsp_valid : in std_logic;
    io_masterBus_rsp_payload_data : in std_logic_vector(31 downto 0);
    io_mainClk : in std_logic;
    resetCtrl_systemReset : in std_logic
  );
end MuraxMasterArbiter;

architecture arch of MuraxMasterArbiter is
  signal zz_2 : std_logic;
  signal zz_3 : std_logic;
  signal zz_4 : std_logic;

  signal zz_1 : std_logic_vector(3 downto 0);
  signal rspPending : std_logic;
  signal rspTarget : std_logic;
begin
  io_masterBus_cmd_valid <= zz_2;
  io_masterBus_cmd_payload_write <= zz_3;
  zz_4 <= (rspPending and (not io_masterBus_rsp_valid));
  process(io_iBus_cmd_valid,io_dBus_cmd_valid,zz_4)
  begin
    zz_2 <= (io_iBus_cmd_valid or io_dBus_cmd_valid);
    if zz_4 = '1' then
      zz_2 <= pkg_toStdLogic(false);
    end if;
  end process;

  zz_3 <= (io_dBus_cmd_valid and io_dBus_cmd_payload_wr);
  io_masterBus_cmd_payload_address <= pkg_mux(io_dBus_cmd_valid,io_dBus_cmd_payload_address,io_iBus_cmd_payload_pc);
  io_masterBus_cmd_payload_data <= io_dBus_cmd_payload_data;
  process(io_dBus_cmd_payload_size)
  begin
    case io_dBus_cmd_payload_size is
      when "00" =>
        zz_1 <= pkg_stdLogicVector("0001");
      when "01" =>
        zz_1 <= pkg_stdLogicVector("0011");
      when others =>
        zz_1 <= pkg_stdLogicVector("1111");
    end case;
  end process;

  io_masterBus_cmd_payload_mask <= std_logic_vector(shift_left(unsigned(zz_1),to_integer(pkg_extract(io_dBus_cmd_payload_address,1,0))));
  process(io_masterBus_cmd_ready,io_dBus_cmd_valid,zz_4)
  begin
    io_iBus_cmd_ready <= (io_masterBus_cmd_ready and (not io_dBus_cmd_valid));
    if zz_4 = '1' then
      io_iBus_cmd_ready <= pkg_toStdLogic(false);
    end if;
  end process;

  process(io_masterBus_cmd_ready,zz_4)
  begin
    io_dBus_cmd_ready <= io_masterBus_cmd_ready;
    if zz_4 = '1' then
      io_dBus_cmd_ready <= pkg_toStdLogic(false);
    end if;
  end process;

  io_iBus_rsp_valid <= (io_masterBus_rsp_valid and (not rspTarget));
  io_iBus_rsp_payload_inst <= io_masterBus_rsp_payload_data;
  io_iBus_rsp_payload_error <= pkg_toStdLogic(false);
  io_dBus_rsp_ready <= (io_masterBus_rsp_valid and rspTarget);
  io_dBus_rsp_data <= io_masterBus_rsp_payload_data;
  io_dBus_rsp_error <= pkg_toStdLogic(false);
  process(io_mainClk, resetCtrl_systemReset)
  begin
    if resetCtrl_systemReset = '1' then
      rspPending <= pkg_toStdLogic(false);
      rspTarget <= pkg_toStdLogic(false);
    elsif rising_edge(io_mainClk) then
      if io_masterBus_rsp_valid = '1' then
        rspPending <= pkg_toStdLogic(false);
      end if;
      if ((zz_2 and io_masterBus_cmd_ready) and (not zz_3)) = '1' then
        rspTarget <= io_dBus_cmd_valid;
        rspPending <= pkg_toStdLogic(true);
      end if;
    end if;
  end process;

end arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity VexRiscv is
  port(
    iBus_cmd_valid : out std_logic;
    iBus_cmd_ready : in std_logic;
    iBus_cmd_payload_pc : out unsigned(31 downto 0);
    iBus_rsp_valid : in std_logic;
    iBus_rsp_payload_error : in std_logic;
    iBus_rsp_payload_inst : in std_logic_vector(31 downto 0);
    timerInterrupt : in std_logic;
    externalInterrupt : in std_logic;
    softwareInterrupt : in std_logic;
    debug_bus_cmd_valid : in std_logic;
    debug_bus_cmd_ready : out std_logic;
    debug_bus_cmd_payload_wr : in std_logic;
    debug_bus_cmd_payload_address : in unsigned(7 downto 0);
    debug_bus_cmd_payload_data : in std_logic_vector(31 downto 0);
    debug_bus_rsp_data : out std_logic_vector(31 downto 0);
    debug_resetOut : out std_logic;
    dBus_cmd_valid : out std_logic;
    dBus_cmd_ready : in std_logic;
    dBus_cmd_payload_wr : out std_logic;
    dBus_cmd_payload_address : out unsigned(31 downto 0);
    dBus_cmd_payload_data : out std_logic_vector(31 downto 0);
    dBus_cmd_payload_size : out unsigned(1 downto 0);
    dBus_rsp_ready : in std_logic;
    dBus_rsp_error : in std_logic;
    dBus_rsp_data : in std_logic_vector(31 downto 0);
    io_mainClk : in std_logic;
    resetCtrl_systemReset : in std_logic;
    resetCtrl_mainClkReset : in std_logic
  );
end VexRiscv;

architecture arch of VexRiscv is
  signal zz_113 : std_logic;
  signal zz_114 : std_logic;
  signal zz_115 : std_logic_vector(31 downto 0);
  signal zz_116 : std_logic_vector(31 downto 0);
  signal zz_117 : unsigned(31 downto 0);
  signal zz_118 : unsigned(1 downto 0);
  signal zz_119 : std_logic;
  signal IBusSimplePlugin_rspJoin_rspBuffer_c_io_push_ready : std_logic;
  signal IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_valid : std_logic;
  signal IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_payload_error : std_logic;
  signal IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_payload_inst : std_logic_vector(31 downto 0);
  signal IBusSimplePlugin_rspJoin_rspBuffer_c_io_occupancy : unsigned(0 downto 0);
  signal zz_120 : std_logic;
  signal zz_121 : std_logic;
  signal zz_122 : std_logic;
  signal zz_123 : std_logic;
  signal zz_124 : std_logic;
  signal zz_125 : std_logic;
  signal zz_126 : std_logic;
  signal zz_127 : std_logic;
  signal zz_128 : std_logic_vector(1 downto 0);
  signal zz_129 : std_logic;
  signal zz_130 : std_logic;
  signal zz_131 : std_logic;
  signal zz_132 : std_logic;
  signal zz_133 : std_logic;
  signal zz_134 : std_logic;
  signal zz_135 : unsigned(5 downto 0);
  signal zz_136 : std_logic;
  signal zz_137 : std_logic;
  signal zz_138 : std_logic;
  signal zz_139 : std_logic;
  signal zz_140 : std_logic_vector(1 downto 0);
  signal zz_141 : std_logic;
  signal zz_142 : std_logic;
  signal zz_143 : std_logic;
  signal zz_144 : std_logic_vector(31 downto 0);
  signal zz_145 : std_logic_vector(31 downto 0);
  signal zz_146 : std_logic;
  signal zz_147 : std_logic_vector(0 downto 0);
  signal zz_148 : std_logic_vector(0 downto 0);
  signal zz_149 : std_logic_vector(0 downto 0);
  signal zz_150 : std_logic_vector(0 downto 0);
  signal zz_151 : std_logic;
  signal zz_152 : std_logic_vector(0 downto 0);
  signal zz_153 : std_logic_vector(19 downto 0);
  signal zz_154 : std_logic_vector(31 downto 0);
  signal zz_155 : std_logic_vector(31 downto 0);
  signal zz_156 : std_logic_vector(31 downto 0);
  signal zz_157 : std_logic_vector(31 downto 0);
  signal zz_158 : std_logic_vector(31 downto 0);
  signal zz_159 : std_logic;
  signal zz_160 : std_logic_vector(1 downto 0);
  signal zz_161 : std_logic_vector(1 downto 0);
  signal zz_162 : std_logic;
  signal zz_163 : std_logic_vector(0 downto 0);
  signal zz_164 : std_logic_vector(16 downto 0);
  signal zz_165 : std_logic_vector(31 downto 0);
  signal zz_166 : std_logic_vector(31 downto 0);
  signal zz_167 : std_logic_vector(31 downto 0);
  signal zz_168 : std_logic_vector(31 downto 0);
  signal zz_169 : std_logic_vector(0 downto 0);
  signal zz_170 : std_logic_vector(3 downto 0);
  signal zz_171 : std_logic_vector(0 downto 0);
  signal zz_172 : std_logic_vector(0 downto 0);
  signal zz_173 : std_logic_vector(1 downto 0);
  signal zz_174 : std_logic_vector(1 downto 0);
  signal zz_175 : std_logic;
  signal zz_176 : std_logic_vector(0 downto 0);
  signal zz_177 : std_logic_vector(13 downto 0);
  signal zz_178 : std_logic_vector(31 downto 0);
  signal zz_179 : std_logic_vector(31 downto 0);
  signal zz_180 : std_logic_vector(31 downto 0);
  signal zz_181 : std_logic_vector(0 downto 0);
  signal zz_182 : std_logic_vector(0 downto 0);
  signal zz_183 : std_logic_vector(31 downto 0);
  signal zz_184 : std_logic_vector(31 downto 0);
  signal zz_185 : std_logic_vector(31 downto 0);
  signal zz_186 : std_logic_vector(31 downto 0);
  signal zz_187 : std_logic_vector(31 downto 0);
  signal zz_188 : std_logic_vector(31 downto 0);
  signal zz_189 : std_logic_vector(0 downto 0);
  signal zz_190 : std_logic_vector(0 downto 0);
  signal zz_191 : std_logic_vector(3 downto 0);
  signal zz_192 : std_logic_vector(3 downto 0);
  signal zz_193 : std_logic;
  signal zz_194 : std_logic_vector(0 downto 0);
  signal zz_195 : std_logic_vector(10 downto 0);
  signal zz_196 : std_logic_vector(31 downto 0);
  signal zz_197 : std_logic_vector(31 downto 0);
  signal zz_198 : std_logic_vector(31 downto 0);
  signal zz_199 : std_logic_vector(31 downto 0);
  signal zz_200 : std_logic_vector(31 downto 0);
  signal zz_201 : std_logic_vector(31 downto 0);
  signal zz_202 : std_logic_vector(31 downto 0);
  signal zz_203 : std_logic_vector(31 downto 0);
  signal zz_204 : std_logic;
  signal zz_205 : std_logic_vector(0 downto 0);
  signal zz_206 : std_logic_vector(1 downto 0);
  signal zz_207 : std_logic_vector(0 downto 0);
  signal zz_208 : std_logic_vector(0 downto 0);
  signal zz_209 : std_logic_vector(1 downto 0);
  signal zz_210 : std_logic_vector(1 downto 0);
  signal zz_211 : std_logic;
  signal zz_212 : std_logic_vector(0 downto 0);
  signal zz_213 : std_logic_vector(8 downto 0);
  signal zz_214 : std_logic_vector(31 downto 0);
  signal zz_215 : std_logic_vector(31 downto 0);
  signal zz_216 : std_logic_vector(31 downto 0);
  signal zz_217 : std_logic;
  signal zz_218 : std_logic_vector(31 downto 0);
  signal zz_219 : std_logic_vector(31 downto 0);
  signal zz_220 : std_logic;
  signal zz_221 : std_logic;
  signal zz_222 : std_logic_vector(2 downto 0);
  signal zz_223 : std_logic_vector(2 downto 0);
  signal zz_224 : std_logic;
  signal zz_225 : std_logic_vector(0 downto 0);
  signal zz_226 : std_logic_vector(6 downto 0);
  signal zz_227 : std_logic_vector(31 downto 0);
  signal zz_228 : std_logic_vector(31 downto 0);
  signal zz_229 : std_logic;
  signal zz_230 : std_logic;
  signal zz_231 : std_logic;
  signal zz_232 : std_logic;
  signal zz_233 : std_logic_vector(0 downto 0);
  signal zz_234 : std_logic_vector(0 downto 0);
  signal zz_235 : std_logic;
  signal zz_236 : std_logic_vector(0 downto 0);
  signal zz_237 : std_logic_vector(3 downto 0);
  signal zz_238 : std_logic_vector(31 downto 0);
  signal zz_239 : std_logic_vector(31 downto 0);
  signal zz_240 : std_logic;
  signal zz_241 : std_logic_vector(0 downto 0);
  signal zz_242 : std_logic_vector(0 downto 0);
  signal zz_243 : std_logic;
  signal zz_244 : std_logic_vector(0 downto 0);
  signal zz_245 : std_logic_vector(0 downto 0);
  signal zz_246 : std_logic_vector(31 downto 0);
  signal zz_247 : std_logic_vector(31 downto 0);
  signal zz_248 : std_logic_vector(31 downto 0);
  signal zz_249 : std_logic_vector(31 downto 0);
  signal zz_250 : std_logic_vector(31 downto 0);
  signal zz_251 : std_logic_vector(31 downto 0);
  signal zz_252 : std_logic_vector(31 downto 0);
  signal zz_253 : std_logic_vector(31 downto 0);

  signal decode_RS1 : std_logic_vector(31 downto 0);
  signal execute_BYPASSABLE_MEMORY_STAGE : std_logic;
  signal decode_BYPASSABLE_MEMORY_STAGE : std_logic;
  signal decode_SRC2_FORCE_ZERO : std_logic;
  signal decode_CSR_READ_OPCODE : std_logic;
  signal decode_IS_CSR : std_logic;
  signal decode_MEMORY_STORE : std_logic;
  signal decode_ALU_BITWISE_CTRL : AluBitwiseCtrlEnum_defaultEncoding_type;
  signal zz_1 : AluBitwiseCtrlEnum_defaultEncoding_type;
  signal zz_2 : AluBitwiseCtrlEnum_defaultEncoding_type;
  signal zz_3 : AluBitwiseCtrlEnum_defaultEncoding_type;
  signal decode_ALU_CTRL : AluCtrlEnum_defaultEncoding_type;
  signal zz_4 : AluCtrlEnum_defaultEncoding_type;
  signal zz_5 : AluCtrlEnum_defaultEncoding_type;
  signal zz_6 : AluCtrlEnum_defaultEncoding_type;
  signal decode_DO_EBREAK : std_logic;
  signal decode_SRC_LESS_UNSIGNED : std_logic;
  signal memory_PC : unsigned(31 downto 0);
  signal decode_SRC2 : std_logic_vector(31 downto 0);
  signal memory_MEMORY_ADDRESS_LOW : unsigned(1 downto 0);
  signal execute_MEMORY_ADDRESS_LOW : unsigned(1 downto 0);
  signal execute_BRANCH_DO : std_logic;
  signal decode_SRC1 : std_logic_vector(31 downto 0);
  signal memory_MEMORY_READ_DATA : std_logic_vector(31 downto 0);
  signal decode_RS2 : std_logic_vector(31 downto 0);
  signal writeBack_REGFILE_WRITE_DATA : std_logic_vector(31 downto 0);
  signal execute_REGFILE_WRITE_DATA : std_logic_vector(31 downto 0);
  signal zz_7 : EnvCtrlEnum_defaultEncoding_type;
  signal zz_8 : EnvCtrlEnum_defaultEncoding_type;
  signal zz_9 : EnvCtrlEnum_defaultEncoding_type;
  signal zz_10 : EnvCtrlEnum_defaultEncoding_type;
  signal decode_ENV_CTRL : EnvCtrlEnum_defaultEncoding_type;
  signal zz_11 : EnvCtrlEnum_defaultEncoding_type;
  signal zz_12 : EnvCtrlEnum_defaultEncoding_type;
  signal zz_13 : EnvCtrlEnum_defaultEncoding_type;
  signal decode_SHIFT_CTRL : ShiftCtrlEnum_defaultEncoding_type;
  signal zz_14 : ShiftCtrlEnum_defaultEncoding_type;
  signal zz_15 : ShiftCtrlEnum_defaultEncoding_type;
  signal zz_16 : ShiftCtrlEnum_defaultEncoding_type;
  signal decode_BYPASSABLE_EXECUTE_STAGE : std_logic;
  signal decode_CSR_WRITE_OPCODE : std_logic;
  signal decode_MEMORY_ENABLE : std_logic;
  signal decode_BRANCH_CTRL : BranchCtrlEnum_defaultEncoding_type;
  signal zz_17 : BranchCtrlEnum_defaultEncoding_type;
  signal zz_18 : BranchCtrlEnum_defaultEncoding_type;
  signal zz_19 : BranchCtrlEnum_defaultEncoding_type;
  signal execute_BRANCH_CALC : unsigned(31 downto 0);
  signal writeBack_FORMAL_PC_NEXT : unsigned(31 downto 0);
  signal memory_FORMAL_PC_NEXT : unsigned(31 downto 0);
  signal execute_FORMAL_PC_NEXT : unsigned(31 downto 0);
  signal decode_FORMAL_PC_NEXT : unsigned(31 downto 0);
  signal execute_DO_EBREAK : std_logic;
  signal decode_IS_EBREAK : std_logic;
  signal memory_BRANCH_CALC : unsigned(31 downto 0);
  signal memory_BRANCH_DO : std_logic;
  signal execute_PC : unsigned(31 downto 0);
  signal execute_RS1 : std_logic_vector(31 downto 0);
  signal execute_BRANCH_CTRL : BranchCtrlEnum_defaultEncoding_type;
  signal zz_20 : BranchCtrlEnum_defaultEncoding_type;
  signal decode_RS2_USE : std_logic;
  signal decode_RS1_USE : std_logic;
  signal execute_REGFILE_WRITE_VALID : std_logic;
  signal execute_BYPASSABLE_EXECUTE_STAGE : std_logic;
  signal memory_REGFILE_WRITE_VALID : std_logic;
  signal memory_INSTRUCTION : std_logic_vector(31 downto 0);
  signal memory_BYPASSABLE_MEMORY_STAGE : std_logic;
  signal writeBack_REGFILE_WRITE_VALID : std_logic;
  signal memory_REGFILE_WRITE_DATA : std_logic_vector(31 downto 0);
  signal execute_SHIFT_CTRL : ShiftCtrlEnum_defaultEncoding_type;
  signal zz_21 : ShiftCtrlEnum_defaultEncoding_type;
  signal execute_SRC_LESS_UNSIGNED : std_logic;
  signal execute_SRC2_FORCE_ZERO : std_logic;
  signal execute_SRC_USE_SUB_LESS : std_logic;
  signal zz_22 : unsigned(31 downto 0);
  signal zz_23 : std_logic_vector(31 downto 0);
  signal decode_SRC2_CTRL : Src2CtrlEnum_defaultEncoding_type;
  signal zz_24 : Src2CtrlEnum_defaultEncoding_type;
  signal zz_25 : std_logic_vector(31 downto 0);
  signal decode_SRC1_CTRL : Src1CtrlEnum_defaultEncoding_type;
  signal zz_26 : Src1CtrlEnum_defaultEncoding_type;
  signal decode_SRC_USE_SUB_LESS : std_logic;
  signal decode_SRC_ADD_ZERO : std_logic;
  signal execute_SRC_ADD_SUB : std_logic_vector(31 downto 0);
  signal execute_SRC_LESS : std_logic;
  signal execute_ALU_CTRL : AluCtrlEnum_defaultEncoding_type;
  signal zz_27 : AluCtrlEnum_defaultEncoding_type;
  signal execute_SRC2 : std_logic_vector(31 downto 0);
  signal execute_ALU_BITWISE_CTRL : AluBitwiseCtrlEnum_defaultEncoding_type;
  signal zz_28 : AluBitwiseCtrlEnum_defaultEncoding_type;
  signal zz_29 : std_logic_vector(31 downto 0);
  signal zz_30 : std_logic;
  signal zz_31 : std_logic;
  signal decode_INSTRUCTION_ANTICIPATED : std_logic_vector(31 downto 0);
  signal decode_REGFILE_WRITE_VALID : std_logic;
  signal zz_32 : Src2CtrlEnum_defaultEncoding_type;
  signal zz_33 : AluBitwiseCtrlEnum_defaultEncoding_type;
  signal zz_34 : AluCtrlEnum_defaultEncoding_type;
  signal zz_35 : Src1CtrlEnum_defaultEncoding_type;
  signal zz_36 : BranchCtrlEnum_defaultEncoding_type;
  signal zz_37 : EnvCtrlEnum_defaultEncoding_type;
  signal zz_38 : ShiftCtrlEnum_defaultEncoding_type;
  signal zz_39 : std_logic_vector(31 downto 0);
  signal execute_SRC1 : std_logic_vector(31 downto 0);
  signal execute_CSR_READ_OPCODE : std_logic;
  signal execute_CSR_WRITE_OPCODE : std_logic;
  signal execute_IS_CSR : std_logic;
  signal memory_ENV_CTRL : EnvCtrlEnum_defaultEncoding_type;
  signal zz_40 : EnvCtrlEnum_defaultEncoding_type;
  signal execute_ENV_CTRL : EnvCtrlEnum_defaultEncoding_type;
  signal zz_41 : EnvCtrlEnum_defaultEncoding_type;
  signal writeBack_ENV_CTRL : EnvCtrlEnum_defaultEncoding_type;
  signal zz_42 : EnvCtrlEnum_defaultEncoding_type;
  signal writeBack_MEMORY_STORE : std_logic;
  signal zz_43 : std_logic_vector(31 downto 0);
  signal writeBack_MEMORY_ENABLE : std_logic;
  signal writeBack_MEMORY_ADDRESS_LOW : unsigned(1 downto 0);
  signal writeBack_MEMORY_READ_DATA : std_logic_vector(31 downto 0);
  signal memory_MEMORY_STORE : std_logic;
  signal memory_MEMORY_ENABLE : std_logic;
  signal execute_SRC_ADD : std_logic_vector(31 downto 0);
  signal execute_RS2 : std_logic_vector(31 downto 0);
  signal execute_INSTRUCTION : std_logic_vector(31 downto 0);
  signal execute_MEMORY_STORE : std_logic;
  signal execute_MEMORY_ENABLE : std_logic;
  signal execute_ALIGNEMENT_FAULT : std_logic;
  signal zz_44 : unsigned(31 downto 0);
  signal decode_PC : unsigned(31 downto 0);
  signal decode_INSTRUCTION : std_logic_vector(31 downto 0);
  signal writeBack_PC : unsigned(31 downto 0);
  signal writeBack_INSTRUCTION : std_logic_vector(31 downto 0);
  signal decode_arbitration_haltItself : std_logic;
  signal decode_arbitration_haltByOther : std_logic;
  signal decode_arbitration_removeIt : std_logic;
  signal decode_arbitration_flushIt : std_logic;
  signal decode_arbitration_flushNext : std_logic;
  signal decode_arbitration_isValid : std_logic;
  signal decode_arbitration_isStuck : std_logic;
  signal decode_arbitration_isStuckByOthers : std_logic;
  signal decode_arbitration_isFlushed : std_logic;
  signal decode_arbitration_isMoving : std_logic;
  signal decode_arbitration_isFiring : std_logic;
  signal execute_arbitration_haltItself : std_logic;
  signal execute_arbitration_haltByOther : std_logic;
  signal execute_arbitration_removeIt : std_logic;
  signal execute_arbitration_flushIt : std_logic;
  signal execute_arbitration_flushNext : std_logic;
  signal execute_arbitration_isValid : std_logic;
  signal execute_arbitration_isStuck : std_logic;
  signal execute_arbitration_isStuckByOthers : std_logic;
  signal execute_arbitration_isFlushed : std_logic;
  signal execute_arbitration_isMoving : std_logic;
  signal execute_arbitration_isFiring : std_logic;
  signal memory_arbitration_haltItself : std_logic;
  signal memory_arbitration_haltByOther : std_logic;
  signal memory_arbitration_removeIt : std_logic;
  signal memory_arbitration_flushIt : std_logic;
  signal memory_arbitration_flushNext : std_logic;
  signal memory_arbitration_isValid : std_logic;
  signal memory_arbitration_isStuck : std_logic;
  signal memory_arbitration_isStuckByOthers : std_logic;
  signal memory_arbitration_isFlushed : std_logic;
  signal memory_arbitration_isMoving : std_logic;
  signal memory_arbitration_isFiring : std_logic;
  signal writeBack_arbitration_haltItself : std_logic;
  signal writeBack_arbitration_haltByOther : std_logic;
  signal writeBack_arbitration_removeIt : std_logic;
  signal writeBack_arbitration_flushIt : std_logic;
  signal writeBack_arbitration_flushNext : std_logic;
  signal writeBack_arbitration_isValid : std_logic;
  signal writeBack_arbitration_isStuck : std_logic;
  signal writeBack_arbitration_isStuckByOthers : std_logic;
  signal writeBack_arbitration_isFlushed : std_logic;
  signal writeBack_arbitration_isMoving : std_logic;
  signal writeBack_arbitration_isFiring : std_logic;
  signal lastStageInstruction : std_logic_vector(31 downto 0);
  signal lastStagePc : unsigned(31 downto 0);
  signal lastStageIsValid : std_logic;
  signal lastStageIsFiring : std_logic;
  signal IBusSimplePlugin_fetcherHalt : std_logic;
  signal IBusSimplePlugin_incomingInstruction : std_logic;
  signal IBusSimplePlugin_pcValids_0 : std_logic;
  signal IBusSimplePlugin_pcValids_1 : std_logic;
  signal IBusSimplePlugin_pcValids_2 : std_logic;
  signal IBusSimplePlugin_pcValids_3 : std_logic;
  signal CsrPlugin_inWfi : std_logic;
  signal CsrPlugin_thirdPartyWake : std_logic;
  signal CsrPlugin_jumpInterface_valid : std_logic;
  signal CsrPlugin_jumpInterface_payload : unsigned(31 downto 0);
  signal CsrPlugin_exceptionPendings_0 : std_logic;
  signal CsrPlugin_exceptionPendings_1 : std_logic;
  signal CsrPlugin_exceptionPendings_2 : std_logic;
  signal CsrPlugin_exceptionPendings_3 : std_logic;
  signal contextSwitching : std_logic;
  signal CsrPlugin_privilege : unsigned(1 downto 0);
  signal CsrPlugin_forceMachineWire : std_logic;
  signal CsrPlugin_allowInterrupts : std_logic;
  signal CsrPlugin_allowException : std_logic;
  signal BranchPlugin_jumpInterface_valid : std_logic;
  signal BranchPlugin_jumpInterface_payload : unsigned(31 downto 0);
  signal IBusSimplePlugin_injectionPort_valid : std_logic;
  signal IBusSimplePlugin_injectionPort_ready : std_logic;
  signal IBusSimplePlugin_injectionPort_payload : std_logic_vector(31 downto 0);
  signal IBusSimplePlugin_externalFlush : std_logic;
  signal IBusSimplePlugin_jump_pcLoad_valid : std_logic;
  signal IBusSimplePlugin_jump_pcLoad_payload : unsigned(31 downto 0);
  signal zz_45 : unsigned(1 downto 0);
  signal IBusSimplePlugin_fetchPc_output_valid : std_logic;
  signal IBusSimplePlugin_fetchPc_output_ready : std_logic;
  signal IBusSimplePlugin_fetchPc_output_payload : unsigned(31 downto 0);
  signal IBusSimplePlugin_fetchPc_pcReg : unsigned(31 downto 0);
  signal IBusSimplePlugin_fetchPc_correction : std_logic;
  signal IBusSimplePlugin_fetchPc_correctionReg : std_logic;
  signal IBusSimplePlugin_fetchPc_corrected : std_logic;
  signal IBusSimplePlugin_fetchPc_pcRegPropagate : std_logic;
  signal IBusSimplePlugin_fetchPc_booted : std_logic;
  signal IBusSimplePlugin_fetchPc_inc : std_logic;
  signal IBusSimplePlugin_fetchPc_pc : unsigned(31 downto 0);
  signal IBusSimplePlugin_fetchPc_flushed : std_logic;
  signal IBusSimplePlugin_iBusRsp_redoFetch : std_logic;
  signal IBusSimplePlugin_iBusRsp_stages_0_input_valid : std_logic;
  signal IBusSimplePlugin_iBusRsp_stages_0_input_ready : std_logic;
  signal IBusSimplePlugin_iBusRsp_stages_0_input_payload : unsigned(31 downto 0);
  signal IBusSimplePlugin_iBusRsp_stages_0_output_valid : std_logic;
  signal IBusSimplePlugin_iBusRsp_stages_0_output_ready : std_logic;
  signal IBusSimplePlugin_iBusRsp_stages_0_output_payload : unsigned(31 downto 0);
  signal IBusSimplePlugin_iBusRsp_stages_0_halt : std_logic;
  signal IBusSimplePlugin_iBusRsp_stages_1_input_valid : std_logic;
  signal IBusSimplePlugin_iBusRsp_stages_1_input_ready : std_logic;
  signal IBusSimplePlugin_iBusRsp_stages_1_input_payload : unsigned(31 downto 0);
  signal IBusSimplePlugin_iBusRsp_stages_1_output_valid : std_logic;
  signal IBusSimplePlugin_iBusRsp_stages_1_output_ready : std_logic;
  signal IBusSimplePlugin_iBusRsp_stages_1_output_payload : unsigned(31 downto 0);
  signal IBusSimplePlugin_iBusRsp_stages_1_halt : std_logic;
  signal IBusSimplePlugin_iBusRsp_stages_2_input_valid : std_logic;
  signal IBusSimplePlugin_iBusRsp_stages_2_input_ready : std_logic;
  signal IBusSimplePlugin_iBusRsp_stages_2_input_payload : unsigned(31 downto 0);
  signal IBusSimplePlugin_iBusRsp_stages_2_output_valid : std_logic;
  signal IBusSimplePlugin_iBusRsp_stages_2_output_ready : std_logic;
  signal IBusSimplePlugin_iBusRsp_stages_2_output_payload : unsigned(31 downto 0);
  signal IBusSimplePlugin_iBusRsp_stages_2_halt : std_logic;
  signal zz_46 : std_logic;
  signal zz_47 : std_logic;
  signal zz_48 : std_logic;
  signal IBusSimplePlugin_iBusRsp_flush : std_logic;
  signal zz_49 : std_logic;
  signal zz_50 : std_logic;
  signal zz_51 : std_logic;
  signal zz_52 : std_logic;
  signal zz_53 : std_logic;
  signal zz_54 : unsigned(31 downto 0);
  signal IBusSimplePlugin_iBusRsp_readyForError : std_logic;
  signal IBusSimplePlugin_iBusRsp_output_valid : std_logic;
  signal IBusSimplePlugin_iBusRsp_output_ready : std_logic;
  signal IBusSimplePlugin_iBusRsp_output_payload_pc : unsigned(31 downto 0);
  signal IBusSimplePlugin_iBusRsp_output_payload_rsp_error : std_logic;
  signal IBusSimplePlugin_iBusRsp_output_payload_rsp_inst : std_logic_vector(31 downto 0);
  signal IBusSimplePlugin_iBusRsp_output_payload_isRvc : std_logic;
  signal IBusSimplePlugin_injector_decodeInput_valid : std_logic;
  signal IBusSimplePlugin_injector_decodeInput_ready : std_logic;
  signal IBusSimplePlugin_injector_decodeInput_payload_pc : unsigned(31 downto 0);
  signal IBusSimplePlugin_injector_decodeInput_payload_rsp_error : std_logic;
  signal IBusSimplePlugin_injector_decodeInput_payload_rsp_inst : std_logic_vector(31 downto 0);
  signal IBusSimplePlugin_injector_decodeInput_payload_isRvc : std_logic;
  signal zz_55 : std_logic;
  signal zz_56 : unsigned(31 downto 0);
  signal zz_57 : std_logic;
  signal zz_58 : std_logic_vector(31 downto 0);
  signal zz_59 : std_logic;
  signal IBusSimplePlugin_injector_nextPcCalc_valids_0 : std_logic;
  signal IBusSimplePlugin_injector_nextPcCalc_valids_1 : std_logic;
  signal IBusSimplePlugin_injector_nextPcCalc_valids_2 : std_logic;
  signal IBusSimplePlugin_injector_nextPcCalc_valids_3 : std_logic;
  signal IBusSimplePlugin_injector_nextPcCalc_valids_4 : std_logic;
  signal IBusSimplePlugin_injector_nextPcCalc_valids_5 : std_logic;
  signal IBusSimplePlugin_injector_formal_rawInDecode : std_logic_vector(31 downto 0);
  signal IBusSimplePlugin_cmd_valid : std_logic;
  signal IBusSimplePlugin_cmd_ready : std_logic;
  signal IBusSimplePlugin_cmd_payload_pc : unsigned(31 downto 0);
  signal IBusSimplePlugin_pending_inc : std_logic;
  signal IBusSimplePlugin_pending_dec : std_logic;
  signal IBusSimplePlugin_pending_value : unsigned(2 downto 0);
  signal IBusSimplePlugin_pending_next : unsigned(2 downto 0);
  signal IBusSimplePlugin_cmdFork_canEmit : std_logic;
  signal IBusSimplePlugin_rspJoin_rspBuffer_output_valid : std_logic;
  signal IBusSimplePlugin_rspJoin_rspBuffer_output_ready : std_logic;
  signal IBusSimplePlugin_rspJoin_rspBuffer_output_payload_error : std_logic;
  signal IBusSimplePlugin_rspJoin_rspBuffer_output_payload_inst : std_logic_vector(31 downto 0);
  signal IBusSimplePlugin_rspJoin_rspBuffer_discardCounter : unsigned(2 downto 0);
  signal IBusSimplePlugin_rspJoin_rspBuffer_flush : std_logic;
  signal IBusSimplePlugin_rspJoin_fetchRsp_pc : unsigned(31 downto 0);
  signal IBusSimplePlugin_rspJoin_fetchRsp_rsp_error : std_logic;
  signal IBusSimplePlugin_rspJoin_fetchRsp_rsp_inst : std_logic_vector(31 downto 0);
  signal IBusSimplePlugin_rspJoin_fetchRsp_isRvc : std_logic;
  signal IBusSimplePlugin_rspJoin_join_valid : std_logic;
  signal IBusSimplePlugin_rspJoin_join_ready : std_logic;
  signal IBusSimplePlugin_rspJoin_join_payload_pc : unsigned(31 downto 0);
  signal IBusSimplePlugin_rspJoin_join_payload_rsp_error : std_logic;
  signal IBusSimplePlugin_rspJoin_join_payload_rsp_inst : std_logic_vector(31 downto 0);
  signal IBusSimplePlugin_rspJoin_join_payload_isRvc : std_logic;
  signal IBusSimplePlugin_rspJoin_exceptionDetected : std_logic;
  signal zz_60 : std_logic;
  signal zz_61 : std_logic;
  signal execute_DBusSimplePlugin_skipCmd : std_logic;
  signal zz_62 : std_logic_vector(31 downto 0);
  signal zz_63 : std_logic_vector(3 downto 0);
  signal execute_DBusSimplePlugin_formalMask : std_logic_vector(3 downto 0);
  signal writeBack_DBusSimplePlugin_rspShifted : std_logic_vector(31 downto 0);
  signal zz_64 : std_logic;
  signal zz_65 : std_logic_vector(31 downto 0);
  signal zz_66 : std_logic;
  signal zz_67 : std_logic_vector(31 downto 0);
  signal writeBack_DBusSimplePlugin_rspFormated : std_logic_vector(31 downto 0);
  signal CsrPlugin_misa_base : unsigned(1 downto 0);
  signal CsrPlugin_misa_extensions : std_logic_vector(25 downto 0);
  signal CsrPlugin_mtvec_mode : std_logic_vector(1 downto 0);
  signal CsrPlugin_mtvec_base : unsigned(29 downto 0);
  signal CsrPlugin_mepc : unsigned(31 downto 0);
  signal CsrPlugin_mstatus_MIE : std_logic;
  signal CsrPlugin_mstatus_MPIE : std_logic;
  signal CsrPlugin_mstatus_MPP : unsigned(1 downto 0);
  signal CsrPlugin_mip_MEIP : std_logic;
  signal CsrPlugin_mip_MTIP : std_logic;
  signal CsrPlugin_mip_MSIP : std_logic;
  signal CsrPlugin_mie_MEIE : std_logic;
  signal CsrPlugin_mie_MTIE : std_logic;
  signal CsrPlugin_mie_MSIE : std_logic;
  signal CsrPlugin_mcause_interrupt : std_logic;
  signal CsrPlugin_mcause_exceptionCode : unsigned(3 downto 0);
  signal CsrPlugin_mtval : unsigned(31 downto 0);
  signal CsrPlugin_mcycle : unsigned(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
  signal CsrPlugin_minstret : unsigned(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
  signal zz_68 : std_logic;
  signal zz_69 : std_logic;
  signal zz_70 : std_logic;
  signal CsrPlugin_interrupt_valid : std_logic;
  signal CsrPlugin_interrupt_code : unsigned(3 downto 0);
  signal CsrPlugin_interrupt_targetPrivilege : unsigned(1 downto 0);
  signal CsrPlugin_exception : std_logic;
  signal CsrPlugin_lastStageWasWfi : std_logic;
  signal CsrPlugin_pipelineLiberator_pcValids_0 : std_logic;
  signal CsrPlugin_pipelineLiberator_pcValids_1 : std_logic;
  signal CsrPlugin_pipelineLiberator_pcValids_2 : std_logic;
  signal CsrPlugin_pipelineLiberator_active : std_logic;
  signal CsrPlugin_pipelineLiberator_done : std_logic;
  signal CsrPlugin_interruptJump : std_logic;
  signal CsrPlugin_hadException : std_logic;
  signal CsrPlugin_targetPrivilege : unsigned(1 downto 0);
  signal CsrPlugin_trapCause : unsigned(3 downto 0);
  signal CsrPlugin_xtvec_mode : std_logic_vector(1 downto 0);
  signal CsrPlugin_xtvec_base : unsigned(29 downto 0);
  signal execute_CsrPlugin_wfiWake : std_logic;
  signal execute_CsrPlugin_blockedBySideEffects : std_logic;
  signal execute_CsrPlugin_illegalAccess : std_logic;
  signal execute_CsrPlugin_illegalInstruction : std_logic;
  signal execute_CsrPlugin_readData : std_logic_vector(31 downto 0);
  signal execute_CsrPlugin_writeInstruction : std_logic;
  signal execute_CsrPlugin_readInstruction : std_logic;
  signal execute_CsrPlugin_writeEnable : std_logic;
  signal execute_CsrPlugin_readEnable : std_logic;
  signal execute_CsrPlugin_readToWriteData : std_logic_vector(31 downto 0);
  signal execute_CsrPlugin_writeData : std_logic_vector(31 downto 0);
  signal execute_CsrPlugin_csrAddress : std_logic_vector(11 downto 0);
  signal zz_71 : std_logic_vector(25 downto 0);
  signal zz_72 : std_logic;
  signal zz_73 : std_logic;
  signal zz_74 : std_logic;
  signal zz_75 : std_logic;
  signal zz_76 : std_logic;
  signal zz_77 : ShiftCtrlEnum_defaultEncoding_type;
  signal zz_78 : EnvCtrlEnum_defaultEncoding_type;
  signal zz_79 : BranchCtrlEnum_defaultEncoding_type;
  signal zz_80 : Src1CtrlEnum_defaultEncoding_type;
  signal zz_81 : AluCtrlEnum_defaultEncoding_type;
  signal zz_82 : AluBitwiseCtrlEnum_defaultEncoding_type;
  signal zz_83 : Src2CtrlEnum_defaultEncoding_type;
  signal decode_RegFilePlugin_regFileReadAddress1 : unsigned(4 downto 0);
  signal decode_RegFilePlugin_regFileReadAddress2 : unsigned(4 downto 0);
  signal decode_RegFilePlugin_rs1Data : std_logic_vector(31 downto 0);
  signal decode_RegFilePlugin_rs2Data : std_logic_vector(31 downto 0);
  signal lastStageRegFileWrite_valid : std_logic;
  signal lastStageRegFileWrite_payload_address : unsigned(4 downto 0);
  signal lastStageRegFileWrite_payload_data : std_logic_vector(31 downto 0);
  signal zz_84 : std_logic;
  signal execute_IntAluPlugin_bitwise : std_logic_vector(31 downto 0);
  signal zz_85 : std_logic_vector(31 downto 0);
  signal zz_86 : std_logic_vector(31 downto 0);
  signal zz_87 : std_logic;
  signal zz_88 : std_logic_vector(19 downto 0);
  signal zz_89 : std_logic;
  signal zz_90 : std_logic_vector(19 downto 0);
  signal zz_91 : std_logic_vector(31 downto 0);
  signal execute_SrcPlugin_addSub : std_logic_vector(31 downto 0);
  signal execute_SrcPlugin_less : std_logic;
  signal execute_LightShifterPlugin_isActive : std_logic;
  signal execute_LightShifterPlugin_isShift : std_logic;
  signal execute_LightShifterPlugin_amplitudeReg : unsigned(4 downto 0);
  signal execute_LightShifterPlugin_amplitude : unsigned(4 downto 0);
  signal execute_LightShifterPlugin_shiftInput : std_logic_vector(31 downto 0);
  signal execute_LightShifterPlugin_done : std_logic;
  signal zz_92 : std_logic_vector(31 downto 0);
  signal zz_93 : std_logic;
  signal zz_94 : std_logic;
  signal zz_95 : std_logic;
  signal zz_96 : std_logic_vector(4 downto 0);
  signal execute_BranchPlugin_eq : std_logic;
  signal zz_97 : std_logic_vector(2 downto 0);
  signal zz_98 : std_logic;
  signal zz_99 : std_logic;
  signal execute_BranchPlugin_branch_src1 : unsigned(31 downto 0);
  signal zz_100 : std_logic;
  signal zz_101 : std_logic_vector(10 downto 0);
  signal zz_102 : std_logic;
  signal zz_103 : std_logic_vector(19 downto 0);
  signal zz_104 : std_logic;
  signal zz_105 : std_logic_vector(18 downto 0);
  signal zz_106 : std_logic_vector(31 downto 0);
  signal execute_BranchPlugin_branch_src2 : unsigned(31 downto 0);
  signal execute_BranchPlugin_branchAdder : unsigned(31 downto 0);
  signal DebugPlugin_firstCycle : std_logic;
  signal DebugPlugin_secondCycle : std_logic;
  signal DebugPlugin_resetIt : std_logic;
  signal DebugPlugin_haltIt : std_logic;
  signal DebugPlugin_stepIt : std_logic;
  signal DebugPlugin_isPipBusy : std_logic;
  signal DebugPlugin_godmode : std_logic;
  signal DebugPlugin_haltedByBreak : std_logic;
  signal DebugPlugin_busReadDataReg : std_logic_vector(31 downto 0);
  signal zz_107 : std_logic;
  signal DebugPlugin_resetIt_regNext : std_logic;
  signal decode_to_execute_FORMAL_PC_NEXT : unsigned(31 downto 0);
  signal execute_to_memory_FORMAL_PC_NEXT : unsigned(31 downto 0);
  signal memory_to_writeBack_FORMAL_PC_NEXT : unsigned(31 downto 0);
  signal execute_to_memory_BRANCH_CALC : unsigned(31 downto 0);
  signal decode_to_execute_BRANCH_CTRL : BranchCtrlEnum_defaultEncoding_type;
  signal decode_to_execute_MEMORY_ENABLE : std_logic;
  signal execute_to_memory_MEMORY_ENABLE : std_logic;
  signal memory_to_writeBack_MEMORY_ENABLE : std_logic;
  signal decode_to_execute_CSR_WRITE_OPCODE : std_logic;
  signal decode_to_execute_BYPASSABLE_EXECUTE_STAGE : std_logic;
  signal decode_to_execute_SHIFT_CTRL : ShiftCtrlEnum_defaultEncoding_type;
  signal decode_to_execute_SRC_USE_SUB_LESS : std_logic;
  signal decode_to_execute_REGFILE_WRITE_VALID : std_logic;
  signal execute_to_memory_REGFILE_WRITE_VALID : std_logic;
  signal memory_to_writeBack_REGFILE_WRITE_VALID : std_logic;
  signal decode_to_execute_ENV_CTRL : EnvCtrlEnum_defaultEncoding_type;
  signal execute_to_memory_ENV_CTRL : EnvCtrlEnum_defaultEncoding_type;
  signal memory_to_writeBack_ENV_CTRL : EnvCtrlEnum_defaultEncoding_type;
  signal execute_to_memory_REGFILE_WRITE_DATA : std_logic_vector(31 downto 0);
  signal memory_to_writeBack_REGFILE_WRITE_DATA : std_logic_vector(31 downto 0);
  signal decode_to_execute_RS2 : std_logic_vector(31 downto 0);
  signal memory_to_writeBack_MEMORY_READ_DATA : std_logic_vector(31 downto 0);
  signal decode_to_execute_SRC1 : std_logic_vector(31 downto 0);
  signal execute_to_memory_BRANCH_DO : std_logic;
  signal execute_to_memory_MEMORY_ADDRESS_LOW : unsigned(1 downto 0);
  signal memory_to_writeBack_MEMORY_ADDRESS_LOW : unsigned(1 downto 0);
  signal decode_to_execute_SRC2 : std_logic_vector(31 downto 0);
  signal decode_to_execute_INSTRUCTION : std_logic_vector(31 downto 0);
  signal execute_to_memory_INSTRUCTION : std_logic_vector(31 downto 0);
  signal memory_to_writeBack_INSTRUCTION : std_logic_vector(31 downto 0);
  signal decode_to_execute_PC : unsigned(31 downto 0);
  signal execute_to_memory_PC : unsigned(31 downto 0);
  signal memory_to_writeBack_PC : unsigned(31 downto 0);
  signal decode_to_execute_SRC_LESS_UNSIGNED : std_logic;
  signal decode_to_execute_DO_EBREAK : std_logic;
  signal decode_to_execute_ALU_CTRL : AluCtrlEnum_defaultEncoding_type;
  signal decode_to_execute_ALU_BITWISE_CTRL : AluBitwiseCtrlEnum_defaultEncoding_type;
  signal decode_to_execute_MEMORY_STORE : std_logic;
  signal execute_to_memory_MEMORY_STORE : std_logic;
  signal memory_to_writeBack_MEMORY_STORE : std_logic;
  signal decode_to_execute_IS_CSR : std_logic;
  signal decode_to_execute_CSR_READ_OPCODE : std_logic;
  signal decode_to_execute_SRC2_FORCE_ZERO : std_logic;
  signal decode_to_execute_BYPASSABLE_MEMORY_STAGE : std_logic;
  signal execute_to_memory_BYPASSABLE_MEMORY_STAGE : std_logic;
  signal decode_to_execute_RS1 : std_logic_vector(31 downto 0);
  signal zz_108 : unsigned(2 downto 0);
  signal execute_CsrPlugin_csr_768 : std_logic;
  signal execute_CsrPlugin_csr_836 : std_logic;
  signal execute_CsrPlugin_csr_772 : std_logic;
  signal execute_CsrPlugin_csr_834 : std_logic;
  signal zz_109 : std_logic_vector(31 downto 0);
  signal zz_110 : std_logic_vector(31 downto 0);
  signal zz_111 : std_logic_vector(31 downto 0);
  signal zz_112 : std_logic_vector(31 downto 0);
  type RegFilePlugin_regFile_type is array (0 to 31) of std_logic_vector(31 downto 0);
  signal RegFilePlugin_regFile : RegFilePlugin_regFile_type;
begin
  dBus_cmd_payload_address <= zz_117;
  dBus_cmd_payload_size <= zz_118;
  debug_bus_cmd_ready <= zz_119;
  zz_120 <= (execute_arbitration_isValid and execute_IS_CSR);
  zz_121 <= ((execute_arbitration_isValid and execute_LightShifterPlugin_isShift) and pkg_toStdLogic(pkg_extract(execute_SRC2,4,0) /= pkg_stdLogicVector("00000")));
  zz_122 <= (not execute_arbitration_isStuckByOthers);
  zz_123 <= (execute_arbitration_isValid and execute_DO_EBREAK);
  zz_124 <= pkg_toStdLogic(pkg_toStdLogic(pkg_cat(pkg_toStdLogicVector(writeBack_arbitration_isValid),pkg_toStdLogicVector(memory_arbitration_isValid)) /= pkg_stdLogicVector("00")) = pkg_toStdLogic(false));
  zz_125 <= (CsrPlugin_hadException or CsrPlugin_interruptJump);
  zz_126 <= (writeBack_arbitration_isValid and pkg_toStdLogic(writeBack_ENV_CTRL = EnvCtrlEnum_defaultEncoding_XRET));
  zz_127 <= (DebugPlugin_stepIt and IBusSimplePlugin_incomingInstruction);
  zz_128 <= pkg_extract(writeBack_INSTRUCTION,29,28);
  zz_129 <= (writeBack_arbitration_isValid and writeBack_REGFILE_WRITE_VALID);
  zz_130 <= (pkg_toStdLogic(true) or (not pkg_toStdLogic(true)));
  zz_131 <= (memory_arbitration_isValid and memory_REGFILE_WRITE_VALID);
  zz_132 <= (pkg_toStdLogic(true) or (not memory_BYPASSABLE_MEMORY_STAGE));
  zz_133 <= (execute_arbitration_isValid and execute_REGFILE_WRITE_VALID);
  zz_134 <= (pkg_toStdLogic(true) or (not execute_BYPASSABLE_EXECUTE_STAGE));
  zz_135 <= pkg_extract(debug_bus_cmd_payload_address,7,2);
  zz_136 <= (CsrPlugin_mstatus_MIE or pkg_toStdLogic(CsrPlugin_privilege < pkg_unsigned("11")));
  zz_137 <= ((zz_68 and pkg_toStdLogic(true)) and (not pkg_toStdLogic(false)));
  zz_138 <= ((zz_69 and pkg_toStdLogic(true)) and (not pkg_toStdLogic(false)));
  zz_139 <= ((zz_70 and pkg_toStdLogic(true)) and (not pkg_toStdLogic(false)));
  zz_140 <= pkg_extract(writeBack_INSTRUCTION,13,12);
  zz_141 <= pkg_extract(execute_INSTRUCTION,13);
  zz_142 <= pkg_toStdLogic(true);
  zz_143 <= pkg_toStdLogic(true);
  zz_144 <= (decode_INSTRUCTION and pkg_stdLogicVector("00000000000000000000000001110000"));
  zz_145 <= pkg_stdLogicVector("00000000000000000000000000100000");
  zz_146 <= pkg_toStdLogic((decode_INSTRUCTION and pkg_stdLogicVector("00000000000000000000000000100000")) = pkg_stdLogicVector("00000000000000000000000000000000"));
  zz_147 <= pkg_toStdLogicVector(pkg_toStdLogic((decode_INSTRUCTION and zz_154) = pkg_stdLogicVector("00000000000000000001000001010000")));
  zz_148 <= pkg_toStdLogicVector(pkg_toStdLogic((decode_INSTRUCTION and zz_155) = pkg_stdLogicVector("00000000000000000010000001010000")));
  zz_149 <= pkg_toStdLogicVector(pkg_toStdLogic((decode_INSTRUCTION and zz_156) = pkg_stdLogicVector("00000000000000000000000000000000")));
  zz_150 <= pkg_stdLogicVector("0");
  zz_151 <= pkg_toStdLogic(pkg_toStdLogicVector(pkg_toStdLogic(zz_157 = zz_158)) /= pkg_stdLogicVector("0"));
  zz_152 <= pkg_toStdLogicVector(pkg_toStdLogic(pkg_toStdLogicVector(zz_159) /= pkg_stdLogicVector("0")));
  zz_153 <= pkg_cat(pkg_toStdLogicVector(pkg_toStdLogic(zz_160 /= zz_161)),pkg_cat(pkg_toStdLogicVector(zz_162),pkg_cat(zz_163,zz_164)));
  zz_154 <= pkg_stdLogicVector("00000000000000000001000001010000");
  zz_155 <= pkg_stdLogicVector("00000000000000000010000001010000");
  zz_156 <= pkg_stdLogicVector("00000000000000000000000001011000");
  zz_157 <= (decode_INSTRUCTION and pkg_stdLogicVector("00000000000000000001000000000000"));
  zz_158 <= pkg_stdLogicVector("00000000000000000001000000000000");
  zz_159 <= pkg_toStdLogic((decode_INSTRUCTION and pkg_stdLogicVector("00000000000000000011000000000000")) = pkg_stdLogicVector("00000000000000000010000000000000"));
  zz_160 <= pkg_cat(pkg_toStdLogicVector(pkg_toStdLogic(zz_165 = zz_166)),pkg_toStdLogicVector(pkg_toStdLogic(zz_167 = zz_168)));
  zz_161 <= pkg_stdLogicVector("00");
  zz_162 <= pkg_toStdLogic(pkg_cat(pkg_toStdLogicVector(zz_73),pkg_cat(zz_169,zz_170)) /= pkg_stdLogicVector("000000"));
  zz_163 <= pkg_toStdLogicVector(pkg_toStdLogic(pkg_cat(zz_171,zz_172) /= pkg_stdLogicVector("00")));
  zz_164 <= pkg_cat(pkg_toStdLogicVector(pkg_toStdLogic(zz_173 /= zz_174)),pkg_cat(pkg_toStdLogicVector(zz_175),pkg_cat(zz_176,zz_177)));
  zz_165 <= (decode_INSTRUCTION and pkg_stdLogicVector("00000000000000000000000001100100"));
  zz_166 <= pkg_stdLogicVector("00000000000000000000000000100100");
  zz_167 <= (decode_INSTRUCTION and pkg_stdLogicVector("00000000000000000011000001010100"));
  zz_168 <= pkg_stdLogicVector("00000000000000000001000000010000");
  zz_169 <= pkg_toStdLogicVector(pkg_toStdLogic((decode_INSTRUCTION and zz_178) = pkg_stdLogicVector("00000000000000000001000000010000")));
  zz_170 <= pkg_cat(pkg_toStdLogicVector(pkg_toStdLogic(zz_179 = zz_180)),pkg_cat(pkg_toStdLogicVector(zz_72),pkg_cat(zz_181,zz_182)));
  zz_171 <= pkg_toStdLogicVector(pkg_toStdLogic((decode_INSTRUCTION and zz_183) = pkg_stdLogicVector("00000000000000000000000000100000")));
  zz_172 <= pkg_toStdLogicVector(pkg_toStdLogic((decode_INSTRUCTION and zz_184) = pkg_stdLogicVector("00000000000000000000000000100000")));
  zz_173 <= pkg_cat(pkg_toStdLogicVector(pkg_toStdLogic(zz_185 = zz_186)),pkg_toStdLogicVector(pkg_toStdLogic(zz_187 = zz_188)));
  zz_174 <= pkg_stdLogicVector("00");
  zz_175 <= pkg_toStdLogic(pkg_toStdLogicVector(zz_75) /= pkg_stdLogicVector("0"));
  zz_176 <= pkg_toStdLogicVector(pkg_toStdLogic(pkg_cat(zz_189,zz_190) /= pkg_stdLogicVector("00")));
  zz_177 <= pkg_cat(pkg_toStdLogicVector(pkg_toStdLogic(zz_191 /= zz_192)),pkg_cat(pkg_toStdLogicVector(zz_193),pkg_cat(zz_194,zz_195)));
  zz_178 <= pkg_stdLogicVector("00000000000000000001000000010000");
  zz_179 <= (decode_INSTRUCTION and pkg_stdLogicVector("00000000000000000010000000010000"));
  zz_180 <= pkg_stdLogicVector("00000000000000000010000000010000");
  zz_181 <= pkg_toStdLogicVector(pkg_toStdLogic(zz_196 = zz_197));
  zz_182 <= pkg_toStdLogicVector(pkg_toStdLogic(zz_198 = zz_199));
  zz_183 <= pkg_stdLogicVector("00000000000000000000000000110100");
  zz_184 <= pkg_stdLogicVector("00000000000000000000000001100100");
  zz_185 <= (decode_INSTRUCTION and pkg_stdLogicVector("00000000000000000110000000000100"));
  zz_186 <= pkg_stdLogicVector("00000000000000000110000000000000");
  zz_187 <= (decode_INSTRUCTION and pkg_stdLogicVector("00000000000000000101000000000100"));
  zz_188 <= pkg_stdLogicVector("00000000000000000100000000000000");
  zz_189 <= pkg_toStdLogicVector(pkg_toStdLogic(zz_200 = zz_201));
  zz_190 <= pkg_toStdLogicVector(pkg_toStdLogic(zz_202 = zz_203));
  zz_191 <= pkg_cat(pkg_toStdLogicVector(zz_204),pkg_cat(zz_205,zz_206));
  zz_192 <= pkg_stdLogicVector("0000");
  zz_193 <= pkg_toStdLogic(pkg_cat(zz_207,zz_208) /= pkg_stdLogicVector("00"));
  zz_194 <= pkg_toStdLogicVector(pkg_toStdLogic(zz_209 /= zz_210));
  zz_195 <= pkg_cat(pkg_toStdLogicVector(zz_211),pkg_cat(zz_212,zz_213));
  zz_196 <= (decode_INSTRUCTION and pkg_stdLogicVector("00000000000000000000000000001100"));
  zz_197 <= pkg_stdLogicVector("00000000000000000000000000000100");
  zz_198 <= (decode_INSTRUCTION and pkg_stdLogicVector("00000000000000000000000000101000"));
  zz_199 <= pkg_stdLogicVector("00000000000000000000000000000000");
  zz_200 <= (decode_INSTRUCTION and pkg_stdLogicVector("00000000000000000010000000010000"));
  zz_201 <= pkg_stdLogicVector("00000000000000000010000000000000");
  zz_202 <= (decode_INSTRUCTION and pkg_stdLogicVector("00000000000000000101000000000000"));
  zz_203 <= pkg_stdLogicVector("00000000000000000001000000000000");
  zz_204 <= pkg_toStdLogic((decode_INSTRUCTION and zz_214) = pkg_stdLogicVector("00000000000000000000000000000000"));
  zz_205 <= pkg_toStdLogicVector(pkg_toStdLogic(zz_215 = zz_216));
  zz_206 <= pkg_cat(pkg_toStdLogicVector(zz_75),pkg_toStdLogicVector(zz_217));
  zz_207 <= pkg_toStdLogicVector(pkg_toStdLogic(zz_218 = zz_219));
  zz_208 <= pkg_toStdLogicVector(zz_74);
  zz_209 <= pkg_cat(pkg_toStdLogicVector(zz_220),pkg_toStdLogicVector(zz_74));
  zz_210 <= pkg_stdLogicVector("00");
  zz_211 <= pkg_toStdLogic(pkg_toStdLogicVector(zz_221) /= pkg_stdLogicVector("0"));
  zz_212 <= pkg_toStdLogicVector(pkg_toStdLogic(zz_222 /= zz_223));
  zz_213 <= pkg_cat(pkg_toStdLogicVector(zz_224),pkg_cat(zz_225,zz_226));
  zz_214 <= pkg_stdLogicVector("00000000000000000000000001000100");
  zz_215 <= (decode_INSTRUCTION and pkg_stdLogicVector("00000000000000000000000000011000"));
  zz_216 <= pkg_stdLogicVector("00000000000000000000000000000000");
  zz_217 <= pkg_toStdLogic((decode_INSTRUCTION and pkg_stdLogicVector("00000000000000000101000000000100")) = pkg_stdLogicVector("00000000000000000001000000000000"));
  zz_218 <= (decode_INSTRUCTION and pkg_stdLogicVector("00000000000000000000000000010100"));
  zz_219 <= pkg_stdLogicVector("00000000000000000000000000000100");
  zz_220 <= pkg_toStdLogic((decode_INSTRUCTION and pkg_stdLogicVector("00000000000000000000000001000100")) = pkg_stdLogicVector("00000000000000000000000000000100"));
  zz_221 <= pkg_toStdLogic((decode_INSTRUCTION and pkg_stdLogicVector("00000000000000000000000000100000")) = pkg_stdLogicVector("00000000000000000000000000100000"));
  zz_222 <= pkg_cat(pkg_toStdLogicVector(pkg_toStdLogic(zz_227 = zz_228)),pkg_cat(pkg_toStdLogicVector(zz_229),pkg_toStdLogicVector(zz_230)));
  zz_223 <= pkg_stdLogicVector("000");
  zz_224 <= pkg_toStdLogic(pkg_cat(pkg_toStdLogicVector(zz_73),pkg_toStdLogicVector(zz_231)) /= pkg_stdLogicVector("00"));
  zz_225 <= pkg_toStdLogicVector(pkg_toStdLogic(pkg_toStdLogicVector(zz_232) /= pkg_stdLogicVector("0")));
  zz_226 <= pkg_cat(pkg_toStdLogicVector(pkg_toStdLogic(zz_233 /= zz_234)),pkg_cat(pkg_toStdLogicVector(zz_235),pkg_cat(zz_236,zz_237)));
  zz_227 <= (decode_INSTRUCTION and pkg_stdLogicVector("00000000000000000000000001000100"));
  zz_228 <= pkg_stdLogicVector("00000000000000000000000001000000");
  zz_229 <= pkg_toStdLogic((decode_INSTRUCTION and pkg_stdLogicVector("00000000000000000010000000010100")) = pkg_stdLogicVector("00000000000000000010000000010000"));
  zz_230 <= pkg_toStdLogic((decode_INSTRUCTION and pkg_stdLogicVector("01000000000000000100000000110100")) = pkg_stdLogicVector("01000000000000000000000000110000"));
  zz_231 <= pkg_toStdLogic((decode_INSTRUCTION and pkg_stdLogicVector("00000000000000000000000000011100")) = pkg_stdLogicVector("00000000000000000000000000000100"));
  zz_232 <= pkg_toStdLogic((decode_INSTRUCTION and pkg_stdLogicVector("00000000000000000000000001011000")) = pkg_stdLogicVector("00000000000000000000000001000000"));
  zz_233 <= pkg_toStdLogicVector(zz_72);
  zz_234 <= pkg_stdLogicVector("0");
  zz_235 <= pkg_toStdLogic(pkg_toStdLogicVector(pkg_toStdLogic(zz_238 = zz_239)) /= pkg_stdLogicVector("0"));
  zz_236 <= pkg_toStdLogicVector(pkg_toStdLogic(pkg_toStdLogicVector(zz_240) /= pkg_stdLogicVector("0")));
  zz_237 <= pkg_cat(pkg_toStdLogicVector(pkg_toStdLogic(zz_241 /= zz_242)),pkg_cat(pkg_toStdLogicVector(zz_243),pkg_cat(zz_244,zz_245)));
  zz_238 <= (decode_INSTRUCTION and pkg_stdLogicVector("00000000000100000011000001010000"));
  zz_239 <= pkg_stdLogicVector("00000000000000000000000001010000");
  zz_240 <= pkg_toStdLogic((decode_INSTRUCTION and pkg_stdLogicVector("00010000000000000011000001010000")) = pkg_stdLogicVector("00000000000000000000000001010000"));
  zz_241 <= pkg_toStdLogicVector(pkg_toStdLogic((decode_INSTRUCTION and pkg_stdLogicVector("00000000000000000000000000010000")) = pkg_stdLogicVector("00000000000000000000000000010000")));
  zz_242 <= pkg_stdLogicVector("0");
  zz_243 <= pkg_toStdLogic(pkg_toStdLogicVector(pkg_toStdLogic((decode_INSTRUCTION and pkg_stdLogicVector("00000000000000000111000001010100")) = pkg_stdLogicVector("00000000000000000101000000010000"))) /= pkg_stdLogicVector("0"));
  zz_244 <= pkg_toStdLogicVector(pkg_toStdLogic(pkg_cat(pkg_toStdLogicVector(pkg_toStdLogic(zz_246 = zz_247)),pkg_toStdLogicVector(pkg_toStdLogic(zz_248 = zz_249))) /= pkg_stdLogicVector("00")));
  zz_245 <= pkg_toStdLogicVector(pkg_toStdLogic(pkg_cat(pkg_toStdLogicVector(pkg_toStdLogic(zz_250 = zz_251)),pkg_toStdLogicVector(pkg_toStdLogic(zz_252 = zz_253))) /= pkg_stdLogicVector("00")));
  zz_246 <= (decode_INSTRUCTION and pkg_stdLogicVector("01000000000000000011000001010100"));
  zz_247 <= pkg_stdLogicVector("01000000000000000001000000010000");
  zz_248 <= (decode_INSTRUCTION and pkg_stdLogicVector("00000000000000000111000001010100"));
  zz_249 <= pkg_stdLogicVector("00000000000000000001000000010000");
  zz_250 <= (decode_INSTRUCTION and pkg_stdLogicVector("00000000000000000000000001010000"));
  zz_251 <= pkg_stdLogicVector("00000000000000000000000001000000");
  zz_252 <= (decode_INSTRUCTION and pkg_stdLogicVector("00000000000100000011000001000000"));
  zz_253 <= pkg_stdLogicVector("00000000000000000000000001000000");
  process(io_mainClk)
  begin
    if rising_edge(io_mainClk) then
      if zz_142 = '1' then
        zz_115 <= RegFilePlugin_regFile(to_integer(decode_RegFilePlugin_regFileReadAddress1));
      end if;
    end if;
  end process;

  process(io_mainClk)
  begin
    if rising_edge(io_mainClk) then
      if zz_143 = '1' then
        zz_116 <= RegFilePlugin_regFile(to_integer(decode_RegFilePlugin_regFileReadAddress2));
      end if;
    end if;
  end process;

  process(io_mainClk)
  begin
    if rising_edge(io_mainClk) then
      if zz_31 = '1' then
        RegFilePlugin_regFile(to_integer(lastStageRegFileWrite_payload_address)) <= lastStageRegFileWrite_payload_data;
      end if;
    end if;
  end process;

  IBusSimplePlugin_rspJoin_rspBuffer_c : entity work.StreamFifoLowLatency
    port map ( 
      io_push_valid => iBus_rsp_valid,
      io_push_ready => IBusSimplePlugin_rspJoin_rspBuffer_c_io_push_ready,
      io_push_payload_error => iBus_rsp_payload_error,
      io_push_payload_inst => iBus_rsp_payload_inst,
      io_pop_valid => IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_valid,
      io_pop_ready => zz_113,
      io_pop_payload_error => IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_payload_error,
      io_pop_payload_inst => IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_payload_inst,
      io_flush => zz_114,
      io_occupancy => IBusSimplePlugin_rspJoin_rspBuffer_c_io_occupancy,
      io_mainClk => io_mainClk,
      resetCtrl_systemReset => resetCtrl_systemReset 
    );
  decode_RS1 <= decode_RegFilePlugin_rs1Data;
  execute_BYPASSABLE_MEMORY_STAGE <= decode_to_execute_BYPASSABLE_MEMORY_STAGE;
  decode_BYPASSABLE_MEMORY_STAGE <= pkg_extract(pkg_extract(zz_71,3,3),0);
  decode_SRC2_FORCE_ZERO <= (decode_SRC_ADD_ZERO and (not decode_SRC_USE_SUB_LESS));
  decode_CSR_READ_OPCODE <= pkg_toStdLogic(pkg_extract(decode_INSTRUCTION,13,7) /= pkg_stdLogicVector("0100000"));
  decode_IS_CSR <= pkg_extract(pkg_extract(zz_71,23,23),0);
  decode_MEMORY_STORE <= pkg_extract(pkg_extract(zz_71,10,10),0);
  decode_ALU_BITWISE_CTRL <= zz_1;
  zz_2 <= zz_3;
  decode_ALU_CTRL <= zz_4;
  zz_5 <= zz_6;
  decode_DO_EBREAK <= ((not DebugPlugin_haltIt) and (decode_IS_EBREAK or pkg_toStdLogic(false)));
  decode_SRC_LESS_UNSIGNED <= pkg_extract(pkg_extract(zz_71,14,14),0);
  memory_PC <= execute_to_memory_PC;
  decode_SRC2 <= zz_91;
  memory_MEMORY_ADDRESS_LOW <= execute_to_memory_MEMORY_ADDRESS_LOW;
  execute_MEMORY_ADDRESS_LOW <= pkg_extract(zz_117,1,0);
  execute_BRANCH_DO <= zz_99;
  decode_SRC1 <= zz_86;
  memory_MEMORY_READ_DATA <= dBus_rsp_data;
  decode_RS2 <= decode_RegFilePlugin_rs2Data;
  writeBack_REGFILE_WRITE_DATA <= memory_to_writeBack_REGFILE_WRITE_DATA;
  execute_REGFILE_WRITE_DATA <= zz_85;
  zz_7 <= zz_8;
  zz_9 <= zz_10;
  decode_ENV_CTRL <= zz_11;
  zz_12 <= zz_13;
  decode_SHIFT_CTRL <= zz_14;
  zz_15 <= zz_16;
  decode_BYPASSABLE_EXECUTE_STAGE <= pkg_extract(pkg_extract(zz_71,6,6),0);
  decode_CSR_WRITE_OPCODE <= (not ((pkg_toStdLogic(pkg_extract(decode_INSTRUCTION,14,13) = pkg_stdLogicVector("01")) and pkg_toStdLogic(pkg_extract(decode_INSTRUCTION,19,15) = pkg_stdLogicVector("00000"))) or (pkg_toStdLogic(pkg_extract(decode_INSTRUCTION,14,13) = pkg_stdLogicVector("11")) and pkg_toStdLogic(pkg_extract(decode_INSTRUCTION,19,15) = pkg_stdLogicVector("00000")))));
  decode_MEMORY_ENABLE <= pkg_extract(pkg_extract(zz_71,22,22),0);
  decode_BRANCH_CTRL <= zz_17;
  zz_18 <= zz_19;
  execute_BRANCH_CALC <= unsigned(pkg_cat(std_logic_vector(pkg_extract(execute_BranchPlugin_branchAdder,31,1)),std_logic_vector(pkg_unsigned("0"))));
  writeBack_FORMAL_PC_NEXT <= memory_to_writeBack_FORMAL_PC_NEXT;
  memory_FORMAL_PC_NEXT <= execute_to_memory_FORMAL_PC_NEXT;
  execute_FORMAL_PC_NEXT <= decode_to_execute_FORMAL_PC_NEXT;
  decode_FORMAL_PC_NEXT <= (decode_PC + pkg_unsigned("00000000000000000000000000000100"));
  execute_DO_EBREAK <= decode_to_execute_DO_EBREAK;
  decode_IS_EBREAK <= pkg_extract(pkg_extract(zz_71,4,4),0);
  memory_BRANCH_CALC <= execute_to_memory_BRANCH_CALC;
  memory_BRANCH_DO <= execute_to_memory_BRANCH_DO;
  execute_PC <= decode_to_execute_PC;
  execute_RS1 <= decode_to_execute_RS1;
  execute_BRANCH_CTRL <= zz_20;
  decode_RS2_USE <= pkg_extract(pkg_extract(zz_71,17,17),0);
  decode_RS1_USE <= pkg_extract(pkg_extract(zz_71,13,13),0);
  execute_REGFILE_WRITE_VALID <= decode_to_execute_REGFILE_WRITE_VALID;
  execute_BYPASSABLE_EXECUTE_STAGE <= decode_to_execute_BYPASSABLE_EXECUTE_STAGE;
  memory_REGFILE_WRITE_VALID <= execute_to_memory_REGFILE_WRITE_VALID;
  memory_INSTRUCTION <= execute_to_memory_INSTRUCTION;
  memory_BYPASSABLE_MEMORY_STAGE <= execute_to_memory_BYPASSABLE_MEMORY_STAGE;
  writeBack_REGFILE_WRITE_VALID <= memory_to_writeBack_REGFILE_WRITE_VALID;
  memory_REGFILE_WRITE_DATA <= execute_to_memory_REGFILE_WRITE_DATA;
  execute_SHIFT_CTRL <= zz_21;
  execute_SRC_LESS_UNSIGNED <= decode_to_execute_SRC_LESS_UNSIGNED;
  execute_SRC2_FORCE_ZERO <= decode_to_execute_SRC2_FORCE_ZERO;
  execute_SRC_USE_SUB_LESS <= decode_to_execute_SRC_USE_SUB_LESS;
  zz_22 <= decode_PC;
  zz_23 <= decode_RS2;
  decode_SRC2_CTRL <= zz_24;
  zz_25 <= decode_RS1;
  decode_SRC1_CTRL <= zz_26;
  decode_SRC_USE_SUB_LESS <= pkg_extract(pkg_extract(zz_71,9,9),0);
  decode_SRC_ADD_ZERO <= pkg_extract(pkg_extract(zz_71,19,19),0);
  execute_SRC_ADD_SUB <= execute_SrcPlugin_addSub;
  execute_SRC_LESS <= execute_SrcPlugin_less;
  execute_ALU_CTRL <= zz_27;
  execute_SRC2 <= decode_to_execute_SRC2;
  execute_ALU_BITWISE_CTRL <= zz_28;
  zz_29 <= writeBack_INSTRUCTION;
  zz_30 <= writeBack_REGFILE_WRITE_VALID;
  process(lastStageRegFileWrite_valid)
  begin
    zz_31 <= pkg_toStdLogic(false);
    if lastStageRegFileWrite_valid = '1' then
      zz_31 <= pkg_toStdLogic(true);
    end if;
  end process;

  decode_INSTRUCTION_ANTICIPATED <= pkg_mux(decode_arbitration_isStuck,decode_INSTRUCTION,IBusSimplePlugin_iBusRsp_output_payload_rsp_inst);
  process(zz_71,decode_INSTRUCTION)
  begin
    decode_REGFILE_WRITE_VALID <= pkg_extract(pkg_extract(zz_71,18,18),0);
    if pkg_toStdLogic(pkg_extract(decode_INSTRUCTION,11,7) = pkg_stdLogicVector("00000")) = '1' then
      decode_REGFILE_WRITE_VALID <= pkg_toStdLogic(false);
    end if;
  end process;

  process(execute_REGFILE_WRITE_DATA,zz_120,execute_CsrPlugin_readData,zz_121,zz_92)
  begin
    zz_39 <= execute_REGFILE_WRITE_DATA;
    if zz_120 = '1' then
      zz_39 <= execute_CsrPlugin_readData;
    end if;
    if zz_121 = '1' then
      zz_39 <= zz_92;
    end if;
  end process;

  execute_SRC1 <= decode_to_execute_SRC1;
  execute_CSR_READ_OPCODE <= decode_to_execute_CSR_READ_OPCODE;
  execute_CSR_WRITE_OPCODE <= decode_to_execute_CSR_WRITE_OPCODE;
  execute_IS_CSR <= decode_to_execute_IS_CSR;
  memory_ENV_CTRL <= zz_40;
  execute_ENV_CTRL <= zz_41;
  writeBack_ENV_CTRL <= zz_42;
  writeBack_MEMORY_STORE <= memory_to_writeBack_MEMORY_STORE;
  process(writeBack_REGFILE_WRITE_DATA,writeBack_arbitration_isValid,writeBack_MEMORY_ENABLE,writeBack_DBusSimplePlugin_rspFormated)
  begin
    zz_43 <= writeBack_REGFILE_WRITE_DATA;
    if (writeBack_arbitration_isValid and writeBack_MEMORY_ENABLE) = '1' then
      zz_43 <= writeBack_DBusSimplePlugin_rspFormated;
    end if;
  end process;

  writeBack_MEMORY_ENABLE <= memory_to_writeBack_MEMORY_ENABLE;
  writeBack_MEMORY_ADDRESS_LOW <= memory_to_writeBack_MEMORY_ADDRESS_LOW;
  writeBack_MEMORY_READ_DATA <= memory_to_writeBack_MEMORY_READ_DATA;
  memory_MEMORY_STORE <= execute_to_memory_MEMORY_STORE;
  memory_MEMORY_ENABLE <= execute_to_memory_MEMORY_ENABLE;
  execute_SRC_ADD <= execute_SrcPlugin_addSub;
  execute_RS2 <= decode_to_execute_RS2;
  execute_INSTRUCTION <= decode_to_execute_INSTRUCTION;
  execute_MEMORY_STORE <= decode_to_execute_MEMORY_STORE;
  execute_MEMORY_ENABLE <= decode_to_execute_MEMORY_ENABLE;
  execute_ALIGNEMENT_FAULT <= pkg_toStdLogic(false);
  process(memory_FORMAL_PC_NEXT,BranchPlugin_jumpInterface_valid,BranchPlugin_jumpInterface_payload)
  begin
    zz_44 <= memory_FORMAL_PC_NEXT;
    if BranchPlugin_jumpInterface_valid = '1' then
      zz_44 <= BranchPlugin_jumpInterface_payload;
    end if;
  end process;

  decode_PC <= IBusSimplePlugin_injector_decodeInput_payload_pc;
  decode_INSTRUCTION <= IBusSimplePlugin_injector_decodeInput_payload_rsp_inst;
  writeBack_PC <= memory_to_writeBack_PC;
  writeBack_INSTRUCTION <= memory_to_writeBack_INSTRUCTION;
  process(zz_108)
  begin
    decode_arbitration_haltItself <= pkg_toStdLogic(false);
    case zz_108 is
      when "000" =>
      when "001" =>
      when "010" =>
        decode_arbitration_haltItself <= pkg_toStdLogic(true);
      when "011" =>
      when "100" =>
      when others =>
    end case;
  end process;

  process(CsrPlugin_pipelineLiberator_active,writeBack_arbitration_isValid,writeBack_ENV_CTRL,memory_arbitration_isValid,memory_ENV_CTRL,execute_arbitration_isValid,execute_ENV_CTRL,decode_arbitration_isValid,zz_93,zz_94)
  begin
    decode_arbitration_haltByOther <= pkg_toStdLogic(false);
    if CsrPlugin_pipelineLiberator_active = '1' then
      decode_arbitration_haltByOther <= pkg_toStdLogic(true);
    end if;
    if pkg_toStdLogic(pkg_cat(pkg_toStdLogicVector((writeBack_arbitration_isValid and pkg_toStdLogic(writeBack_ENV_CTRL = EnvCtrlEnum_defaultEncoding_XRET))),pkg_cat(pkg_toStdLogicVector((memory_arbitration_isValid and pkg_toStdLogic(memory_ENV_CTRL = EnvCtrlEnum_defaultEncoding_XRET))),pkg_toStdLogicVector((execute_arbitration_isValid and pkg_toStdLogic(execute_ENV_CTRL = EnvCtrlEnum_defaultEncoding_XRET))))) /= pkg_stdLogicVector("000")) = '1' then
      decode_arbitration_haltByOther <= pkg_toStdLogic(true);
    end if;
    if (decode_arbitration_isValid and (zz_93 or zz_94)) = '1' then
      decode_arbitration_haltByOther <= pkg_toStdLogic(true);
    end if;
  end process;

  process(decode_arbitration_isFlushed)
  begin
    decode_arbitration_removeIt <= pkg_toStdLogic(false);
    if decode_arbitration_isFlushed = '1' then
      decode_arbitration_removeIt <= pkg_toStdLogic(true);
    end if;
  end process;

  decode_arbitration_flushIt <= pkg_toStdLogic(false);
  decode_arbitration_flushNext <= pkg_toStdLogic(false);
  process(execute_arbitration_isValid,execute_MEMORY_ENABLE,dBus_cmd_ready,execute_DBusSimplePlugin_skipCmd,zz_61,zz_120,execute_CsrPlugin_blockedBySideEffects,zz_121,zz_122,execute_LightShifterPlugin_done)
  begin
    execute_arbitration_haltItself <= pkg_toStdLogic(false);
    if ((((execute_arbitration_isValid and execute_MEMORY_ENABLE) and (not dBus_cmd_ready)) and (not execute_DBusSimplePlugin_skipCmd)) and (not zz_61)) = '1' then
      execute_arbitration_haltItself <= pkg_toStdLogic(true);
    end if;
    if zz_120 = '1' then
      if execute_CsrPlugin_blockedBySideEffects = '1' then
        execute_arbitration_haltItself <= pkg_toStdLogic(true);
      end if;
    end if;
    if zz_121 = '1' then
      if zz_122 = '1' then
        if execute_LightShifterPlugin_done = '0' then
          execute_arbitration_haltItself <= pkg_toStdLogic(true);
        end if;
      end if;
    end if;
  end process;

  process(zz_123)
  begin
    execute_arbitration_haltByOther <= pkg_toStdLogic(false);
    if zz_123 = '1' then
      execute_arbitration_haltByOther <= pkg_toStdLogic(true);
    end if;
  end process;

  process(execute_arbitration_isFlushed)
  begin
    execute_arbitration_removeIt <= pkg_toStdLogic(false);
    if execute_arbitration_isFlushed = '1' then
      execute_arbitration_removeIt <= pkg_toStdLogic(true);
    end if;
  end process;

  process(zz_123,zz_124)
  begin
    execute_arbitration_flushIt <= pkg_toStdLogic(false);
    if zz_123 = '1' then
      if zz_124 = '1' then
        execute_arbitration_flushIt <= pkg_toStdLogic(true);
      end if;
    end if;
  end process;

  process(zz_123,zz_124)
  begin
    execute_arbitration_flushNext <= pkg_toStdLogic(false);
    if zz_123 = '1' then
      if zz_124 = '1' then
        execute_arbitration_flushNext <= pkg_toStdLogic(true);
      end if;
    end if;
  end process;

  process(memory_arbitration_isValid,memory_MEMORY_ENABLE,memory_MEMORY_STORE,dBus_rsp_ready)
  begin
    memory_arbitration_haltItself <= pkg_toStdLogic(false);
    if (((memory_arbitration_isValid and memory_MEMORY_ENABLE) and (not memory_MEMORY_STORE)) and ((not dBus_rsp_ready) or pkg_toStdLogic(false))) = '1' then
      memory_arbitration_haltItself <= pkg_toStdLogic(true);
    end if;
  end process;

  memory_arbitration_haltByOther <= pkg_toStdLogic(false);
  process(memory_arbitration_isFlushed)
  begin
    memory_arbitration_removeIt <= pkg_toStdLogic(false);
    if memory_arbitration_isFlushed = '1' then
      memory_arbitration_removeIt <= pkg_toStdLogic(true);
    end if;
  end process;

  memory_arbitration_flushIt <= pkg_toStdLogic(false);
  process(BranchPlugin_jumpInterface_valid)
  begin
    memory_arbitration_flushNext <= pkg_toStdLogic(false);
    if BranchPlugin_jumpInterface_valid = '1' then
      memory_arbitration_flushNext <= pkg_toStdLogic(true);
    end if;
  end process;

  writeBack_arbitration_haltItself <= pkg_toStdLogic(false);
  writeBack_arbitration_haltByOther <= pkg_toStdLogic(false);
  process(writeBack_arbitration_isFlushed)
  begin
    writeBack_arbitration_removeIt <= pkg_toStdLogic(false);
    if writeBack_arbitration_isFlushed = '1' then
      writeBack_arbitration_removeIt <= pkg_toStdLogic(true);
    end if;
  end process;

  writeBack_arbitration_flushIt <= pkg_toStdLogic(false);
  process(zz_125,zz_126)
  begin
    writeBack_arbitration_flushNext <= pkg_toStdLogic(false);
    if zz_125 = '1' then
      writeBack_arbitration_flushNext <= pkg_toStdLogic(true);
    end if;
    if zz_126 = '1' then
      writeBack_arbitration_flushNext <= pkg_toStdLogic(true);
    end if;
  end process;

  lastStageInstruction <= writeBack_INSTRUCTION;
  lastStagePc <= writeBack_PC;
  lastStageIsValid <= writeBack_arbitration_isValid;
  lastStageIsFiring <= writeBack_arbitration_isFiring;
  process(zz_125,zz_126,zz_123,zz_124,DebugPlugin_haltIt,zz_127)
  begin
    IBusSimplePlugin_fetcherHalt <= pkg_toStdLogic(false);
    if zz_125 = '1' then
      IBusSimplePlugin_fetcherHalt <= pkg_toStdLogic(true);
    end if;
    if zz_126 = '1' then
      IBusSimplePlugin_fetcherHalt <= pkg_toStdLogic(true);
    end if;
    if zz_123 = '1' then
      if zz_124 = '1' then
        IBusSimplePlugin_fetcherHalt <= pkg_toStdLogic(true);
      end if;
    end if;
    if DebugPlugin_haltIt = '1' then
      IBusSimplePlugin_fetcherHalt <= pkg_toStdLogic(true);
    end if;
    if zz_127 = '1' then
      IBusSimplePlugin_fetcherHalt <= pkg_toStdLogic(true);
    end if;
  end process;

  process(IBusSimplePlugin_iBusRsp_stages_1_input_valid,IBusSimplePlugin_iBusRsp_stages_2_input_valid,IBusSimplePlugin_injector_decodeInput_valid)
  begin
    IBusSimplePlugin_incomingInstruction <= pkg_toStdLogic(false);
    if (IBusSimplePlugin_iBusRsp_stages_1_input_valid or IBusSimplePlugin_iBusRsp_stages_2_input_valid) = '1' then
      IBusSimplePlugin_incomingInstruction <= pkg_toStdLogic(true);
    end if;
    if IBusSimplePlugin_injector_decodeInput_valid = '1' then
      IBusSimplePlugin_incomingInstruction <= pkg_toStdLogic(true);
    end if;
  end process;

  CsrPlugin_inWfi <= pkg_toStdLogic(false);
  process(DebugPlugin_haltIt)
  begin
    CsrPlugin_thirdPartyWake <= pkg_toStdLogic(false);
    if DebugPlugin_haltIt = '1' then
      CsrPlugin_thirdPartyWake <= pkg_toStdLogic(true);
    end if;
  end process;

  process(zz_125,zz_126)
  begin
    CsrPlugin_jumpInterface_valid <= pkg_toStdLogic(false);
    if zz_125 = '1' then
      CsrPlugin_jumpInterface_valid <= pkg_toStdLogic(true);
    end if;
    if zz_126 = '1' then
      CsrPlugin_jumpInterface_valid <= pkg_toStdLogic(true);
    end if;
  end process;

  process(zz_125,CsrPlugin_xtvec_base,zz_126,zz_128,CsrPlugin_mepc)
  begin
    CsrPlugin_jumpInterface_payload <= pkg_unsigned("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    if zz_125 = '1' then
      CsrPlugin_jumpInterface_payload <= unsigned(pkg_cat(std_logic_vector(CsrPlugin_xtvec_base),std_logic_vector(pkg_unsigned("00"))));
    end if;
    if zz_126 = '1' then
      case zz_128 is
        when "11" =>
          CsrPlugin_jumpInterface_payload <= CsrPlugin_mepc;
        when others =>
      end case;
    end if;
  end process;

  process(DebugPlugin_godmode)
  begin
    CsrPlugin_forceMachineWire <= pkg_toStdLogic(false);
    if DebugPlugin_godmode = '1' then
      CsrPlugin_forceMachineWire <= pkg_toStdLogic(true);
    end if;
  end process;

  process(DebugPlugin_haltIt,DebugPlugin_stepIt)
  begin
    CsrPlugin_allowInterrupts <= pkg_toStdLogic(true);
    if (DebugPlugin_haltIt or DebugPlugin_stepIt) = '1' then
      CsrPlugin_allowInterrupts <= pkg_toStdLogic(false);
    end if;
  end process;

  process(DebugPlugin_godmode)
  begin
    CsrPlugin_allowException <= pkg_toStdLogic(true);
    if DebugPlugin_godmode = '1' then
      CsrPlugin_allowException <= pkg_toStdLogic(false);
    end if;
  end process;

  IBusSimplePlugin_externalFlush <= pkg_toStdLogic(pkg_cat(pkg_toStdLogicVector(writeBack_arbitration_flushNext),pkg_cat(pkg_toStdLogicVector(memory_arbitration_flushNext),pkg_cat(pkg_toStdLogicVector(execute_arbitration_flushNext),pkg_toStdLogicVector(decode_arbitration_flushNext)))) /= pkg_stdLogicVector("0000"));
  IBusSimplePlugin_jump_pcLoad_valid <= pkg_toStdLogic(pkg_cat(pkg_toStdLogicVector(BranchPlugin_jumpInterface_valid),pkg_toStdLogicVector(CsrPlugin_jumpInterface_valid)) /= pkg_stdLogicVector("00"));
  zz_45 <= unsigned(pkg_cat(pkg_toStdLogicVector(BranchPlugin_jumpInterface_valid),pkg_toStdLogicVector(CsrPlugin_jumpInterface_valid)));
  IBusSimplePlugin_jump_pcLoad_payload <= pkg_mux(pkg_extract(std_logic_vector((zz_45 and pkg_not((zz_45 - pkg_unsigned("01"))))),0),CsrPlugin_jumpInterface_payload,BranchPlugin_jumpInterface_payload);
  process(IBusSimplePlugin_jump_pcLoad_valid)
  begin
    IBusSimplePlugin_fetchPc_correction <= pkg_toStdLogic(false);
    if IBusSimplePlugin_jump_pcLoad_valid = '1' then
      IBusSimplePlugin_fetchPc_correction <= pkg_toStdLogic(true);
    end if;
  end process;

  IBusSimplePlugin_fetchPc_corrected <= (IBusSimplePlugin_fetchPc_correction or IBusSimplePlugin_fetchPc_correctionReg);
  process(IBusSimplePlugin_iBusRsp_stages_1_input_ready)
  begin
    IBusSimplePlugin_fetchPc_pcRegPropagate <= pkg_toStdLogic(false);
    if IBusSimplePlugin_iBusRsp_stages_1_input_ready = '1' then
      IBusSimplePlugin_fetchPc_pcRegPropagate <= pkg_toStdLogic(true);
    end if;
  end process;

  process(IBusSimplePlugin_fetchPc_pcReg,IBusSimplePlugin_fetchPc_inc,IBusSimplePlugin_jump_pcLoad_valid,IBusSimplePlugin_jump_pcLoad_payload)
  begin
    IBusSimplePlugin_fetchPc_pc <= (IBusSimplePlugin_fetchPc_pcReg + pkg_resize(unsigned(pkg_cat(pkg_toStdLogicVector(IBusSimplePlugin_fetchPc_inc),pkg_stdLogicVector("00"))),32));
    if IBusSimplePlugin_jump_pcLoad_valid = '1' then
      IBusSimplePlugin_fetchPc_pc <= IBusSimplePlugin_jump_pcLoad_payload;
    end if;
    IBusSimplePlugin_fetchPc_pc(0) <= pkg_toStdLogic(false);
    IBusSimplePlugin_fetchPc_pc(1) <= pkg_toStdLogic(false);
  end process;

  process(IBusSimplePlugin_jump_pcLoad_valid)
  begin
    IBusSimplePlugin_fetchPc_flushed <= pkg_toStdLogic(false);
    if IBusSimplePlugin_jump_pcLoad_valid = '1' then
      IBusSimplePlugin_fetchPc_flushed <= pkg_toStdLogic(true);
    end if;
  end process;

  IBusSimplePlugin_fetchPc_output_valid <= ((not IBusSimplePlugin_fetcherHalt) and IBusSimplePlugin_fetchPc_booted);
  IBusSimplePlugin_fetchPc_output_payload <= IBusSimplePlugin_fetchPc_pc;
  IBusSimplePlugin_iBusRsp_redoFetch <= pkg_toStdLogic(false);
  IBusSimplePlugin_iBusRsp_stages_0_input_valid <= IBusSimplePlugin_fetchPc_output_valid;
  IBusSimplePlugin_fetchPc_output_ready <= IBusSimplePlugin_iBusRsp_stages_0_input_ready;
  IBusSimplePlugin_iBusRsp_stages_0_input_payload <= IBusSimplePlugin_fetchPc_output_payload;
  IBusSimplePlugin_iBusRsp_stages_0_halt <= pkg_toStdLogic(false);
  zz_46 <= (not IBusSimplePlugin_iBusRsp_stages_0_halt);
  IBusSimplePlugin_iBusRsp_stages_0_input_ready <= (IBusSimplePlugin_iBusRsp_stages_0_output_ready and zz_46);
  IBusSimplePlugin_iBusRsp_stages_0_output_valid <= (IBusSimplePlugin_iBusRsp_stages_0_input_valid and zz_46);
  IBusSimplePlugin_iBusRsp_stages_0_output_payload <= IBusSimplePlugin_iBusRsp_stages_0_input_payload;
  process(IBusSimplePlugin_iBusRsp_stages_1_input_valid,IBusSimplePlugin_cmdFork_canEmit,IBusSimplePlugin_cmd_ready)
  begin
    IBusSimplePlugin_iBusRsp_stages_1_halt <= pkg_toStdLogic(false);
    if (IBusSimplePlugin_iBusRsp_stages_1_input_valid and ((not IBusSimplePlugin_cmdFork_canEmit) or (not IBusSimplePlugin_cmd_ready))) = '1' then
      IBusSimplePlugin_iBusRsp_stages_1_halt <= pkg_toStdLogic(true);
    end if;
  end process;

  zz_47 <= (not IBusSimplePlugin_iBusRsp_stages_1_halt);
  IBusSimplePlugin_iBusRsp_stages_1_input_ready <= (IBusSimplePlugin_iBusRsp_stages_1_output_ready and zz_47);
  IBusSimplePlugin_iBusRsp_stages_1_output_valid <= (IBusSimplePlugin_iBusRsp_stages_1_input_valid and zz_47);
  IBusSimplePlugin_iBusRsp_stages_1_output_payload <= IBusSimplePlugin_iBusRsp_stages_1_input_payload;
  IBusSimplePlugin_iBusRsp_stages_2_halt <= pkg_toStdLogic(false);
  zz_48 <= (not IBusSimplePlugin_iBusRsp_stages_2_halt);
  IBusSimplePlugin_iBusRsp_stages_2_input_ready <= (IBusSimplePlugin_iBusRsp_stages_2_output_ready and zz_48);
  IBusSimplePlugin_iBusRsp_stages_2_output_valid <= (IBusSimplePlugin_iBusRsp_stages_2_input_valid and zz_48);
  IBusSimplePlugin_iBusRsp_stages_2_output_payload <= IBusSimplePlugin_iBusRsp_stages_2_input_payload;
  IBusSimplePlugin_iBusRsp_flush <= (IBusSimplePlugin_externalFlush or IBusSimplePlugin_iBusRsp_redoFetch);
  IBusSimplePlugin_iBusRsp_stages_0_output_ready <= zz_49;
  zz_49 <= ((pkg_toStdLogic(false) and (not zz_50)) or IBusSimplePlugin_iBusRsp_stages_1_input_ready);
  zz_50 <= zz_51;
  IBusSimplePlugin_iBusRsp_stages_1_input_valid <= zz_50;
  IBusSimplePlugin_iBusRsp_stages_1_input_payload <= IBusSimplePlugin_fetchPc_pcReg;
  IBusSimplePlugin_iBusRsp_stages_1_output_ready <= ((pkg_toStdLogic(false) and (not zz_52)) or IBusSimplePlugin_iBusRsp_stages_2_input_ready);
  zz_52 <= zz_53;
  IBusSimplePlugin_iBusRsp_stages_2_input_valid <= zz_52;
  IBusSimplePlugin_iBusRsp_stages_2_input_payload <= zz_54;
  process(IBusSimplePlugin_injector_decodeInput_valid,IBusSimplePlugin_pcValids_0)
  begin
    IBusSimplePlugin_iBusRsp_readyForError <= pkg_toStdLogic(true);
    if IBusSimplePlugin_injector_decodeInput_valid = '1' then
      IBusSimplePlugin_iBusRsp_readyForError <= pkg_toStdLogic(false);
    end if;
    if (not IBusSimplePlugin_pcValids_0) = '1' then
      IBusSimplePlugin_iBusRsp_readyForError <= pkg_toStdLogic(false);
    end if;
  end process;

  IBusSimplePlugin_iBusRsp_output_ready <= ((pkg_toStdLogic(false) and (not IBusSimplePlugin_injector_decodeInput_valid)) or IBusSimplePlugin_injector_decodeInput_ready);
  IBusSimplePlugin_injector_decodeInput_valid <= zz_55;
  IBusSimplePlugin_injector_decodeInput_payload_pc <= zz_56;
  IBusSimplePlugin_injector_decodeInput_payload_rsp_error <= zz_57;
  IBusSimplePlugin_injector_decodeInput_payload_rsp_inst <= zz_58;
  IBusSimplePlugin_injector_decodeInput_payload_isRvc <= zz_59;
  IBusSimplePlugin_pcValids_0 <= IBusSimplePlugin_injector_nextPcCalc_valids_2;
  IBusSimplePlugin_pcValids_1 <= IBusSimplePlugin_injector_nextPcCalc_valids_3;
  IBusSimplePlugin_pcValids_2 <= IBusSimplePlugin_injector_nextPcCalc_valids_4;
  IBusSimplePlugin_pcValids_3 <= IBusSimplePlugin_injector_nextPcCalc_valids_5;
  IBusSimplePlugin_injector_decodeInput_ready <= (not decode_arbitration_isStuck);
  process(IBusSimplePlugin_injector_decodeInput_valid,zz_108)
  begin
    decode_arbitration_isValid <= IBusSimplePlugin_injector_decodeInput_valid;
    case zz_108 is
      when "000" =>
      when "001" =>
      when "010" =>
        decode_arbitration_isValid <= pkg_toStdLogic(true);
      when "011" =>
        decode_arbitration_isValid <= pkg_toStdLogic(true);
      when "100" =>
      when others =>
    end case;
  end process;

  iBus_cmd_valid <= IBusSimplePlugin_cmd_valid;
  IBusSimplePlugin_cmd_ready <= iBus_cmd_ready;
  iBus_cmd_payload_pc <= IBusSimplePlugin_cmd_payload_pc;
  IBusSimplePlugin_pending_next <= ((IBusSimplePlugin_pending_value + pkg_resize(unsigned(pkg_toStdLogicVector(IBusSimplePlugin_pending_inc)),3)) - pkg_resize(unsigned(pkg_toStdLogicVector(IBusSimplePlugin_pending_dec)),3));
  IBusSimplePlugin_cmdFork_canEmit <= (IBusSimplePlugin_iBusRsp_stages_1_output_ready and pkg_toStdLogic(IBusSimplePlugin_pending_value /= pkg_unsigned("111")));
  IBusSimplePlugin_cmd_valid <= (IBusSimplePlugin_iBusRsp_stages_1_input_valid and IBusSimplePlugin_cmdFork_canEmit);
  IBusSimplePlugin_pending_inc <= (IBusSimplePlugin_cmd_valid and IBusSimplePlugin_cmd_ready);
  IBusSimplePlugin_cmd_payload_pc <= unsigned(pkg_cat(std_logic_vector(pkg_extract(IBusSimplePlugin_iBusRsp_stages_1_input_payload,31,2)),std_logic_vector(pkg_unsigned("00"))));
  IBusSimplePlugin_rspJoin_rspBuffer_flush <= (pkg_toStdLogic(IBusSimplePlugin_rspJoin_rspBuffer_discardCounter /= pkg_unsigned("000")) or IBusSimplePlugin_iBusRsp_flush);
  IBusSimplePlugin_rspJoin_rspBuffer_output_valid <= (IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_valid and pkg_toStdLogic(IBusSimplePlugin_rspJoin_rspBuffer_discardCounter = pkg_unsigned("000")));
  IBusSimplePlugin_rspJoin_rspBuffer_output_payload_error <= IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_payload_error;
  IBusSimplePlugin_rspJoin_rspBuffer_output_payload_inst <= IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_payload_inst;
  zz_113 <= (IBusSimplePlugin_rspJoin_rspBuffer_output_ready or IBusSimplePlugin_rspJoin_rspBuffer_flush);
  IBusSimplePlugin_pending_dec <= (IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_valid and zz_113);
  IBusSimplePlugin_rspJoin_fetchRsp_pc <= IBusSimplePlugin_iBusRsp_stages_2_output_payload;
  process(IBusSimplePlugin_rspJoin_rspBuffer_output_payload_error,IBusSimplePlugin_rspJoin_rspBuffer_output_valid)
  begin
    IBusSimplePlugin_rspJoin_fetchRsp_rsp_error <= IBusSimplePlugin_rspJoin_rspBuffer_output_payload_error;
    if (not IBusSimplePlugin_rspJoin_rspBuffer_output_valid) = '1' then
      IBusSimplePlugin_rspJoin_fetchRsp_rsp_error <= pkg_toStdLogic(false);
    end if;
  end process;

  IBusSimplePlugin_rspJoin_fetchRsp_rsp_inst <= IBusSimplePlugin_rspJoin_rspBuffer_output_payload_inst;
  IBusSimplePlugin_rspJoin_exceptionDetected <= pkg_toStdLogic(false);
  IBusSimplePlugin_rspJoin_join_valid <= (IBusSimplePlugin_iBusRsp_stages_2_output_valid and IBusSimplePlugin_rspJoin_rspBuffer_output_valid);
  IBusSimplePlugin_rspJoin_join_payload_pc <= IBusSimplePlugin_rspJoin_fetchRsp_pc;
  IBusSimplePlugin_rspJoin_join_payload_rsp_error <= IBusSimplePlugin_rspJoin_fetchRsp_rsp_error;
  IBusSimplePlugin_rspJoin_join_payload_rsp_inst <= IBusSimplePlugin_rspJoin_fetchRsp_rsp_inst;
  IBusSimplePlugin_rspJoin_join_payload_isRvc <= IBusSimplePlugin_rspJoin_fetchRsp_isRvc;
  IBusSimplePlugin_iBusRsp_stages_2_output_ready <= pkg_mux(IBusSimplePlugin_iBusRsp_stages_2_output_valid,(IBusSimplePlugin_rspJoin_join_valid and IBusSimplePlugin_rspJoin_join_ready),IBusSimplePlugin_rspJoin_join_ready);
  IBusSimplePlugin_rspJoin_rspBuffer_output_ready <= (IBusSimplePlugin_rspJoin_join_valid and IBusSimplePlugin_rspJoin_join_ready);
  zz_60 <= (not IBusSimplePlugin_rspJoin_exceptionDetected);
  IBusSimplePlugin_rspJoin_join_ready <= (IBusSimplePlugin_iBusRsp_output_ready and zz_60);
  IBusSimplePlugin_iBusRsp_output_valid <= (IBusSimplePlugin_rspJoin_join_valid and zz_60);
  IBusSimplePlugin_iBusRsp_output_payload_pc <= IBusSimplePlugin_rspJoin_join_payload_pc;
  IBusSimplePlugin_iBusRsp_output_payload_rsp_error <= IBusSimplePlugin_rspJoin_join_payload_rsp_error;
  IBusSimplePlugin_iBusRsp_output_payload_rsp_inst <= IBusSimplePlugin_rspJoin_join_payload_rsp_inst;
  IBusSimplePlugin_iBusRsp_output_payload_isRvc <= IBusSimplePlugin_rspJoin_join_payload_isRvc;
  zz_61 <= pkg_toStdLogic(false);
  process(execute_ALIGNEMENT_FAULT)
  begin
    execute_DBusSimplePlugin_skipCmd <= pkg_toStdLogic(false);
    if execute_ALIGNEMENT_FAULT = '1' then
      execute_DBusSimplePlugin_skipCmd <= pkg_toStdLogic(true);
    end if;
  end process;

  dBus_cmd_valid <= (((((execute_arbitration_isValid and execute_MEMORY_ENABLE) and (not execute_arbitration_isStuckByOthers)) and (not execute_arbitration_isFlushed)) and (not execute_DBusSimplePlugin_skipCmd)) and (not zz_61));
  dBus_cmd_payload_wr <= execute_MEMORY_STORE;
  zz_118 <= unsigned(pkg_extract(execute_INSTRUCTION,13,12));
  process(zz_118,execute_RS2)
  begin
    case zz_118 is
      when "00" =>
        zz_62 <= pkg_cat(pkg_cat(pkg_cat(pkg_extract(execute_RS2,7,0),pkg_extract(execute_RS2,7,0)),pkg_extract(execute_RS2,7,0)),pkg_extract(execute_RS2,7,0));
      when "01" =>
        zz_62 <= pkg_cat(pkg_extract(execute_RS2,15,0),pkg_extract(execute_RS2,15,0));
      when others =>
        zz_62 <= pkg_extract(execute_RS2,31,0);
    end case;
  end process;

  dBus_cmd_payload_data <= zz_62;
  process(zz_118)
  begin
    case zz_118 is
      when "00" =>
        zz_63 <= pkg_stdLogicVector("0001");
      when "01" =>
        zz_63 <= pkg_stdLogicVector("0011");
      when others =>
        zz_63 <= pkg_stdLogicVector("1111");
    end case;
  end process;

  execute_DBusSimplePlugin_formalMask <= std_logic_vector(shift_left(unsigned(zz_63),to_integer(pkg_extract(zz_117,1,0))));
  zz_117 <= unsigned(execute_SRC_ADD);
  process(writeBack_MEMORY_READ_DATA,writeBack_MEMORY_ADDRESS_LOW)
  begin
    writeBack_DBusSimplePlugin_rspShifted <= writeBack_MEMORY_READ_DATA;
    case writeBack_MEMORY_ADDRESS_LOW is
      when "01" =>
        writeBack_DBusSimplePlugin_rspShifted(7 downto 0) <= pkg_extract(writeBack_MEMORY_READ_DATA,15,8);
      when "10" =>
        writeBack_DBusSimplePlugin_rspShifted(15 downto 0) <= pkg_extract(writeBack_MEMORY_READ_DATA,31,16);
      when "11" =>
        writeBack_DBusSimplePlugin_rspShifted(7 downto 0) <= pkg_extract(writeBack_MEMORY_READ_DATA,31,24);
      when others =>
    end case;
  end process;

  zz_64 <= (pkg_extract(writeBack_DBusSimplePlugin_rspShifted,7) and (not pkg_extract(writeBack_INSTRUCTION,14)));
  process(zz_64,writeBack_DBusSimplePlugin_rspShifted)
  begin
    zz_65(31) <= zz_64;
    zz_65(30) <= zz_64;
    zz_65(29) <= zz_64;
    zz_65(28) <= zz_64;
    zz_65(27) <= zz_64;
    zz_65(26) <= zz_64;
    zz_65(25) <= zz_64;
    zz_65(24) <= zz_64;
    zz_65(23) <= zz_64;
    zz_65(22) <= zz_64;
    zz_65(21) <= zz_64;
    zz_65(20) <= zz_64;
    zz_65(19) <= zz_64;
    zz_65(18) <= zz_64;
    zz_65(17) <= zz_64;
    zz_65(16) <= zz_64;
    zz_65(15) <= zz_64;
    zz_65(14) <= zz_64;
    zz_65(13) <= zz_64;
    zz_65(12) <= zz_64;
    zz_65(11) <= zz_64;
    zz_65(10) <= zz_64;
    zz_65(9) <= zz_64;
    zz_65(8) <= zz_64;
    zz_65(7 downto 0) <= pkg_extract(writeBack_DBusSimplePlugin_rspShifted,7,0);
  end process;

  zz_66 <= (pkg_extract(writeBack_DBusSimplePlugin_rspShifted,15) and (not pkg_extract(writeBack_INSTRUCTION,14)));
  process(zz_66,writeBack_DBusSimplePlugin_rspShifted)
  begin
    zz_67(31) <= zz_66;
    zz_67(30) <= zz_66;
    zz_67(29) <= zz_66;
    zz_67(28) <= zz_66;
    zz_67(27) <= zz_66;
    zz_67(26) <= zz_66;
    zz_67(25) <= zz_66;
    zz_67(24) <= zz_66;
    zz_67(23) <= zz_66;
    zz_67(22) <= zz_66;
    zz_67(21) <= zz_66;
    zz_67(20) <= zz_66;
    zz_67(19) <= zz_66;
    zz_67(18) <= zz_66;
    zz_67(17) <= zz_66;
    zz_67(16) <= zz_66;
    zz_67(15 downto 0) <= pkg_extract(writeBack_DBusSimplePlugin_rspShifted,15,0);
  end process;

  process(zz_140,zz_65,zz_67,writeBack_DBusSimplePlugin_rspShifted)
  begin
    case zz_140 is
      when "00" =>
        writeBack_DBusSimplePlugin_rspFormated <= zz_65;
      when "01" =>
        writeBack_DBusSimplePlugin_rspFormated <= zz_67;
      when others =>
        writeBack_DBusSimplePlugin_rspFormated <= writeBack_DBusSimplePlugin_rspShifted;
    end case;
  end process;

  process(CsrPlugin_forceMachineWire)
  begin
    CsrPlugin_privilege <= pkg_unsigned("11");
    if CsrPlugin_forceMachineWire = '1' then
      CsrPlugin_privilege <= pkg_unsigned("11");
    end if;
  end process;

  CsrPlugin_misa_base <= pkg_unsigned("01");
  CsrPlugin_misa_extensions <= pkg_stdLogicVector("00000000000000000001000010");
  CsrPlugin_mtvec_mode <= pkg_stdLogicVector("00");
  CsrPlugin_mtvec_base <= pkg_unsigned("100000000000000000000000001000");
  zz_68 <= (CsrPlugin_mip_MTIP and CsrPlugin_mie_MTIE);
  zz_69 <= (CsrPlugin_mip_MSIP and CsrPlugin_mie_MSIE);
  zz_70 <= (CsrPlugin_mip_MEIP and CsrPlugin_mie_MEIE);
  CsrPlugin_exception <= pkg_toStdLogic(false);
  CsrPlugin_lastStageWasWfi <= pkg_toStdLogic(false);
  CsrPlugin_pipelineLiberator_active <= ((CsrPlugin_interrupt_valid and CsrPlugin_allowInterrupts) and decode_arbitration_isValid);
  process(CsrPlugin_pipelineLiberator_pcValids_2,CsrPlugin_hadException)
  begin
    CsrPlugin_pipelineLiberator_done <= CsrPlugin_pipelineLiberator_pcValids_2;
    if CsrPlugin_hadException = '1' then
      CsrPlugin_pipelineLiberator_done <= pkg_toStdLogic(false);
    end if;
  end process;

  CsrPlugin_interruptJump <= ((CsrPlugin_interrupt_valid and CsrPlugin_pipelineLiberator_done) and CsrPlugin_allowInterrupts);
  CsrPlugin_targetPrivilege <= CsrPlugin_interrupt_targetPrivilege;
  CsrPlugin_trapCause <= CsrPlugin_interrupt_code;
  process(CsrPlugin_targetPrivilege,CsrPlugin_mtvec_mode)
  begin
    CsrPlugin_xtvec_mode <= pkg_stdLogicVector("XX");
    case CsrPlugin_targetPrivilege is
      when "11" =>
        CsrPlugin_xtvec_mode <= CsrPlugin_mtvec_mode;
      when others =>
    end case;
  end process;

  process(CsrPlugin_targetPrivilege,CsrPlugin_mtvec_base)
  begin
    CsrPlugin_xtvec_base <= pkg_unsigned("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    case CsrPlugin_targetPrivilege is
      when "11" =>
        CsrPlugin_xtvec_base <= CsrPlugin_mtvec_base;
      when others =>
    end case;
  end process;

  contextSwitching <= CsrPlugin_jumpInterface_valid;
  execute_CsrPlugin_blockedBySideEffects <= pkg_toStdLogic(pkg_cat(pkg_toStdLogicVector(writeBack_arbitration_isValid),pkg_toStdLogicVector(memory_arbitration_isValid)) /= pkg_stdLogicVector("00"));
  process(execute_CsrPlugin_csr_768,execute_CsrPlugin_csr_836,execute_CsrPlugin_csr_772,execute_CsrPlugin_csr_834,execute_CSR_READ_OPCODE,CsrPlugin_privilege,execute_CsrPlugin_csrAddress,execute_arbitration_isValid,execute_IS_CSR)
  begin
    execute_CsrPlugin_illegalAccess <= pkg_toStdLogic(true);
    if execute_CsrPlugin_csr_768 = '1' then
      execute_CsrPlugin_illegalAccess <= pkg_toStdLogic(false);
    end if;
    if execute_CsrPlugin_csr_836 = '1' then
      execute_CsrPlugin_illegalAccess <= pkg_toStdLogic(false);
    end if;
    if execute_CsrPlugin_csr_772 = '1' then
      execute_CsrPlugin_illegalAccess <= pkg_toStdLogic(false);
    end if;
    if execute_CsrPlugin_csr_834 = '1' then
      if execute_CSR_READ_OPCODE = '1' then
        execute_CsrPlugin_illegalAccess <= pkg_toStdLogic(false);
      end if;
    end if;
    if pkg_toStdLogic(CsrPlugin_privilege < unsigned(pkg_extract(execute_CsrPlugin_csrAddress,9,8))) = '1' then
      execute_CsrPlugin_illegalAccess <= pkg_toStdLogic(true);
    end if;
    if ((not execute_arbitration_isValid) or (not execute_IS_CSR)) = '1' then
      execute_CsrPlugin_illegalAccess <= pkg_toStdLogic(false);
    end if;
  end process;

  process(execute_arbitration_isValid,execute_ENV_CTRL,CsrPlugin_privilege,execute_INSTRUCTION)
  begin
    execute_CsrPlugin_illegalInstruction <= pkg_toStdLogic(false);
    if (execute_arbitration_isValid and pkg_toStdLogic(execute_ENV_CTRL = EnvCtrlEnum_defaultEncoding_XRET)) = '1' then
      if pkg_toStdLogic(CsrPlugin_privilege < unsigned(pkg_extract(execute_INSTRUCTION,29,28))) = '1' then
        execute_CsrPlugin_illegalInstruction <= pkg_toStdLogic(true);
      end if;
    end if;
  end process;

  execute_CsrPlugin_writeInstruction <= ((execute_arbitration_isValid and execute_IS_CSR) and execute_CSR_WRITE_OPCODE);
  execute_CsrPlugin_readInstruction <= ((execute_arbitration_isValid and execute_IS_CSR) and execute_CSR_READ_OPCODE);
  execute_CsrPlugin_writeEnable <= ((execute_CsrPlugin_writeInstruction and (not execute_CsrPlugin_blockedBySideEffects)) and (not execute_arbitration_isStuckByOthers));
  execute_CsrPlugin_readEnable <= ((execute_CsrPlugin_readInstruction and (not execute_CsrPlugin_blockedBySideEffects)) and (not execute_arbitration_isStuckByOthers));
  execute_CsrPlugin_readToWriteData <= execute_CsrPlugin_readData;
  process(zz_141,execute_SRC1,execute_INSTRUCTION,execute_CsrPlugin_readToWriteData)
  begin
    case zz_141 is
      when '0' =>
        execute_CsrPlugin_writeData <= execute_SRC1;
      when others =>
        execute_CsrPlugin_writeData <= pkg_mux(pkg_extract(execute_INSTRUCTION,12),(execute_CsrPlugin_readToWriteData and pkg_not(execute_SRC1)),(execute_CsrPlugin_readToWriteData or execute_SRC1));
    end case;
  end process;

  execute_CsrPlugin_csrAddress <= pkg_extract(execute_INSTRUCTION,31,20);
  zz_72 <= pkg_toStdLogic((decode_INSTRUCTION and pkg_stdLogicVector("00000000000000000000000001010000")) = pkg_stdLogicVector("00000000000000000000000000010000"));
  zz_73 <= pkg_toStdLogic((decode_INSTRUCTION and pkg_stdLogicVector("00000000000000000000000001001000")) = pkg_stdLogicVector("00000000000000000000000001001000"));
  zz_74 <= pkg_toStdLogic((decode_INSTRUCTION and pkg_stdLogicVector("00000000000000000100000001010000")) = pkg_stdLogicVector("00000000000000000100000001010000"));
  zz_75 <= pkg_toStdLogic((decode_INSTRUCTION and pkg_stdLogicVector("00000000000000000110000000000100")) = pkg_stdLogicVector("00000000000000000010000000000000"));
  zz_76 <= pkg_toStdLogic((decode_INSTRUCTION and pkg_stdLogicVector("00000000000000000000000000000100")) = pkg_stdLogicVector("00000000000000000000000000000100"));
  zz_71 <= pkg_cat(pkg_toStdLogicVector(pkg_toStdLogic(pkg_cat(pkg_toStdLogicVector(zz_76),pkg_toStdLogicVector(pkg_toStdLogic(zz_144 = zz_145))) /= pkg_stdLogicVector("00"))),pkg_cat(pkg_toStdLogicVector(pkg_toStdLogic(pkg_cat(pkg_toStdLogicVector(zz_76),pkg_toStdLogicVector(zz_146)) /= pkg_stdLogicVector("00"))),pkg_cat(pkg_toStdLogicVector(pkg_toStdLogic(pkg_cat(zz_147,zz_148) /= pkg_stdLogicVector("00"))),pkg_cat(pkg_toStdLogicVector(pkg_toStdLogic(zz_149 /= zz_150)),pkg_cat(pkg_toStdLogicVector(zz_151),pkg_cat(zz_152,zz_153))))));
  zz_77 <= pkg_extract(zz_71,2,1);
  zz_38 <= zz_77;
  zz_78 <= pkg_extract(zz_71,5,5);
  zz_37 <= zz_78;
  zz_79 <= pkg_extract(zz_71,8,7);
  zz_36 <= zz_79;
  zz_80 <= pkg_extract(zz_71,12,11);
  zz_35 <= zz_80;
  zz_81 <= pkg_extract(zz_71,16,15);
  zz_34 <= zz_81;
  zz_82 <= pkg_extract(zz_71,21,20);
  zz_33 <= zz_82;
  zz_83 <= pkg_extract(zz_71,25,24);
  zz_32 <= zz_83;
  decode_RegFilePlugin_regFileReadAddress1 <= unsigned(pkg_extract(decode_INSTRUCTION_ANTICIPATED,19,15));
  decode_RegFilePlugin_regFileReadAddress2 <= unsigned(pkg_extract(decode_INSTRUCTION_ANTICIPATED,24,20));
  decode_RegFilePlugin_rs1Data <= zz_115;
  decode_RegFilePlugin_rs2Data <= zz_116;
  process(zz_30,writeBack_arbitration_isFiring,zz_84)
  begin
    lastStageRegFileWrite_valid <= (zz_30 and writeBack_arbitration_isFiring);
    if zz_84 = '1' then
      lastStageRegFileWrite_valid <= pkg_toStdLogic(true);
    end if;
  end process;

  lastStageRegFileWrite_payload_address <= unsigned(pkg_extract(zz_29,11,7));
  lastStageRegFileWrite_payload_data <= zz_43;
  process(execute_ALU_BITWISE_CTRL,execute_SRC1,execute_SRC2)
  begin
    case execute_ALU_BITWISE_CTRL is
      when AluBitwiseCtrlEnum_defaultEncoding_AND_1 =>
        execute_IntAluPlugin_bitwise <= (execute_SRC1 and execute_SRC2);
      when AluBitwiseCtrlEnum_defaultEncoding_OR_1 =>
        execute_IntAluPlugin_bitwise <= (execute_SRC1 or execute_SRC2);
      when others =>
        execute_IntAluPlugin_bitwise <= (execute_SRC1 xor execute_SRC2);
    end case;
  end process;

  process(execute_ALU_CTRL,execute_IntAluPlugin_bitwise,execute_SRC_LESS,execute_SRC_ADD_SUB)
  begin
    case execute_ALU_CTRL is
      when AluCtrlEnum_defaultEncoding_BITWISE =>
        zz_85 <= execute_IntAluPlugin_bitwise;
      when AluCtrlEnum_defaultEncoding_SLT_SLTU =>
        zz_85 <= pkg_resize(pkg_toStdLogicVector(execute_SRC_LESS),32);
      when others =>
        zz_85 <= execute_SRC_ADD_SUB;
    end case;
  end process;

  process(decode_SRC1_CTRL,zz_25,decode_INSTRUCTION)
  begin
    case decode_SRC1_CTRL is
      when Src1CtrlEnum_defaultEncoding_RS =>
        zz_86 <= zz_25;
      when Src1CtrlEnum_defaultEncoding_PC_INCREMENT =>
        zz_86 <= pkg_resize(pkg_stdLogicVector("100"),32);
      when Src1CtrlEnum_defaultEncoding_IMU =>
        zz_86 <= pkg_cat(pkg_extract(decode_INSTRUCTION,31,12),std_logic_vector(pkg_unsigned("000000000000")));
      when others =>
        zz_86 <= pkg_resize(pkg_extract(decode_INSTRUCTION,19,15),32);
    end case;
  end process;

  zz_87 <= pkg_extract(pkg_extract(decode_INSTRUCTION,31,20),11);
  process(zz_87)
  begin
    zz_88(19) <= zz_87;
    zz_88(18) <= zz_87;
    zz_88(17) <= zz_87;
    zz_88(16) <= zz_87;
    zz_88(15) <= zz_87;
    zz_88(14) <= zz_87;
    zz_88(13) <= zz_87;
    zz_88(12) <= zz_87;
    zz_88(11) <= zz_87;
    zz_88(10) <= zz_87;
    zz_88(9) <= zz_87;
    zz_88(8) <= zz_87;
    zz_88(7) <= zz_87;
    zz_88(6) <= zz_87;
    zz_88(5) <= zz_87;
    zz_88(4) <= zz_87;
    zz_88(3) <= zz_87;
    zz_88(2) <= zz_87;
    zz_88(1) <= zz_87;
    zz_88(0) <= zz_87;
  end process;

  zz_89 <= pkg_extract(pkg_cat(pkg_extract(decode_INSTRUCTION,31,25),pkg_extract(decode_INSTRUCTION,11,7)),11);
  process(zz_89)
  begin
    zz_90(19) <= zz_89;
    zz_90(18) <= zz_89;
    zz_90(17) <= zz_89;
    zz_90(16) <= zz_89;
    zz_90(15) <= zz_89;
    zz_90(14) <= zz_89;
    zz_90(13) <= zz_89;
    zz_90(12) <= zz_89;
    zz_90(11) <= zz_89;
    zz_90(10) <= zz_89;
    zz_90(9) <= zz_89;
    zz_90(8) <= zz_89;
    zz_90(7) <= zz_89;
    zz_90(6) <= zz_89;
    zz_90(5) <= zz_89;
    zz_90(4) <= zz_89;
    zz_90(3) <= zz_89;
    zz_90(2) <= zz_89;
    zz_90(1) <= zz_89;
    zz_90(0) <= zz_89;
  end process;

  process(decode_SRC2_CTRL,zz_23,zz_88,decode_INSTRUCTION,zz_90,zz_22)
  begin
    case decode_SRC2_CTRL is
      when Src2CtrlEnum_defaultEncoding_RS =>
        zz_91 <= zz_23;
      when Src2CtrlEnum_defaultEncoding_IMI =>
        zz_91 <= pkg_cat(zz_88,pkg_extract(decode_INSTRUCTION,31,20));
      when Src2CtrlEnum_defaultEncoding_IMS =>
        zz_91 <= pkg_cat(zz_90,pkg_cat(pkg_extract(decode_INSTRUCTION,31,25),pkg_extract(decode_INSTRUCTION,11,7)));
      when others =>
        zz_91 <= std_logic_vector(zz_22);
    end case;
  end process;

  process(execute_SRC1,execute_SRC_USE_SUB_LESS,execute_SRC2,execute_SRC2_FORCE_ZERO)
  begin
    execute_SrcPlugin_addSub <= std_logic_vector(((signed(execute_SRC1) + signed(pkg_mux(execute_SRC_USE_SUB_LESS,pkg_not(execute_SRC2),execute_SRC2))) + pkg_mux(execute_SRC_USE_SUB_LESS,pkg_signed("00000000000000000000000000000001"),pkg_signed("00000000000000000000000000000000"))));
    if execute_SRC2_FORCE_ZERO = '1' then
      execute_SrcPlugin_addSub <= execute_SRC1;
    end if;
  end process;

  execute_SrcPlugin_less <= pkg_mux(pkg_toStdLogic(pkg_extract(execute_SRC1,31) = pkg_extract(execute_SRC2,31)),pkg_extract(execute_SrcPlugin_addSub,31),pkg_mux(execute_SRC_LESS_UNSIGNED,pkg_extract(execute_SRC2,31),pkg_extract(execute_SRC1,31)));
  execute_LightShifterPlugin_isShift <= pkg_toStdLogic(execute_SHIFT_CTRL /= ShiftCtrlEnum_defaultEncoding_DISABLE_1);
  execute_LightShifterPlugin_amplitude <= pkg_mux(execute_LightShifterPlugin_isActive,execute_LightShifterPlugin_amplitudeReg,unsigned(pkg_extract(execute_SRC2,4,0)));
  execute_LightShifterPlugin_shiftInput <= pkg_mux(execute_LightShifterPlugin_isActive,memory_REGFILE_WRITE_DATA,execute_SRC1);
  execute_LightShifterPlugin_done <= pkg_toStdLogic(pkg_extract(execute_LightShifterPlugin_amplitude,4,1) = pkg_unsigned("0000"));
  process(execute_SHIFT_CTRL,execute_LightShifterPlugin_shiftInput)
  begin
    case execute_SHIFT_CTRL is
      when ShiftCtrlEnum_defaultEncoding_SLL_1 =>
        zz_92 <= std_logic_vector(shift_left(unsigned(execute_LightShifterPlugin_shiftInput),1));
      when others =>
        zz_92 <= std_logic_vector(pkg_shiftRight(signed(pkg_cat(pkg_toStdLogicVector((pkg_toStdLogic(execute_SHIFT_CTRL = ShiftCtrlEnum_defaultEncoding_SRA_1) and pkg_extract(execute_LightShifterPlugin_shiftInput,31))),execute_LightShifterPlugin_shiftInput)),1));
    end case;
  end process;

  process(zz_95,zz_96,decode_INSTRUCTION,zz_129,zz_130,writeBack_INSTRUCTION,zz_131,zz_132,memory_INSTRUCTION,zz_133,zz_134,execute_INSTRUCTION,decode_RS1_USE)
  begin
    zz_93 <= pkg_toStdLogic(false);
    if zz_95 = '1' then
      if pkg_toStdLogic(zz_96 = pkg_extract(decode_INSTRUCTION,19,15)) = '1' then
        zz_93 <= pkg_toStdLogic(true);
      end if;
    end if;
    if zz_129 = '1' then
      if zz_130 = '1' then
        if pkg_toStdLogic(pkg_extract(writeBack_INSTRUCTION,11,7) = pkg_extract(decode_INSTRUCTION,19,15)) = '1' then
          zz_93 <= pkg_toStdLogic(true);
        end if;
      end if;
    end if;
    if zz_131 = '1' then
      if zz_132 = '1' then
        if pkg_toStdLogic(pkg_extract(memory_INSTRUCTION,11,7) = pkg_extract(decode_INSTRUCTION,19,15)) = '1' then
          zz_93 <= pkg_toStdLogic(true);
        end if;
      end if;
    end if;
    if zz_133 = '1' then
      if zz_134 = '1' then
        if pkg_toStdLogic(pkg_extract(execute_INSTRUCTION,11,7) = pkg_extract(decode_INSTRUCTION,19,15)) = '1' then
          zz_93 <= pkg_toStdLogic(true);
        end if;
      end if;
    end if;
    if (not decode_RS1_USE) = '1' then
      zz_93 <= pkg_toStdLogic(false);
    end if;
  end process;

  process(zz_95,zz_96,decode_INSTRUCTION,zz_129,zz_130,writeBack_INSTRUCTION,zz_131,zz_132,memory_INSTRUCTION,zz_133,zz_134,execute_INSTRUCTION,decode_RS2_USE)
  begin
    zz_94 <= pkg_toStdLogic(false);
    if zz_95 = '1' then
      if pkg_toStdLogic(zz_96 = pkg_extract(decode_INSTRUCTION,24,20)) = '1' then
        zz_94 <= pkg_toStdLogic(true);
      end if;
    end if;
    if zz_129 = '1' then
      if zz_130 = '1' then
        if pkg_toStdLogic(pkg_extract(writeBack_INSTRUCTION,11,7) = pkg_extract(decode_INSTRUCTION,24,20)) = '1' then
          zz_94 <= pkg_toStdLogic(true);
        end if;
      end if;
    end if;
    if zz_131 = '1' then
      if zz_132 = '1' then
        if pkg_toStdLogic(pkg_extract(memory_INSTRUCTION,11,7) = pkg_extract(decode_INSTRUCTION,24,20)) = '1' then
          zz_94 <= pkg_toStdLogic(true);
        end if;
      end if;
    end if;
    if zz_133 = '1' then
      if zz_134 = '1' then
        if pkg_toStdLogic(pkg_extract(execute_INSTRUCTION,11,7) = pkg_extract(decode_INSTRUCTION,24,20)) = '1' then
          zz_94 <= pkg_toStdLogic(true);
        end if;
      end if;
    end if;
    if (not decode_RS2_USE) = '1' then
      zz_94 <= pkg_toStdLogic(false);
    end if;
  end process;

  execute_BranchPlugin_eq <= pkg_toStdLogic(execute_SRC1 = execute_SRC2);
  zz_97 <= pkg_extract(execute_INSTRUCTION,14,12);
  process(zz_97,execute_BranchPlugin_eq,execute_SRC_LESS)
  begin
    if (zz_97 = pkg_stdLogicVector("000")) then
        zz_98 <= execute_BranchPlugin_eq;
    elsif (zz_97 = pkg_stdLogicVector("001")) then
        zz_98 <= (not execute_BranchPlugin_eq);
    elsif (pkg_toStdLogic((zz_97 and pkg_stdLogicVector("101")) = pkg_stdLogicVector("101")) = '1') then
        zz_98 <= (not execute_SRC_LESS);
    else
        zz_98 <= execute_SRC_LESS;
    end if;
  end process;

  process(execute_BRANCH_CTRL,zz_98)
  begin
    case execute_BRANCH_CTRL is
      when BranchCtrlEnum_defaultEncoding_INC =>
        zz_99 <= pkg_toStdLogic(false);
      when BranchCtrlEnum_defaultEncoding_JAL =>
        zz_99 <= pkg_toStdLogic(true);
      when BranchCtrlEnum_defaultEncoding_JALR =>
        zz_99 <= pkg_toStdLogic(true);
      when others =>
        zz_99 <= zz_98;
    end case;
  end process;

  execute_BranchPlugin_branch_src1 <= pkg_mux(pkg_toStdLogic(execute_BRANCH_CTRL = BranchCtrlEnum_defaultEncoding_JALR),unsigned(execute_RS1),execute_PC);
  zz_100 <= pkg_extract(pkg_cat(pkg_cat(pkg_cat(pkg_toStdLogicVector(pkg_extract(execute_INSTRUCTION,31)),pkg_extract(execute_INSTRUCTION,19,12)),pkg_toStdLogicVector(pkg_extract(execute_INSTRUCTION,20))),pkg_extract(execute_INSTRUCTION,30,21)),19);
  process(zz_100)
  begin
    zz_101(10) <= zz_100;
    zz_101(9) <= zz_100;
    zz_101(8) <= zz_100;
    zz_101(7) <= zz_100;
    zz_101(6) <= zz_100;
    zz_101(5) <= zz_100;
    zz_101(4) <= zz_100;
    zz_101(3) <= zz_100;
    zz_101(2) <= zz_100;
    zz_101(1) <= zz_100;
    zz_101(0) <= zz_100;
  end process;

  zz_102 <= pkg_extract(pkg_extract(execute_INSTRUCTION,31,20),11);
  process(zz_102)
  begin
    zz_103(19) <= zz_102;
    zz_103(18) <= zz_102;
    zz_103(17) <= zz_102;
    zz_103(16) <= zz_102;
    zz_103(15) <= zz_102;
    zz_103(14) <= zz_102;
    zz_103(13) <= zz_102;
    zz_103(12) <= zz_102;
    zz_103(11) <= zz_102;
    zz_103(10) <= zz_102;
    zz_103(9) <= zz_102;
    zz_103(8) <= zz_102;
    zz_103(7) <= zz_102;
    zz_103(6) <= zz_102;
    zz_103(5) <= zz_102;
    zz_103(4) <= zz_102;
    zz_103(3) <= zz_102;
    zz_103(2) <= zz_102;
    zz_103(1) <= zz_102;
    zz_103(0) <= zz_102;
  end process;

  zz_104 <= pkg_extract(pkg_cat(pkg_cat(pkg_cat(pkg_toStdLogicVector(pkg_extract(execute_INSTRUCTION,31)),pkg_toStdLogicVector(pkg_extract(execute_INSTRUCTION,7))),pkg_extract(execute_INSTRUCTION,30,25)),pkg_extract(execute_INSTRUCTION,11,8)),11);
  process(zz_104)
  begin
    zz_105(18) <= zz_104;
    zz_105(17) <= zz_104;
    zz_105(16) <= zz_104;
    zz_105(15) <= zz_104;
    zz_105(14) <= zz_104;
    zz_105(13) <= zz_104;
    zz_105(12) <= zz_104;
    zz_105(11) <= zz_104;
    zz_105(10) <= zz_104;
    zz_105(9) <= zz_104;
    zz_105(8) <= zz_104;
    zz_105(7) <= zz_104;
    zz_105(6) <= zz_104;
    zz_105(5) <= zz_104;
    zz_105(4) <= zz_104;
    zz_105(3) <= zz_104;
    zz_105(2) <= zz_104;
    zz_105(1) <= zz_104;
    zz_105(0) <= zz_104;
  end process;

  process(execute_BRANCH_CTRL,zz_101,execute_INSTRUCTION,zz_103,zz_105)
  begin
    case execute_BRANCH_CTRL is
      when BranchCtrlEnum_defaultEncoding_JAL =>
        zz_106 <= pkg_cat(pkg_cat(zz_101,pkg_cat(pkg_cat(pkg_cat(pkg_toStdLogicVector(pkg_extract(execute_INSTRUCTION,31)),pkg_extract(execute_INSTRUCTION,19,12)),pkg_toStdLogicVector(pkg_extract(execute_INSTRUCTION,20))),pkg_extract(execute_INSTRUCTION,30,21))),pkg_toStdLogicVector(pkg_toStdLogic(false)));
      when BranchCtrlEnum_defaultEncoding_JALR =>
        zz_106 <= pkg_cat(zz_103,pkg_extract(execute_INSTRUCTION,31,20));
      when others =>
        zz_106 <= pkg_cat(pkg_cat(zz_105,pkg_cat(pkg_cat(pkg_cat(pkg_toStdLogicVector(pkg_extract(execute_INSTRUCTION,31)),pkg_toStdLogicVector(pkg_extract(execute_INSTRUCTION,7))),pkg_extract(execute_INSTRUCTION,30,25)),pkg_extract(execute_INSTRUCTION,11,8))),pkg_toStdLogicVector(pkg_toStdLogic(false)));
    end case;
  end process;

  execute_BranchPlugin_branch_src2 <= unsigned(zz_106);
  execute_BranchPlugin_branchAdder <= (execute_BranchPlugin_branch_src1 + execute_BranchPlugin_branch_src2);
  BranchPlugin_jumpInterface_valid <= ((memory_arbitration_isValid and memory_BRANCH_DO) and (not pkg_toStdLogic(false)));
  BranchPlugin_jumpInterface_payload <= memory_BRANCH_CALC;
  process(debug_bus_cmd_valid,zz_135,debug_bus_cmd_payload_wr,IBusSimplePlugin_injectionPort_ready)
  begin
    zz_119 <= pkg_toStdLogic(true);
    if debug_bus_cmd_valid = '1' then
      case zz_135 is
        when "000000" =>
        when "000001" =>
          if debug_bus_cmd_payload_wr = '1' then
            zz_119 <= IBusSimplePlugin_injectionPort_ready;
          end if;
        when others =>
      end case;
    end if;
  end process;

  process(DebugPlugin_busReadDataReg,zz_107,DebugPlugin_resetIt,DebugPlugin_haltIt,DebugPlugin_isPipBusy,DebugPlugin_haltedByBreak,DebugPlugin_stepIt)
  begin
    debug_bus_rsp_data <= DebugPlugin_busReadDataReg;
    if (not zz_107) = '1' then
      debug_bus_rsp_data(0) <= DebugPlugin_resetIt;
      debug_bus_rsp_data(1) <= DebugPlugin_haltIt;
      debug_bus_rsp_data(2) <= DebugPlugin_isPipBusy;
      debug_bus_rsp_data(3) <= DebugPlugin_haltedByBreak;
      debug_bus_rsp_data(4) <= DebugPlugin_stepIt;
    end if;
  end process;

  process(debug_bus_cmd_valid,zz_135,debug_bus_cmd_payload_wr)
  begin
    IBusSimplePlugin_injectionPort_valid <= pkg_toStdLogic(false);
    if debug_bus_cmd_valid = '1' then
      case zz_135 is
        when "000000" =>
        when "000001" =>
          if debug_bus_cmd_payload_wr = '1' then
            IBusSimplePlugin_injectionPort_valid <= pkg_toStdLogic(true);
          end if;
        when others =>
      end case;
    end if;
  end process;

  IBusSimplePlugin_injectionPort_payload <= debug_bus_cmd_payload_data;
  debug_resetOut <= DebugPlugin_resetIt_regNext;
  zz_19 <= decode_BRANCH_CTRL;
  zz_17 <= zz_36;
  zz_20 <= decode_to_execute_BRANCH_CTRL;
  zz_24 <= zz_32;
  zz_16 <= decode_SHIFT_CTRL;
  zz_14 <= zz_38;
  zz_21 <= decode_to_execute_SHIFT_CTRL;
  zz_13 <= decode_ENV_CTRL;
  zz_10 <= execute_ENV_CTRL;
  zz_8 <= memory_ENV_CTRL;
  zz_11 <= zz_37;
  zz_41 <= decode_to_execute_ENV_CTRL;
  zz_40 <= execute_to_memory_ENV_CTRL;
  zz_42 <= memory_to_writeBack_ENV_CTRL;
  zz_6 <= decode_ALU_CTRL;
  zz_4 <= zz_34;
  zz_27 <= decode_to_execute_ALU_CTRL;
  zz_3 <= decode_ALU_BITWISE_CTRL;
  zz_1 <= zz_33;
  zz_28 <= decode_to_execute_ALU_BITWISE_CTRL;
  zz_26 <= zz_35;
  decode_arbitration_isFlushed <= (pkg_toStdLogic(pkg_cat(pkg_toStdLogicVector(writeBack_arbitration_flushNext),pkg_cat(pkg_toStdLogicVector(memory_arbitration_flushNext),pkg_toStdLogicVector(execute_arbitration_flushNext))) /= pkg_stdLogicVector("000")) or pkg_toStdLogic(pkg_cat(pkg_toStdLogicVector(writeBack_arbitration_flushIt),pkg_cat(pkg_toStdLogicVector(memory_arbitration_flushIt),pkg_cat(pkg_toStdLogicVector(execute_arbitration_flushIt),pkg_toStdLogicVector(decode_arbitration_flushIt)))) /= pkg_stdLogicVector("0000")));
  execute_arbitration_isFlushed <= (pkg_toStdLogic(pkg_cat(pkg_toStdLogicVector(writeBack_arbitration_flushNext),pkg_toStdLogicVector(memory_arbitration_flushNext)) /= pkg_stdLogicVector("00")) or pkg_toStdLogic(pkg_cat(pkg_toStdLogicVector(writeBack_arbitration_flushIt),pkg_cat(pkg_toStdLogicVector(memory_arbitration_flushIt),pkg_toStdLogicVector(execute_arbitration_flushIt))) /= pkg_stdLogicVector("000")));
  memory_arbitration_isFlushed <= (pkg_toStdLogic(pkg_toStdLogicVector(writeBack_arbitration_flushNext) /= pkg_stdLogicVector("0")) or pkg_toStdLogic(pkg_cat(pkg_toStdLogicVector(writeBack_arbitration_flushIt),pkg_toStdLogicVector(memory_arbitration_flushIt)) /= pkg_stdLogicVector("00")));
  writeBack_arbitration_isFlushed <= (pkg_toStdLogic(false) or pkg_toStdLogic(pkg_toStdLogicVector(writeBack_arbitration_flushIt) /= pkg_stdLogicVector("0")));
  decode_arbitration_isStuckByOthers <= (decode_arbitration_haltByOther or (((pkg_toStdLogic(false) or execute_arbitration_isStuck) or memory_arbitration_isStuck) or writeBack_arbitration_isStuck));
  decode_arbitration_isStuck <= (decode_arbitration_haltItself or decode_arbitration_isStuckByOthers);
  decode_arbitration_isMoving <= ((not decode_arbitration_isStuck) and (not decode_arbitration_removeIt));
  decode_arbitration_isFiring <= ((decode_arbitration_isValid and (not decode_arbitration_isStuck)) and (not decode_arbitration_removeIt));
  execute_arbitration_isStuckByOthers <= (execute_arbitration_haltByOther or ((pkg_toStdLogic(false) or memory_arbitration_isStuck) or writeBack_arbitration_isStuck));
  execute_arbitration_isStuck <= (execute_arbitration_haltItself or execute_arbitration_isStuckByOthers);
  execute_arbitration_isMoving <= ((not execute_arbitration_isStuck) and (not execute_arbitration_removeIt));
  execute_arbitration_isFiring <= ((execute_arbitration_isValid and (not execute_arbitration_isStuck)) and (not execute_arbitration_removeIt));
  memory_arbitration_isStuckByOthers <= (memory_arbitration_haltByOther or (pkg_toStdLogic(false) or writeBack_arbitration_isStuck));
  memory_arbitration_isStuck <= (memory_arbitration_haltItself or memory_arbitration_isStuckByOthers);
  memory_arbitration_isMoving <= ((not memory_arbitration_isStuck) and (not memory_arbitration_removeIt));
  memory_arbitration_isFiring <= ((memory_arbitration_isValid and (not memory_arbitration_isStuck)) and (not memory_arbitration_removeIt));
  writeBack_arbitration_isStuckByOthers <= (writeBack_arbitration_haltByOther or pkg_toStdLogic(false));
  writeBack_arbitration_isStuck <= (writeBack_arbitration_haltItself or writeBack_arbitration_isStuckByOthers);
  writeBack_arbitration_isMoving <= ((not writeBack_arbitration_isStuck) and (not writeBack_arbitration_removeIt));
  writeBack_arbitration_isFiring <= ((writeBack_arbitration_isValid and (not writeBack_arbitration_isStuck)) and (not writeBack_arbitration_removeIt));
  process(zz_108)
  begin
    IBusSimplePlugin_injectionPort_ready <= pkg_toStdLogic(false);
    case zz_108 is
      when "000" =>
      when "001" =>
      when "010" =>
      when "011" =>
      when "100" =>
        IBusSimplePlugin_injectionPort_ready <= pkg_toStdLogic(true);
      when others =>
    end case;
  end process;

  process(execute_CsrPlugin_csr_768,CsrPlugin_mstatus_MPP,CsrPlugin_mstatus_MPIE,CsrPlugin_mstatus_MIE)
  begin
    zz_109 <= pkg_stdLogicVector("00000000000000000000000000000000");
    if execute_CsrPlugin_csr_768 = '1' then
      zz_109(12 downto 11) <= std_logic_vector(CsrPlugin_mstatus_MPP);
      zz_109(7 downto 7) <= pkg_toStdLogicVector(CsrPlugin_mstatus_MPIE);
      zz_109(3 downto 3) <= pkg_toStdLogicVector(CsrPlugin_mstatus_MIE);
    end if;
  end process;

  process(execute_CsrPlugin_csr_836,CsrPlugin_mip_MEIP,CsrPlugin_mip_MTIP,CsrPlugin_mip_MSIP)
  begin
    zz_110 <= pkg_stdLogicVector("00000000000000000000000000000000");
    if execute_CsrPlugin_csr_836 = '1' then
      zz_110(11 downto 11) <= pkg_toStdLogicVector(CsrPlugin_mip_MEIP);
      zz_110(7 downto 7) <= pkg_toStdLogicVector(CsrPlugin_mip_MTIP);
      zz_110(3 downto 3) <= pkg_toStdLogicVector(CsrPlugin_mip_MSIP);
    end if;
  end process;

  process(execute_CsrPlugin_csr_772,CsrPlugin_mie_MEIE,CsrPlugin_mie_MTIE,CsrPlugin_mie_MSIE)
  begin
    zz_111 <= pkg_stdLogicVector("00000000000000000000000000000000");
    if execute_CsrPlugin_csr_772 = '1' then
      zz_111(11 downto 11) <= pkg_toStdLogicVector(CsrPlugin_mie_MEIE);
      zz_111(7 downto 7) <= pkg_toStdLogicVector(CsrPlugin_mie_MTIE);
      zz_111(3 downto 3) <= pkg_toStdLogicVector(CsrPlugin_mie_MSIE);
    end if;
  end process;

  process(execute_CsrPlugin_csr_834,CsrPlugin_mcause_interrupt,CsrPlugin_mcause_exceptionCode)
  begin
    zz_112 <= pkg_stdLogicVector("00000000000000000000000000000000");
    if execute_CsrPlugin_csr_834 = '1' then
      zz_112(31 downto 31) <= pkg_toStdLogicVector(CsrPlugin_mcause_interrupt);
      zz_112(3 downto 0) <= std_logic_vector(CsrPlugin_mcause_exceptionCode);
    end if;
  end process;

  execute_CsrPlugin_readData <= ((zz_109 or zz_110) or (zz_111 or zz_112));
  zz_114 <= pkg_toStdLogic(false);
  process(io_mainClk, resetCtrl_systemReset)
  begin
    if resetCtrl_systemReset = '1' then
      IBusSimplePlugin_fetchPc_pcReg <= pkg_unsigned("10000000000000000000000000000000");
      IBusSimplePlugin_fetchPc_correctionReg <= pkg_toStdLogic(false);
      IBusSimplePlugin_fetchPc_booted <= pkg_toStdLogic(false);
      IBusSimplePlugin_fetchPc_inc <= pkg_toStdLogic(false);
      zz_51 <= pkg_toStdLogic(false);
      zz_53 <= pkg_toStdLogic(false);
      zz_55 <= pkg_toStdLogic(false);
      IBusSimplePlugin_injector_nextPcCalc_valids_0 <= pkg_toStdLogic(false);
      IBusSimplePlugin_injector_nextPcCalc_valids_1 <= pkg_toStdLogic(false);
      IBusSimplePlugin_injector_nextPcCalc_valids_2 <= pkg_toStdLogic(false);
      IBusSimplePlugin_injector_nextPcCalc_valids_3 <= pkg_toStdLogic(false);
      IBusSimplePlugin_injector_nextPcCalc_valids_4 <= pkg_toStdLogic(false);
      IBusSimplePlugin_injector_nextPcCalc_valids_5 <= pkg_toStdLogic(false);
      IBusSimplePlugin_pending_value <= pkg_unsigned("000");
      IBusSimplePlugin_rspJoin_rspBuffer_discardCounter <= pkg_unsigned("000");
      CsrPlugin_mstatus_MIE <= pkg_toStdLogic(false);
      CsrPlugin_mstatus_MPIE <= pkg_toStdLogic(false);
      CsrPlugin_mstatus_MPP <= pkg_unsigned("11");
      CsrPlugin_mie_MEIE <= pkg_toStdLogic(false);
      CsrPlugin_mie_MTIE <= pkg_toStdLogic(false);
      CsrPlugin_mie_MSIE <= pkg_toStdLogic(false);
      CsrPlugin_interrupt_valid <= pkg_toStdLogic(false);
      CsrPlugin_pipelineLiberator_pcValids_0 <= pkg_toStdLogic(false);
      CsrPlugin_pipelineLiberator_pcValids_1 <= pkg_toStdLogic(false);
      CsrPlugin_pipelineLiberator_pcValids_2 <= pkg_toStdLogic(false);
      CsrPlugin_hadException <= pkg_toStdLogic(false);
      execute_CsrPlugin_wfiWake <= pkg_toStdLogic(false);
      zz_84 <= pkg_toStdLogic(true);
      execute_LightShifterPlugin_isActive <= pkg_toStdLogic(false);
      zz_95 <= pkg_toStdLogic(false);
      execute_arbitration_isValid <= pkg_toStdLogic(false);
      memory_arbitration_isValid <= pkg_toStdLogic(false);
      writeBack_arbitration_isValid <= pkg_toStdLogic(false);
      zz_108 <= pkg_unsigned("000");
      memory_to_writeBack_REGFILE_WRITE_DATA <= pkg_stdLogicVector("00000000000000000000000000000000");
      memory_to_writeBack_INSTRUCTION <= pkg_stdLogicVector("00000000000000000000000000000000");
    elsif rising_edge(io_mainClk) then
      if IBusSimplePlugin_fetchPc_correction = '1' then
        IBusSimplePlugin_fetchPc_correctionReg <= pkg_toStdLogic(true);
      end if;
      if (IBusSimplePlugin_fetchPc_output_valid and IBusSimplePlugin_fetchPc_output_ready) = '1' then
        IBusSimplePlugin_fetchPc_correctionReg <= pkg_toStdLogic(false);
      end if;
      IBusSimplePlugin_fetchPc_booted <= pkg_toStdLogic(true);
      if (IBusSimplePlugin_fetchPc_correction or IBusSimplePlugin_fetchPc_pcRegPropagate) = '1' then
        IBusSimplePlugin_fetchPc_inc <= pkg_toStdLogic(false);
      end if;
      if (IBusSimplePlugin_fetchPc_output_valid and IBusSimplePlugin_fetchPc_output_ready) = '1' then
        IBusSimplePlugin_fetchPc_inc <= pkg_toStdLogic(true);
      end if;
      if ((not IBusSimplePlugin_fetchPc_output_valid) and IBusSimplePlugin_fetchPc_output_ready) = '1' then
        IBusSimplePlugin_fetchPc_inc <= pkg_toStdLogic(false);
      end if;
      if (IBusSimplePlugin_fetchPc_booted and ((IBusSimplePlugin_fetchPc_output_ready or IBusSimplePlugin_fetchPc_correction) or IBusSimplePlugin_fetchPc_pcRegPropagate)) = '1' then
        IBusSimplePlugin_fetchPc_pcReg <= IBusSimplePlugin_fetchPc_pc;
      end if;
      if IBusSimplePlugin_iBusRsp_flush = '1' then
        zz_51 <= pkg_toStdLogic(false);
      end if;
      if zz_49 = '1' then
        zz_51 <= (IBusSimplePlugin_iBusRsp_stages_0_output_valid and (not pkg_toStdLogic(false)));
      end if;
      if IBusSimplePlugin_iBusRsp_flush = '1' then
        zz_53 <= pkg_toStdLogic(false);
      end if;
      if IBusSimplePlugin_iBusRsp_stages_1_output_ready = '1' then
        zz_53 <= (IBusSimplePlugin_iBusRsp_stages_1_output_valid and (not IBusSimplePlugin_iBusRsp_flush));
      end if;
      if decode_arbitration_removeIt = '1' then
        zz_55 <= pkg_toStdLogic(false);
      end if;
      if IBusSimplePlugin_iBusRsp_output_ready = '1' then
        zz_55 <= (IBusSimplePlugin_iBusRsp_output_valid and (not IBusSimplePlugin_externalFlush));
      end if;
      if IBusSimplePlugin_fetchPc_flushed = '1' then
        IBusSimplePlugin_injector_nextPcCalc_valids_0 <= pkg_toStdLogic(false);
      end if;
      if (not (not IBusSimplePlugin_iBusRsp_stages_1_input_ready)) = '1' then
        IBusSimplePlugin_injector_nextPcCalc_valids_0 <= pkg_toStdLogic(true);
      end if;
      if IBusSimplePlugin_fetchPc_flushed = '1' then
        IBusSimplePlugin_injector_nextPcCalc_valids_1 <= pkg_toStdLogic(false);
      end if;
      if (not (not IBusSimplePlugin_iBusRsp_stages_2_input_ready)) = '1' then
        IBusSimplePlugin_injector_nextPcCalc_valids_1 <= IBusSimplePlugin_injector_nextPcCalc_valids_0;
      end if;
      if IBusSimplePlugin_fetchPc_flushed = '1' then
        IBusSimplePlugin_injector_nextPcCalc_valids_1 <= pkg_toStdLogic(false);
      end if;
      if IBusSimplePlugin_fetchPc_flushed = '1' then
        IBusSimplePlugin_injector_nextPcCalc_valids_2 <= pkg_toStdLogic(false);
      end if;
      if (not (not IBusSimplePlugin_injector_decodeInput_ready)) = '1' then
        IBusSimplePlugin_injector_nextPcCalc_valids_2 <= IBusSimplePlugin_injector_nextPcCalc_valids_1;
      end if;
      if IBusSimplePlugin_fetchPc_flushed = '1' then
        IBusSimplePlugin_injector_nextPcCalc_valids_2 <= pkg_toStdLogic(false);
      end if;
      if IBusSimplePlugin_fetchPc_flushed = '1' then
        IBusSimplePlugin_injector_nextPcCalc_valids_3 <= pkg_toStdLogic(false);
      end if;
      if (not execute_arbitration_isStuck) = '1' then
        IBusSimplePlugin_injector_nextPcCalc_valids_3 <= IBusSimplePlugin_injector_nextPcCalc_valids_2;
      end if;
      if IBusSimplePlugin_fetchPc_flushed = '1' then
        IBusSimplePlugin_injector_nextPcCalc_valids_3 <= pkg_toStdLogic(false);
      end if;
      if IBusSimplePlugin_fetchPc_flushed = '1' then
        IBusSimplePlugin_injector_nextPcCalc_valids_4 <= pkg_toStdLogic(false);
      end if;
      if (not memory_arbitration_isStuck) = '1' then
        IBusSimplePlugin_injector_nextPcCalc_valids_4 <= IBusSimplePlugin_injector_nextPcCalc_valids_3;
      end if;
      if IBusSimplePlugin_fetchPc_flushed = '1' then
        IBusSimplePlugin_injector_nextPcCalc_valids_4 <= pkg_toStdLogic(false);
      end if;
      if IBusSimplePlugin_fetchPc_flushed = '1' then
        IBusSimplePlugin_injector_nextPcCalc_valids_5 <= pkg_toStdLogic(false);
      end if;
      if (not writeBack_arbitration_isStuck) = '1' then
        IBusSimplePlugin_injector_nextPcCalc_valids_5 <= IBusSimplePlugin_injector_nextPcCalc_valids_4;
      end if;
      if IBusSimplePlugin_fetchPc_flushed = '1' then
        IBusSimplePlugin_injector_nextPcCalc_valids_5 <= pkg_toStdLogic(false);
      end if;
      IBusSimplePlugin_pending_value <= IBusSimplePlugin_pending_next;
      IBusSimplePlugin_rspJoin_rspBuffer_discardCounter <= (IBusSimplePlugin_rspJoin_rspBuffer_discardCounter - pkg_resize(unsigned(pkg_toStdLogicVector((IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_valid and pkg_toStdLogic(IBusSimplePlugin_rspJoin_rspBuffer_discardCounter /= pkg_unsigned("000"))))),3));
      if IBusSimplePlugin_iBusRsp_flush = '1' then
        IBusSimplePlugin_rspJoin_rspBuffer_discardCounter <= IBusSimplePlugin_pending_next;
      end if;
      CsrPlugin_interrupt_valid <= pkg_toStdLogic(false);
      if zz_136 = '1' then
        if zz_137 = '1' then
          CsrPlugin_interrupt_valid <= pkg_toStdLogic(true);
        end if;
        if zz_138 = '1' then
          CsrPlugin_interrupt_valid <= pkg_toStdLogic(true);
        end if;
        if zz_139 = '1' then
          CsrPlugin_interrupt_valid <= pkg_toStdLogic(true);
        end if;
      end if;
      if CsrPlugin_pipelineLiberator_active = '1' then
        if (not execute_arbitration_isStuck) = '1' then
          CsrPlugin_pipelineLiberator_pcValids_0 <= pkg_toStdLogic(true);
        end if;
        if (not memory_arbitration_isStuck) = '1' then
          CsrPlugin_pipelineLiberator_pcValids_1 <= CsrPlugin_pipelineLiberator_pcValids_0;
        end if;
        if (not writeBack_arbitration_isStuck) = '1' then
          CsrPlugin_pipelineLiberator_pcValids_2 <= CsrPlugin_pipelineLiberator_pcValids_1;
        end if;
      end if;
      if ((not CsrPlugin_pipelineLiberator_active) or decode_arbitration_removeIt) = '1' then
        CsrPlugin_pipelineLiberator_pcValids_0 <= pkg_toStdLogic(false);
        CsrPlugin_pipelineLiberator_pcValids_1 <= pkg_toStdLogic(false);
        CsrPlugin_pipelineLiberator_pcValids_2 <= pkg_toStdLogic(false);
      end if;
      if CsrPlugin_interruptJump = '1' then
        CsrPlugin_interrupt_valid <= pkg_toStdLogic(false);
      end if;
      CsrPlugin_hadException <= CsrPlugin_exception;
      if zz_125 = '1' then
        case CsrPlugin_targetPrivilege is
          when "11" =>
            CsrPlugin_mstatus_MIE <= pkg_toStdLogic(false);
            CsrPlugin_mstatus_MPIE <= CsrPlugin_mstatus_MIE;
            CsrPlugin_mstatus_MPP <= CsrPlugin_privilege;
          when others =>
        end case;
      end if;
      if zz_126 = '1' then
        case zz_128 is
          when "11" =>
            CsrPlugin_mstatus_MPP <= pkg_unsigned("00");
            CsrPlugin_mstatus_MIE <= CsrPlugin_mstatus_MPIE;
            CsrPlugin_mstatus_MPIE <= pkg_toStdLogic(true);
          when others =>
        end case;
      end if;
      execute_CsrPlugin_wfiWake <= (pkg_toStdLogic(pkg_cat(pkg_toStdLogicVector(zz_70),pkg_cat(pkg_toStdLogicVector(zz_69),pkg_toStdLogicVector(zz_68))) /= pkg_stdLogicVector("000")) or CsrPlugin_thirdPartyWake);
      zz_84 <= pkg_toStdLogic(false);
      if zz_121 = '1' then
        if zz_122 = '1' then
          execute_LightShifterPlugin_isActive <= pkg_toStdLogic(true);
          if execute_LightShifterPlugin_done = '1' then
            execute_LightShifterPlugin_isActive <= pkg_toStdLogic(false);
          end if;
        end if;
      end if;
      if execute_arbitration_removeIt = '1' then
        execute_LightShifterPlugin_isActive <= pkg_toStdLogic(false);
      end if;
      zz_95 <= (zz_30 and writeBack_arbitration_isFiring);
      if (not writeBack_arbitration_isStuck) = '1' then
        memory_to_writeBack_REGFILE_WRITE_DATA <= memory_REGFILE_WRITE_DATA;
      end if;
      if (not writeBack_arbitration_isStuck) = '1' then
        memory_to_writeBack_INSTRUCTION <= memory_INSTRUCTION;
      end if;
      if ((not execute_arbitration_isStuck) or execute_arbitration_removeIt) = '1' then
        execute_arbitration_isValid <= pkg_toStdLogic(false);
      end if;
      if ((not decode_arbitration_isStuck) and (not decode_arbitration_removeIt)) = '1' then
        execute_arbitration_isValid <= decode_arbitration_isValid;
      end if;
      if ((not memory_arbitration_isStuck) or memory_arbitration_removeIt) = '1' then
        memory_arbitration_isValid <= pkg_toStdLogic(false);
      end if;
      if ((not execute_arbitration_isStuck) and (not execute_arbitration_removeIt)) = '1' then
        memory_arbitration_isValid <= execute_arbitration_isValid;
      end if;
      if ((not writeBack_arbitration_isStuck) or writeBack_arbitration_removeIt) = '1' then
        writeBack_arbitration_isValid <= pkg_toStdLogic(false);
      end if;
      if ((not memory_arbitration_isStuck) and (not memory_arbitration_removeIt)) = '1' then
        writeBack_arbitration_isValid <= memory_arbitration_isValid;
      end if;
      case zz_108 is
        when "000" =>
          if IBusSimplePlugin_injectionPort_valid = '1' then
            zz_108 <= pkg_unsigned("001");
          end if;
        when "001" =>
          zz_108 <= pkg_unsigned("010");
        when "010" =>
          zz_108 <= pkg_unsigned("011");
        when "011" =>
          if (not decode_arbitration_isStuck) = '1' then
            zz_108 <= pkg_unsigned("100");
          end if;
        when "100" =>
          zz_108 <= pkg_unsigned("000");
        when others =>
      end case;
      if execute_CsrPlugin_csr_768 = '1' then
        if execute_CsrPlugin_writeEnable = '1' then
          CsrPlugin_mstatus_MPP <= unsigned(pkg_extract(execute_CsrPlugin_writeData,12,11));
          CsrPlugin_mstatus_MPIE <= pkg_extract(pkg_extract(execute_CsrPlugin_writeData,7,7),0);
          CsrPlugin_mstatus_MIE <= pkg_extract(pkg_extract(execute_CsrPlugin_writeData,3,3),0);
        end if;
      end if;
      if execute_CsrPlugin_csr_772 = '1' then
        if execute_CsrPlugin_writeEnable = '1' then
          CsrPlugin_mie_MEIE <= pkg_extract(pkg_extract(execute_CsrPlugin_writeData,11,11),0);
          CsrPlugin_mie_MTIE <= pkg_extract(pkg_extract(execute_CsrPlugin_writeData,7,7),0);
          CsrPlugin_mie_MSIE <= pkg_extract(pkg_extract(execute_CsrPlugin_writeData,3,3),0);
        end if;
      end if;
    end if;
  end process;

  process(io_mainClk)
  begin
    if rising_edge(io_mainClk) then
      if IBusSimplePlugin_iBusRsp_stages_1_output_ready = '1' then
        zz_54 <= IBusSimplePlugin_iBusRsp_stages_1_output_payload;
      end if;
      if IBusSimplePlugin_iBusRsp_output_ready = '1' then
        zz_56 <= IBusSimplePlugin_iBusRsp_output_payload_pc;
        zz_57 <= IBusSimplePlugin_iBusRsp_output_payload_rsp_error;
        zz_58 <= IBusSimplePlugin_iBusRsp_output_payload_rsp_inst;
        zz_59 <= IBusSimplePlugin_iBusRsp_output_payload_isRvc;
      end if;
      if IBusSimplePlugin_injector_decodeInput_ready = '1' then
        IBusSimplePlugin_injector_formal_rawInDecode <= IBusSimplePlugin_iBusRsp_output_payload_rsp_inst;
      end if;
      assert (not (((dBus_rsp_ready and memory_MEMORY_ENABLE) and memory_arbitration_isValid) and memory_arbitration_isStuck)) = '1' report "DBusSimplePlugin doesn't allow memory stage stall when read happend"  severity FAILURE;
      assert (not (((writeBack_arbitration_isValid and writeBack_MEMORY_ENABLE) and (not writeBack_MEMORY_STORE)) and writeBack_arbitration_isStuck)) = '1' report "DBusSimplePlugin doesn't allow writeback stage stall when read happend"  severity FAILURE;
      CsrPlugin_mip_MEIP <= externalInterrupt;
      CsrPlugin_mip_MTIP <= timerInterrupt;
      CsrPlugin_mip_MSIP <= softwareInterrupt;
      CsrPlugin_mcycle <= (CsrPlugin_mcycle + pkg_unsigned("0000000000000000000000000000000000000000000000000000000000000001"));
      if writeBack_arbitration_isFiring = '1' then
        CsrPlugin_minstret <= (CsrPlugin_minstret + pkg_unsigned("0000000000000000000000000000000000000000000000000000000000000001"));
      end if;
      if zz_136 = '1' then
        if zz_137 = '1' then
          CsrPlugin_interrupt_code <= pkg_unsigned("0111");
          CsrPlugin_interrupt_targetPrivilege <= pkg_unsigned("11");
        end if;
        if zz_138 = '1' then
          CsrPlugin_interrupt_code <= pkg_unsigned("0011");
          CsrPlugin_interrupt_targetPrivilege <= pkg_unsigned("11");
        end if;
        if zz_139 = '1' then
          CsrPlugin_interrupt_code <= pkg_unsigned("1011");
          CsrPlugin_interrupt_targetPrivilege <= pkg_unsigned("11");
        end if;
      end if;
      if zz_125 = '1' then
        case CsrPlugin_targetPrivilege is
          when "11" =>
            CsrPlugin_mcause_interrupt <= (not CsrPlugin_hadException);
            CsrPlugin_mcause_exceptionCode <= CsrPlugin_trapCause;
            CsrPlugin_mepc <= decode_PC;
          when others =>
        end case;
      end if;
      if zz_121 = '1' then
        if zz_122 = '1' then
          execute_LightShifterPlugin_amplitudeReg <= (execute_LightShifterPlugin_amplitude - pkg_unsigned("00001"));
        end if;
      end if;
      zz_96 <= pkg_extract(zz_29,11,7);
      if (not execute_arbitration_isStuck) = '1' then
        decode_to_execute_FORMAL_PC_NEXT <= decode_FORMAL_PC_NEXT;
      end if;
      if (not memory_arbitration_isStuck) = '1' then
        execute_to_memory_FORMAL_PC_NEXT <= execute_FORMAL_PC_NEXT;
      end if;
      if (not writeBack_arbitration_isStuck) = '1' then
        memory_to_writeBack_FORMAL_PC_NEXT <= zz_44;
      end if;
      if (not memory_arbitration_isStuck) = '1' then
        execute_to_memory_BRANCH_CALC <= execute_BRANCH_CALC;
      end if;
      if (not execute_arbitration_isStuck) = '1' then
        decode_to_execute_BRANCH_CTRL <= zz_18;
      end if;
      if (not execute_arbitration_isStuck) = '1' then
        decode_to_execute_MEMORY_ENABLE <= decode_MEMORY_ENABLE;
      end if;
      if (not memory_arbitration_isStuck) = '1' then
        execute_to_memory_MEMORY_ENABLE <= execute_MEMORY_ENABLE;
      end if;
      if (not writeBack_arbitration_isStuck) = '1' then
        memory_to_writeBack_MEMORY_ENABLE <= memory_MEMORY_ENABLE;
      end if;
      if (not execute_arbitration_isStuck) = '1' then
        decode_to_execute_CSR_WRITE_OPCODE <= decode_CSR_WRITE_OPCODE;
      end if;
      if (not execute_arbitration_isStuck) = '1' then
        decode_to_execute_BYPASSABLE_EXECUTE_STAGE <= decode_BYPASSABLE_EXECUTE_STAGE;
      end if;
      if (not execute_arbitration_isStuck) = '1' then
        decode_to_execute_SHIFT_CTRL <= zz_15;
      end if;
      if (not execute_arbitration_isStuck) = '1' then
        decode_to_execute_SRC_USE_SUB_LESS <= decode_SRC_USE_SUB_LESS;
      end if;
      if (not execute_arbitration_isStuck) = '1' then
        decode_to_execute_REGFILE_WRITE_VALID <= decode_REGFILE_WRITE_VALID;
      end if;
      if (not memory_arbitration_isStuck) = '1' then
        execute_to_memory_REGFILE_WRITE_VALID <= execute_REGFILE_WRITE_VALID;
      end if;
      if (not writeBack_arbitration_isStuck) = '1' then
        memory_to_writeBack_REGFILE_WRITE_VALID <= memory_REGFILE_WRITE_VALID;
      end if;
      if (not execute_arbitration_isStuck) = '1' then
        decode_to_execute_ENV_CTRL <= zz_12;
      end if;
      if (not memory_arbitration_isStuck) = '1' then
        execute_to_memory_ENV_CTRL <= zz_9;
      end if;
      if (not writeBack_arbitration_isStuck) = '1' then
        memory_to_writeBack_ENV_CTRL <= zz_7;
      end if;
      if ((not memory_arbitration_isStuck) and (not execute_arbitration_isStuckByOthers)) = '1' then
        execute_to_memory_REGFILE_WRITE_DATA <= zz_39;
      end if;
      if (not execute_arbitration_isStuck) = '1' then
        decode_to_execute_RS2 <= zz_23;
      end if;
      if (not writeBack_arbitration_isStuck) = '1' then
        memory_to_writeBack_MEMORY_READ_DATA <= memory_MEMORY_READ_DATA;
      end if;
      if (not execute_arbitration_isStuck) = '1' then
        decode_to_execute_SRC1 <= decode_SRC1;
      end if;
      if (not memory_arbitration_isStuck) = '1' then
        execute_to_memory_BRANCH_DO <= execute_BRANCH_DO;
      end if;
      if (not memory_arbitration_isStuck) = '1' then
        execute_to_memory_MEMORY_ADDRESS_LOW <= execute_MEMORY_ADDRESS_LOW;
      end if;
      if (not writeBack_arbitration_isStuck) = '1' then
        memory_to_writeBack_MEMORY_ADDRESS_LOW <= memory_MEMORY_ADDRESS_LOW;
      end if;
      if (not execute_arbitration_isStuck) = '1' then
        decode_to_execute_SRC2 <= decode_SRC2;
      end if;
      if (not execute_arbitration_isStuck) = '1' then
        decode_to_execute_INSTRUCTION <= decode_INSTRUCTION;
      end if;
      if (not memory_arbitration_isStuck) = '1' then
        execute_to_memory_INSTRUCTION <= execute_INSTRUCTION;
      end if;
      if (not execute_arbitration_isStuck) = '1' then
        decode_to_execute_PC <= zz_22;
      end if;
      if (not memory_arbitration_isStuck) = '1' then
        execute_to_memory_PC <= execute_PC;
      end if;
      if (not writeBack_arbitration_isStuck) = '1' then
        memory_to_writeBack_PC <= memory_PC;
      end if;
      if (not execute_arbitration_isStuck) = '1' then
        decode_to_execute_SRC_LESS_UNSIGNED <= decode_SRC_LESS_UNSIGNED;
      end if;
      if (not execute_arbitration_isStuck) = '1' then
        decode_to_execute_DO_EBREAK <= decode_DO_EBREAK;
      end if;
      if (not execute_arbitration_isStuck) = '1' then
        decode_to_execute_ALU_CTRL <= zz_5;
      end if;
      if (not execute_arbitration_isStuck) = '1' then
        decode_to_execute_ALU_BITWISE_CTRL <= zz_2;
      end if;
      if (not execute_arbitration_isStuck) = '1' then
        decode_to_execute_MEMORY_STORE <= decode_MEMORY_STORE;
      end if;
      if (not memory_arbitration_isStuck) = '1' then
        execute_to_memory_MEMORY_STORE <= execute_MEMORY_STORE;
      end if;
      if (not writeBack_arbitration_isStuck) = '1' then
        memory_to_writeBack_MEMORY_STORE <= memory_MEMORY_STORE;
      end if;
      if (not execute_arbitration_isStuck) = '1' then
        decode_to_execute_IS_CSR <= decode_IS_CSR;
      end if;
      if (not execute_arbitration_isStuck) = '1' then
        decode_to_execute_CSR_READ_OPCODE <= decode_CSR_READ_OPCODE;
      end if;
      if (not execute_arbitration_isStuck) = '1' then
        decode_to_execute_SRC2_FORCE_ZERO <= decode_SRC2_FORCE_ZERO;
      end if;
      if (not execute_arbitration_isStuck) = '1' then
        decode_to_execute_BYPASSABLE_MEMORY_STAGE <= decode_BYPASSABLE_MEMORY_STAGE;
      end if;
      if (not memory_arbitration_isStuck) = '1' then
        execute_to_memory_BYPASSABLE_MEMORY_STAGE <= execute_BYPASSABLE_MEMORY_STAGE;
      end if;
      if (not execute_arbitration_isStuck) = '1' then
        decode_to_execute_RS1 <= zz_25;
      end if;
      if pkg_toStdLogic(zz_108 /= pkg_unsigned("000")) = '1' then
        zz_58 <= IBusSimplePlugin_injectionPort_payload;
      end if;
      if (not execute_arbitration_isStuck) = '1' then
        execute_CsrPlugin_csr_768 <= pkg_toStdLogic(pkg_extract(decode_INSTRUCTION,31,20) = pkg_stdLogicVector("001100000000"));
      end if;
      if (not execute_arbitration_isStuck) = '1' then
        execute_CsrPlugin_csr_836 <= pkg_toStdLogic(pkg_extract(decode_INSTRUCTION,31,20) = pkg_stdLogicVector("001101000100"));
      end if;
      if (not execute_arbitration_isStuck) = '1' then
        execute_CsrPlugin_csr_772 <= pkg_toStdLogic(pkg_extract(decode_INSTRUCTION,31,20) = pkg_stdLogicVector("001100000100"));
      end if;
      if (not execute_arbitration_isStuck) = '1' then
        execute_CsrPlugin_csr_834 <= pkg_toStdLogic(pkg_extract(decode_INSTRUCTION,31,20) = pkg_stdLogicVector("001101000010"));
      end if;
      if execute_CsrPlugin_csr_836 = '1' then
        if execute_CsrPlugin_writeEnable = '1' then
          CsrPlugin_mip_MSIP <= pkg_extract(pkg_extract(execute_CsrPlugin_writeData,3,3),0);
        end if;
      end if;
    end if;
  end process;

  process(io_mainClk)
  begin
    if rising_edge(io_mainClk) then
      DebugPlugin_firstCycle <= pkg_toStdLogic(false);
      if zz_119 = '1' then
        DebugPlugin_firstCycle <= pkg_toStdLogic(true);
      end if;
      DebugPlugin_secondCycle <= DebugPlugin_firstCycle;
      DebugPlugin_isPipBusy <= (pkg_toStdLogic(pkg_cat(pkg_toStdLogicVector(writeBack_arbitration_isValid),pkg_cat(pkg_toStdLogicVector(memory_arbitration_isValid),pkg_cat(pkg_toStdLogicVector(execute_arbitration_isValid),pkg_toStdLogicVector(decode_arbitration_isValid)))) /= pkg_stdLogicVector("0000")) or IBusSimplePlugin_incomingInstruction);
      if writeBack_arbitration_isValid = '1' then
        DebugPlugin_busReadDataReg <= zz_43;
      end if;
      zz_107 <= pkg_extract(debug_bus_cmd_payload_address,2);
      if zz_123 = '1' then
        DebugPlugin_busReadDataReg <= std_logic_vector(execute_PC);
      end if;
      DebugPlugin_resetIt_regNext <= DebugPlugin_resetIt;
    end if;
  end process;

  process(io_mainClk, resetCtrl_mainClkReset)
  begin
    if resetCtrl_mainClkReset = '1' then
      DebugPlugin_resetIt <= pkg_toStdLogic(false);
      DebugPlugin_haltIt <= pkg_toStdLogic(false);
      DebugPlugin_stepIt <= pkg_toStdLogic(false);
      DebugPlugin_godmode <= pkg_toStdLogic(false);
      DebugPlugin_haltedByBreak <= pkg_toStdLogic(false);
    elsif rising_edge(io_mainClk) then
      if (DebugPlugin_haltIt and (not DebugPlugin_isPipBusy)) = '1' then
        DebugPlugin_godmode <= pkg_toStdLogic(true);
      end if;
      if debug_bus_cmd_valid = '1' then
        case zz_135 is
          when "000000" =>
            if debug_bus_cmd_payload_wr = '1' then
              DebugPlugin_stepIt <= pkg_extract(debug_bus_cmd_payload_data,4);
              if pkg_extract(debug_bus_cmd_payload_data,16) = '1' then
                DebugPlugin_resetIt <= pkg_toStdLogic(true);
              end if;
              if pkg_extract(debug_bus_cmd_payload_data,24) = '1' then
                DebugPlugin_resetIt <= pkg_toStdLogic(false);
              end if;
              if pkg_extract(debug_bus_cmd_payload_data,17) = '1' then
                DebugPlugin_haltIt <= pkg_toStdLogic(true);
              end if;
              if pkg_extract(debug_bus_cmd_payload_data,25) = '1' then
                DebugPlugin_haltIt <= pkg_toStdLogic(false);
              end if;
              if pkg_extract(debug_bus_cmd_payload_data,25) = '1' then
                DebugPlugin_haltedByBreak <= pkg_toStdLogic(false);
              end if;
              if pkg_extract(debug_bus_cmd_payload_data,25) = '1' then
                DebugPlugin_godmode <= pkg_toStdLogic(false);
              end if;
            end if;
          when "000001" =>
          when others =>
        end case;
      end if;
      if zz_123 = '1' then
        if zz_124 = '1' then
          DebugPlugin_haltIt <= pkg_toStdLogic(true);
          DebugPlugin_haltedByBreak <= pkg_toStdLogic(true);
        end if;
      end if;
      if zz_127 = '1' then
        if decode_arbitration_isValid = '1' then
          DebugPlugin_haltIt <= pkg_toStdLogic(true);
        end if;
      end if;
    end if;
  end process;

end arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity JtagBridge is
  port(
    io_jtag_tms : in std_logic;
    io_jtag_tdi : in std_logic;
    io_jtag_tdo : out std_logic;
    io_jtag_tck : in std_logic;
    io_remote_cmd_valid : out std_logic;
    io_remote_cmd_ready : in std_logic;
    io_remote_cmd_payload_last : out std_logic;
    io_remote_cmd_payload_fragment : out std_logic_vector(0 downto 0);
    io_remote_rsp_valid : in std_logic;
    io_remote_rsp_ready : out std_logic;
    io_remote_rsp_payload_error : in std_logic;
    io_remote_rsp_payload_data : in std_logic_vector(31 downto 0);
    io_mainClk : in std_logic;
    resetCtrl_mainClkReset : in std_logic
  );
end JtagBridge;

architecture arch of JtagBridge is
  signal zz_2 : std_logic;
  signal zz_3 : std_logic;
  signal flowCCByToggle_1_io_output_valid : std_logic;
  signal flowCCByToggle_1_io_output_payload_last : std_logic;
  signal flowCCByToggle_1_io_output_payload_fragment : std_logic_vector(0 downto 0);
  signal zz_4 : std_logic;
  signal zz_5 : std_logic;

  signal system_cmd_valid : std_logic;
  signal system_cmd_payload_last : std_logic;
  signal system_cmd_payload_fragment : std_logic_vector(0 downto 0);
  signal system_rsp_valid : std_logic;
  signal system_rsp_payload_error : std_logic;
  signal system_rsp_payload_data : std_logic_vector(31 downto 0);
  signal jtag_tap_fsm_stateNext : JtagState;
  signal jtag_tap_fsm_state : JtagState := pkg_enum.RESET;
  signal zz_1 : JtagState;
  signal jtag_tap_instruction : std_logic_vector(3 downto 0);
  signal jtag_tap_instructionShift : std_logic_vector(3 downto 0);
  signal jtag_tap_bypass : std_logic;
  signal jtag_tap_tdoUnbufferd : std_logic;
  signal jtag_tap_tdoUnbufferd_regNext : std_logic;
  signal jtag_idcodeArea_instructionHit : std_logic;
  signal jtag_idcodeArea_shifter : std_logic_vector(31 downto 0);
  signal jtag_writeArea_instructionHit : std_logic;
  signal jtag_writeArea_source_valid : std_logic;
  signal jtag_writeArea_source_payload_last : std_logic;
  signal jtag_writeArea_source_payload_fragment : std_logic_vector(0 downto 0);
  signal jtag_readArea_instructionHit : std_logic;
  signal jtag_readArea_shifter : std_logic_vector(33 downto 0);
begin
  io_remote_cmd_valid <= zz_2;
  io_remote_rsp_ready <= zz_3;
  zz_4 <= pkg_toStdLogic(jtag_tap_fsm_state = pkg_enum.DR_SHIFT);
  zz_5 <= pkg_toStdLogic(jtag_tap_fsm_state = pkg_enum.DR_SHIFT);
  flowCCByToggle_1 : entity work.FlowCCByToggle
    port map ( 
      io_input_valid => jtag_writeArea_source_valid,
      io_input_payload_last => jtag_writeArea_source_payload_last,
      io_input_payload_fragment => jtag_writeArea_source_payload_fragment,
      io_output_valid => flowCCByToggle_1_io_output_valid,
      io_output_payload_last => flowCCByToggle_1_io_output_payload_last,
      io_output_payload_fragment => flowCCByToggle_1_io_output_payload_fragment,
      io_jtag_tck => io_jtag_tck,
      io_mainClk => io_mainClk,
      resetCtrl_mainClkReset => resetCtrl_mainClkReset 
    );
  zz_2 <= system_cmd_valid;
  io_remote_cmd_payload_last <= system_cmd_payload_last;
  io_remote_cmd_payload_fragment <= system_cmd_payload_fragment;
  zz_3 <= pkg_toStdLogic(true);
  process(jtag_tap_fsm_state,io_jtag_tms)
  begin
    case jtag_tap_fsm_state is
      when pkg_enum.IDLE =>
        zz_1 <= pkg_mux(io_jtag_tms,pkg_enum.DR_SELECT,pkg_enum.IDLE);
      when pkg_enum.IR_SELECT =>
        zz_1 <= pkg_mux(io_jtag_tms,pkg_enum.RESET,pkg_enum.IR_CAPTURE);
      when pkg_enum.IR_CAPTURE =>
        zz_1 <= pkg_mux(io_jtag_tms,pkg_enum.IR_EXIT1,pkg_enum.IR_SHIFT);
      when pkg_enum.IR_SHIFT =>
        zz_1 <= pkg_mux(io_jtag_tms,pkg_enum.IR_EXIT1,pkg_enum.IR_SHIFT);
      when pkg_enum.IR_EXIT1 =>
        zz_1 <= pkg_mux(io_jtag_tms,pkg_enum.IR_UPDATE,pkg_enum.IR_PAUSE);
      when pkg_enum.IR_PAUSE =>
        zz_1 <= pkg_mux(io_jtag_tms,pkg_enum.IR_EXIT2,pkg_enum.IR_PAUSE);
      when pkg_enum.IR_EXIT2 =>
        zz_1 <= pkg_mux(io_jtag_tms,pkg_enum.IR_UPDATE,pkg_enum.IR_SHIFT);
      when pkg_enum.IR_UPDATE =>
        zz_1 <= pkg_mux(io_jtag_tms,pkg_enum.DR_SELECT,pkg_enum.IDLE);
      when pkg_enum.DR_SELECT =>
        zz_1 <= pkg_mux(io_jtag_tms,pkg_enum.IR_SELECT,pkg_enum.DR_CAPTURE);
      when pkg_enum.DR_CAPTURE =>
        zz_1 <= pkg_mux(io_jtag_tms,pkg_enum.DR_EXIT1,pkg_enum.DR_SHIFT);
      when pkg_enum.DR_SHIFT =>
        zz_1 <= pkg_mux(io_jtag_tms,pkg_enum.DR_EXIT1,pkg_enum.DR_SHIFT);
      when pkg_enum.DR_EXIT1 =>
        zz_1 <= pkg_mux(io_jtag_tms,pkg_enum.DR_UPDATE,pkg_enum.DR_PAUSE);
      when pkg_enum.DR_PAUSE =>
        zz_1 <= pkg_mux(io_jtag_tms,pkg_enum.DR_EXIT2,pkg_enum.DR_PAUSE);
      when pkg_enum.DR_EXIT2 =>
        zz_1 <= pkg_mux(io_jtag_tms,pkg_enum.DR_UPDATE,pkg_enum.DR_SHIFT);
      when pkg_enum.DR_UPDATE =>
        zz_1 <= pkg_mux(io_jtag_tms,pkg_enum.DR_SELECT,pkg_enum.IDLE);
      when others =>
        zz_1 <= pkg_mux(io_jtag_tms,pkg_enum.RESET,pkg_enum.IDLE);
    end case;
  end process;

  jtag_tap_fsm_stateNext <= zz_1;
  process(jtag_tap_bypass,jtag_tap_fsm_state,jtag_tap_instructionShift,jtag_idcodeArea_instructionHit,zz_4,jtag_idcodeArea_shifter,jtag_readArea_instructionHit,zz_5,jtag_readArea_shifter)
  begin
    jtag_tap_tdoUnbufferd <= jtag_tap_bypass;
    case jtag_tap_fsm_state is
      when pkg_enum.IR_CAPTURE =>
      when pkg_enum.IR_SHIFT =>
        jtag_tap_tdoUnbufferd <= pkg_extract(jtag_tap_instructionShift,0);
      when pkg_enum.IR_UPDATE =>
      when others =>
    end case;
    if jtag_idcodeArea_instructionHit = '1' then
      if zz_4 = '1' then
        jtag_tap_tdoUnbufferd <= pkg_extract(jtag_idcodeArea_shifter,0);
      end if;
    end if;
    if jtag_readArea_instructionHit = '1' then
      if zz_5 = '1' then
        jtag_tap_tdoUnbufferd <= pkg_extract(jtag_readArea_shifter,0);
      end if;
    end if;
  end process;

  io_jtag_tdo <= jtag_tap_tdoUnbufferd_regNext;
  jtag_idcodeArea_instructionHit <= pkg_toStdLogic(jtag_tap_instruction = pkg_resize(pkg_stdLogicVector("1"),4));
  jtag_writeArea_instructionHit <= pkg_toStdLogic(jtag_tap_instruction = pkg_resize(pkg_stdLogicVector("10"),4));
  process(jtag_writeArea_instructionHit,jtag_tap_fsm_state)
  begin
    jtag_writeArea_source_valid <= pkg_toStdLogic(false);
    if jtag_writeArea_instructionHit = '1' then
      if pkg_toStdLogic(jtag_tap_fsm_state = pkg_enum.DR_SHIFT) = '1' then
        jtag_writeArea_source_valid <= pkg_toStdLogic(true);
      end if;
    end if;
  end process;

  jtag_writeArea_source_payload_last <= io_jtag_tms;
  jtag_writeArea_source_payload_fragment(0) <= io_jtag_tdi;
  system_cmd_valid <= flowCCByToggle_1_io_output_valid;
  system_cmd_payload_last <= flowCCByToggle_1_io_output_payload_last;
  system_cmd_payload_fragment <= flowCCByToggle_1_io_output_payload_fragment;
  jtag_readArea_instructionHit <= pkg_toStdLogic(jtag_tap_instruction = pkg_resize(pkg_stdLogicVector("11"),4));
  process(io_mainClk)
  begin
    if rising_edge(io_mainClk) then
      if zz_2 = '1' then
        system_rsp_valid <= pkg_toStdLogic(false);
      end if;
      if (io_remote_rsp_valid and zz_3) = '1' then
        system_rsp_valid <= pkg_toStdLogic(true);
        system_rsp_payload_error <= io_remote_rsp_payload_error;
        system_rsp_payload_data <= io_remote_rsp_payload_data;
      end if;
    end if;
  end process;

  process(io_jtag_tck)
  begin
    if rising_edge(io_jtag_tck) then
      jtag_tap_fsm_state <= jtag_tap_fsm_stateNext;
      jtag_tap_bypass <= io_jtag_tdi;
      case jtag_tap_fsm_state is
        when pkg_enum.IR_CAPTURE =>
          jtag_tap_instructionShift <= jtag_tap_instruction;
        when pkg_enum.IR_SHIFT =>
          jtag_tap_instructionShift <= pkg_shiftRight(pkg_cat(pkg_toStdLogicVector(io_jtag_tdi),jtag_tap_instructionShift),1);
        when pkg_enum.IR_UPDATE =>
          jtag_tap_instruction <= jtag_tap_instructionShift;
        when others =>
      end case;
      if jtag_idcodeArea_instructionHit = '1' then
        if zz_4 = '1' then
          jtag_idcodeArea_shifter <= pkg_shiftRight(pkg_cat(pkg_toStdLogicVector(io_jtag_tdi),jtag_idcodeArea_shifter),1);
        end if;
      end if;
      if pkg_toStdLogic(jtag_tap_fsm_state = pkg_enum.RESET) = '1' then
        jtag_idcodeArea_shifter <= pkg_stdLogicVector("00010000000000000001111111111111");
        jtag_tap_instruction <= pkg_resize(pkg_stdLogicVector("1"),4);
      end if;
      if jtag_readArea_instructionHit = '1' then
        if pkg_toStdLogic(jtag_tap_fsm_state = pkg_enum.DR_CAPTURE) = '1' then
          jtag_readArea_shifter <= pkg_cat(pkg_cat(system_rsp_payload_data,pkg_toStdLogicVector(system_rsp_payload_error)),pkg_toStdLogicVector(system_rsp_valid));
        end if;
        if zz_5 = '1' then
          jtag_readArea_shifter <= pkg_shiftRight(pkg_cat(pkg_toStdLogicVector(io_jtag_tdi),jtag_readArea_shifter),1);
        end if;
      end if;
    end if;
  end process;

  process(io_jtag_tck)
  begin
    if falling_edge(io_jtag_tck) then
      jtag_tap_tdoUnbufferd_regNext <= jtag_tap_tdoUnbufferd;
    end if;
  end process;

end arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity SystemDebugger is
  port(
    io_remote_cmd_valid : in std_logic;
    io_remote_cmd_ready : out std_logic;
    io_remote_cmd_payload_last : in std_logic;
    io_remote_cmd_payload_fragment : in std_logic_vector(0 downto 0);
    io_remote_rsp_valid : out std_logic;
    io_remote_rsp_ready : in std_logic;
    io_remote_rsp_payload_error : out std_logic;
    io_remote_rsp_payload_data : out std_logic_vector(31 downto 0);
    io_mem_cmd_valid : out std_logic;
    io_mem_cmd_ready : in std_logic;
    io_mem_cmd_payload_address : out unsigned(31 downto 0);
    io_mem_cmd_payload_data : out std_logic_vector(31 downto 0);
    io_mem_cmd_payload_wr : out std_logic;
    io_mem_cmd_payload_size : out unsigned(1 downto 0);
    io_mem_rsp_valid : in std_logic;
    io_mem_rsp_payload : in std_logic_vector(31 downto 0);
    io_mainClk : in std_logic;
    resetCtrl_mainClkReset : in std_logic
  );
end SystemDebugger;

architecture arch of SystemDebugger is
  signal zz_2 : std_logic;
  signal zz_3 : std_logic;

  signal dispatcher_dataShifter : std_logic_vector(66 downto 0);
  signal dispatcher_dataLoaded : std_logic;
  signal dispatcher_headerShifter : std_logic_vector(7 downto 0);
  signal dispatcher_header : std_logic_vector(7 downto 0);
  signal dispatcher_headerLoaded : std_logic;
  signal dispatcher_counter : unsigned(2 downto 0);
  signal zz_1 : std_logic_vector(66 downto 0);
begin
  io_mem_cmd_valid <= zz_2;
  zz_3 <= pkg_toStdLogic(dispatcher_headerLoaded = pkg_toStdLogic(false));
  dispatcher_header <= pkg_extract(dispatcher_headerShifter,7,0);
  io_remote_cmd_ready <= (not dispatcher_dataLoaded);
  zz_1 <= pkg_extract(dispatcher_dataShifter,66,0);
  io_mem_cmd_payload_address <= unsigned(pkg_extract(zz_1,31,0));
  io_mem_cmd_payload_data <= pkg_extract(zz_1,63,32);
  io_mem_cmd_payload_wr <= pkg_extract(pkg_extract(zz_1,64,64),0);
  io_mem_cmd_payload_size <= unsigned(pkg_extract(zz_1,66,65));
  zz_2 <= (dispatcher_dataLoaded and pkg_toStdLogic(dispatcher_header = pkg_stdLogicVector("00000000")));
  io_remote_rsp_valid <= io_mem_rsp_valid;
  io_remote_rsp_payload_error <= pkg_toStdLogic(false);
  io_remote_rsp_payload_data <= io_mem_rsp_payload;
  process(io_mainClk, resetCtrl_mainClkReset)
  begin
    if resetCtrl_mainClkReset = '1' then
      dispatcher_dataLoaded <= pkg_toStdLogic(false);
      dispatcher_headerLoaded <= pkg_toStdLogic(false);
      dispatcher_counter <= pkg_unsigned("000");
    elsif rising_edge(io_mainClk) then
      if io_remote_cmd_valid = '1' then
        if zz_3 = '1' then
          dispatcher_counter <= (dispatcher_counter + pkg_unsigned("001"));
          if pkg_toStdLogic(dispatcher_counter = pkg_unsigned("111")) = '1' then
            dispatcher_headerLoaded <= pkg_toStdLogic(true);
          end if;
        end if;
        if io_remote_cmd_payload_last = '1' then
          dispatcher_headerLoaded <= pkg_toStdLogic(true);
          dispatcher_dataLoaded <= pkg_toStdLogic(true);
          dispatcher_counter <= pkg_unsigned("000");
        end if;
      end if;
      if (zz_2 and io_mem_cmd_ready) = '1' then
        dispatcher_headerLoaded <= pkg_toStdLogic(false);
        dispatcher_dataLoaded <= pkg_toStdLogic(false);
      end if;
    end if;
  end process;

  process(io_mainClk)
  begin
    if rising_edge(io_mainClk) then
      if io_remote_cmd_valid = '1' then
        if zz_3 = '1' then
          dispatcher_headerShifter <= pkg_shiftRight(pkg_cat(io_remote_cmd_payload_fragment,dispatcher_headerShifter),1);
        else
          dispatcher_dataShifter <= pkg_shiftRight(pkg_cat(io_remote_cmd_payload_fragment,dispatcher_dataShifter),1);
        end if;
      end if;
    end if;
  end process;

end arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity MuraxPipelinedMemoryBusRam is
  port(
    io_bus_cmd_valid : in std_logic;
    io_bus_cmd_ready : out std_logic;
    io_bus_cmd_payload_write : in std_logic;
    io_bus_cmd_payload_address : in unsigned(31 downto 0);
    io_bus_cmd_payload_data : in std_logic_vector(31 downto 0);
    io_bus_cmd_payload_mask : in std_logic_vector(3 downto 0);
    io_bus_rsp_valid : out std_logic;
    io_bus_rsp_payload_data : out std_logic_vector(31 downto 0);
    io_mainClk : in std_logic;
    resetCtrl_systemReset : in std_logic
  );
end MuraxPipelinedMemoryBusRam;

architecture arch of MuraxPipelinedMemoryBusRam is
  signal zz_4 : std_logic_vector(31 downto 0);
  signal zz_5 : std_logic;
  signal zz_6 : unsigned(10 downto 0);

  signal zz_1 : std_logic;
  signal zz_2 : unsigned(29 downto 0);
  signal zz_3 : std_logic_vector(31 downto 0);
  type ram_type is array (0 to 2047) of std_logic_vector(7 downto 0);
  signal ram_symbol0 : ram_type;
  signal ram_symbol1 : ram_type;
  signal ram_symbol2 : ram_type;
  signal ram_symbol3 : ram_type;
  signal zz_7 : std_logic_vector(7 downto 0);
  signal zz_8 : std_logic_vector(7 downto 0);
  signal zz_9 : std_logic_vector(7 downto 0);
  signal zz_10 : std_logic_vector(7 downto 0);
begin
  io_bus_cmd_ready <= zz_5;
  zz_6 <= pkg_resize(zz_2,11);
  process (zz_7, zz_8, zz_9, zz_10)
  begin
    zz_4 <= zz_10 & zz_9 & zz_8 & zz_7;
  end process;
  process(io_mainClk)
  begin
    if rising_edge(io_mainClk) then
      if io_bus_cmd_valid = '1' then
        zz_7 <= ram_symbol0(to_integer(zz_6));
        zz_8 <= ram_symbol1(to_integer(zz_6));
        zz_9 <= ram_symbol2(to_integer(zz_6));
        zz_10 <= ram_symbol3(to_integer(zz_6));
      end if;
    end if;
  end process;

  process(io_mainClk)
  begin
    if rising_edge(io_mainClk) then
      if io_bus_cmd_payload_mask(0) = '1' and io_bus_cmd_valid = '1' and io_bus_cmd_payload_write = '1' then
        ram_symbol0(to_integer(zz_6)) <= zz_3(7 downto 0);
      end if;
      if io_bus_cmd_payload_mask(1) = '1' and io_bus_cmd_valid = '1' and io_bus_cmd_payload_write = '1' then
        ram_symbol1(to_integer(zz_6)) <= zz_3(15 downto 8);
      end if;
      if io_bus_cmd_payload_mask(2) = '1' and io_bus_cmd_valid = '1' and io_bus_cmd_payload_write = '1' then
        ram_symbol2(to_integer(zz_6)) <= zz_3(23 downto 16);
      end if;
      if io_bus_cmd_payload_mask(3) = '1' and io_bus_cmd_valid = '1' and io_bus_cmd_payload_write = '1' then
        ram_symbol3(to_integer(zz_6)) <= zz_3(31 downto 24);
      end if;
    end if;
  end process;

  io_bus_rsp_valid <= zz_1;
  zz_2 <= pkg_shiftRight(io_bus_cmd_payload_address,2);
  zz_3 <= io_bus_cmd_payload_data;
  io_bus_rsp_payload_data <= zz_4;
  zz_5 <= pkg_toStdLogic(true);
  process(io_mainClk, resetCtrl_systemReset)
  begin
    if resetCtrl_systemReset = '1' then
      zz_1 <= pkg_toStdLogic(false);
    elsif rising_edge(io_mainClk) then
      zz_1 <= ((io_bus_cmd_valid and zz_5) and (not io_bus_cmd_payload_write));
    end if;
  end process;

end arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity PipelinedMemoryBusToApbBridge is
  port(
    io_pipelinedMemoryBus_cmd_valid : in std_logic;
    io_pipelinedMemoryBus_cmd_ready : out std_logic;
    io_pipelinedMemoryBus_cmd_payload_write : in std_logic;
    io_pipelinedMemoryBus_cmd_payload_address : in unsigned(31 downto 0);
    io_pipelinedMemoryBus_cmd_payload_data : in std_logic_vector(31 downto 0);
    io_pipelinedMemoryBus_cmd_payload_mask : in std_logic_vector(3 downto 0);
    io_pipelinedMemoryBus_rsp_valid : out std_logic;
    io_pipelinedMemoryBus_rsp_payload_data : out std_logic_vector(31 downto 0);
    io_apb_PADDR : out unsigned(19 downto 0);
    io_apb_PSEL : out std_logic_vector(0 downto 0);
    io_apb_PENABLE : out std_logic;
    io_apb_PREADY : in std_logic;
    io_apb_PWRITE : out std_logic;
    io_apb_PWDATA : out std_logic_vector(31 downto 0);
    io_apb_PRDATA : in std_logic_vector(31 downto 0);
    io_apb_PSLVERROR : in std_logic;
    io_mainClk : in std_logic;
    resetCtrl_systemReset : in std_logic
  );
end PipelinedMemoryBusToApbBridge;

architecture arch of PipelinedMemoryBusToApbBridge is
  signal zz_1 : std_logic;
  signal zz_2 : std_logic;

  signal pipelinedMemoryBusStage_cmd_valid : std_logic;
  signal pipelinedMemoryBusStage_cmd_ready : std_logic;
  signal pipelinedMemoryBusStage_cmd_payload_write : std_logic;
  signal pipelinedMemoryBusStage_cmd_payload_address : unsigned(31 downto 0);
  signal pipelinedMemoryBusStage_cmd_payload_data : std_logic_vector(31 downto 0);
  signal pipelinedMemoryBusStage_cmd_payload_mask : std_logic_vector(3 downto 0);
  signal pipelinedMemoryBusStage_rsp_valid : std_logic;
  signal pipelinedMemoryBusStage_rsp_payload_data : std_logic_vector(31 downto 0);
  signal io_pipelinedMemoryBus_cmd_halfPipe_valid : std_logic;
  signal io_pipelinedMemoryBus_cmd_halfPipe_ready : std_logic;
  signal io_pipelinedMemoryBus_cmd_halfPipe_payload_write : std_logic;
  signal io_pipelinedMemoryBus_cmd_halfPipe_payload_address : unsigned(31 downto 0);
  signal io_pipelinedMemoryBus_cmd_halfPipe_payload_data : std_logic_vector(31 downto 0);
  signal io_pipelinedMemoryBus_cmd_halfPipe_payload_mask : std_logic_vector(3 downto 0);
  signal io_pipelinedMemoryBus_cmd_halfPipe_regs_valid : std_logic;
  signal io_pipelinedMemoryBus_cmd_halfPipe_regs_ready : std_logic;
  signal io_pipelinedMemoryBus_cmd_halfPipe_regs_payload_write : std_logic;
  signal io_pipelinedMemoryBus_cmd_halfPipe_regs_payload_address : unsigned(31 downto 0);
  signal io_pipelinedMemoryBus_cmd_halfPipe_regs_payload_data : std_logic_vector(31 downto 0);
  signal io_pipelinedMemoryBus_cmd_halfPipe_regs_payload_mask : std_logic_vector(3 downto 0);
  signal pipelinedMemoryBusStage_rsp_regNext_valid : std_logic;
  signal pipelinedMemoryBusStage_rsp_regNext_payload_data : std_logic_vector(31 downto 0);
  signal state : std_logic;
begin
  zz_1 <= (not state);
  zz_2 <= (not io_pipelinedMemoryBus_cmd_halfPipe_regs_valid);
  io_pipelinedMemoryBus_cmd_halfPipe_valid <= io_pipelinedMemoryBus_cmd_halfPipe_regs_valid;
  io_pipelinedMemoryBus_cmd_halfPipe_payload_write <= io_pipelinedMemoryBus_cmd_halfPipe_regs_payload_write;
  io_pipelinedMemoryBus_cmd_halfPipe_payload_address <= io_pipelinedMemoryBus_cmd_halfPipe_regs_payload_address;
  io_pipelinedMemoryBus_cmd_halfPipe_payload_data <= io_pipelinedMemoryBus_cmd_halfPipe_regs_payload_data;
  io_pipelinedMemoryBus_cmd_halfPipe_payload_mask <= io_pipelinedMemoryBus_cmd_halfPipe_regs_payload_mask;
  io_pipelinedMemoryBus_cmd_ready <= io_pipelinedMemoryBus_cmd_halfPipe_regs_ready;
  pipelinedMemoryBusStage_cmd_valid <= io_pipelinedMemoryBus_cmd_halfPipe_valid;
  io_pipelinedMemoryBus_cmd_halfPipe_ready <= pipelinedMemoryBusStage_cmd_ready;
  pipelinedMemoryBusStage_cmd_payload_write <= io_pipelinedMemoryBus_cmd_halfPipe_payload_write;
  pipelinedMemoryBusStage_cmd_payload_address <= io_pipelinedMemoryBus_cmd_halfPipe_payload_address;
  pipelinedMemoryBusStage_cmd_payload_data <= io_pipelinedMemoryBus_cmd_halfPipe_payload_data;
  pipelinedMemoryBusStage_cmd_payload_mask <= io_pipelinedMemoryBus_cmd_halfPipe_payload_mask;
  io_pipelinedMemoryBus_rsp_valid <= pipelinedMemoryBusStage_rsp_regNext_valid;
  io_pipelinedMemoryBus_rsp_payload_data <= pipelinedMemoryBusStage_rsp_regNext_payload_data;
  process(zz_1,io_apb_PREADY)
  begin
    pipelinedMemoryBusStage_cmd_ready <= pkg_toStdLogic(false);
    if zz_1 = '0' then
      if io_apb_PREADY = '1' then
        pipelinedMemoryBusStage_cmd_ready <= pkg_toStdLogic(true);
      end if;
    end if;
  end process;

  io_apb_PSEL(0) <= pipelinedMemoryBusStage_cmd_valid;
  io_apb_PENABLE <= state;
  io_apb_PWRITE <= pipelinedMemoryBusStage_cmd_payload_write;
  io_apb_PADDR <= pkg_resize(pipelinedMemoryBusStage_cmd_payload_address,20);
  io_apb_PWDATA <= pipelinedMemoryBusStage_cmd_payload_data;
  process(zz_1,io_apb_PREADY,pipelinedMemoryBusStage_cmd_payload_write)
  begin
    pipelinedMemoryBusStage_rsp_valid <= pkg_toStdLogic(false);
    if zz_1 = '0' then
      if io_apb_PREADY = '1' then
        pipelinedMemoryBusStage_rsp_valid <= (not pipelinedMemoryBusStage_cmd_payload_write);
      end if;
    end if;
  end process;

  pipelinedMemoryBusStage_rsp_payload_data <= io_apb_PRDATA;
  process(io_mainClk, resetCtrl_systemReset)
  begin
    if resetCtrl_systemReset = '1' then
      io_pipelinedMemoryBus_cmd_halfPipe_regs_valid <= pkg_toStdLogic(false);
      io_pipelinedMemoryBus_cmd_halfPipe_regs_ready <= pkg_toStdLogic(true);
      pipelinedMemoryBusStage_rsp_regNext_valid <= pkg_toStdLogic(false);
      state <= pkg_toStdLogic(false);
    elsif rising_edge(io_mainClk) then
      if zz_2 = '1' then
        io_pipelinedMemoryBus_cmd_halfPipe_regs_valid <= io_pipelinedMemoryBus_cmd_valid;
        io_pipelinedMemoryBus_cmd_halfPipe_regs_ready <= (not io_pipelinedMemoryBus_cmd_valid);
      else
        io_pipelinedMemoryBus_cmd_halfPipe_regs_valid <= (not io_pipelinedMemoryBus_cmd_halfPipe_ready);
        io_pipelinedMemoryBus_cmd_halfPipe_regs_ready <= io_pipelinedMemoryBus_cmd_halfPipe_ready;
      end if;
      pipelinedMemoryBusStage_rsp_regNext_valid <= pipelinedMemoryBusStage_rsp_valid;
      if zz_1 = '1' then
        state <= pipelinedMemoryBusStage_cmd_valid;
      else
        if io_apb_PREADY = '1' then
          state <= pkg_toStdLogic(false);
        end if;
      end if;
    end if;
  end process;

  process(io_mainClk)
  begin
    if rising_edge(io_mainClk) then
      if zz_2 = '1' then
        io_pipelinedMemoryBus_cmd_halfPipe_regs_payload_write <= io_pipelinedMemoryBus_cmd_payload_write;
        io_pipelinedMemoryBus_cmd_halfPipe_regs_payload_address <= io_pipelinedMemoryBus_cmd_payload_address;
        io_pipelinedMemoryBus_cmd_halfPipe_regs_payload_data <= io_pipelinedMemoryBus_cmd_payload_data;
        io_pipelinedMemoryBus_cmd_halfPipe_regs_payload_mask <= io_pipelinedMemoryBus_cmd_payload_mask;
      end if;
      pipelinedMemoryBusStage_rsp_regNext_payload_data <= pipelinedMemoryBusStage_rsp_payload_data;
    end if;
  end process;

end arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity Apb3Gpio is
  port(
    io_apb_PADDR : in unsigned(3 downto 0);
    io_apb_PSEL : in std_logic_vector(0 downto 0);
    io_apb_PENABLE : in std_logic;
    io_apb_PREADY : out std_logic;
    io_apb_PWRITE : in std_logic;
    io_apb_PWDATA : in std_logic_vector(31 downto 0);
    io_apb_PRDATA : out std_logic_vector(31 downto 0);
    io_apb_PSLVERROR : out std_logic;
    io_gpio_read : in std_logic_vector(31 downto 0);
    io_gpio_write : out std_logic_vector(31 downto 0);
    io_gpio_writeEnable : out std_logic_vector(31 downto 0);
    io_value : out std_logic_vector(31 downto 0);
    io_mainClk : in std_logic;
    resetCtrl_systemReset : in std_logic
  );
end Apb3Gpio;

architecture arch of Apb3Gpio is
  signal zz_1 : std_logic;
  signal zz_2 : std_logic_vector(31 downto 0);
  signal io_gpio_read_buffercc_io_dataOut : std_logic_vector(31 downto 0);

  signal ctrl_askWrite : std_logic;
  signal ctrl_askRead : std_logic;
  signal ctrl_doWrite : std_logic;
  signal ctrl_doRead : std_logic;
  signal io_gpio_write_driver : std_logic_vector(31 downto 0);
  signal io_gpio_writeEnable_driver : std_logic_vector(31 downto 0);
begin
  io_apb_PREADY <= zz_1;
  io_value <= zz_2;
  io_gpio_read_buffercc : entity work.BufferCC_2
    port map ( 
      io_dataIn => io_gpio_read,
      io_dataOut => io_gpio_read_buffercc_io_dataOut,
      io_mainClk => io_mainClk,
      resetCtrl_systemReset => resetCtrl_systemReset 
    );
  zz_2 <= io_gpio_read_buffercc_io_dataOut;
  zz_1 <= pkg_toStdLogic(true);
  process(io_apb_PADDR,zz_2,io_gpio_write_driver,io_gpio_writeEnable_driver)
  begin
    io_apb_PRDATA <= pkg_stdLogicVector("00000000000000000000000000000000");
    case io_apb_PADDR is
      when "0000" =>
        io_apb_PRDATA(31 downto 0) <= zz_2;
      when "0100" =>
        io_apb_PRDATA(31 downto 0) <= io_gpio_write_driver;
      when "1000" =>
        io_apb_PRDATA(31 downto 0) <= io_gpio_writeEnable_driver;
      when others =>
    end case;
  end process;

  io_apb_PSLVERROR <= pkg_toStdLogic(false);
  ctrl_askWrite <= ((pkg_extract(io_apb_PSEL,0) and io_apb_PENABLE) and io_apb_PWRITE);
  ctrl_askRead <= ((pkg_extract(io_apb_PSEL,0) and io_apb_PENABLE) and (not io_apb_PWRITE));
  ctrl_doWrite <= (((pkg_extract(io_apb_PSEL,0) and io_apb_PENABLE) and zz_1) and io_apb_PWRITE);
  ctrl_doRead <= (((pkg_extract(io_apb_PSEL,0) and io_apb_PENABLE) and zz_1) and (not io_apb_PWRITE));
  io_gpio_write <= io_gpio_write_driver;
  io_gpio_writeEnable <= io_gpio_writeEnable_driver;
  process(io_mainClk, resetCtrl_systemReset)
  begin
    if resetCtrl_systemReset = '1' then
      io_gpio_writeEnable_driver <= pkg_stdLogicVector("00000000000000000000000000000000");
    elsif rising_edge(io_mainClk) then
      case io_apb_PADDR is
        when "0000" =>
        when "0100" =>
        when "1000" =>
          if ctrl_doWrite = '1' then
            io_gpio_writeEnable_driver <= pkg_extract(io_apb_PWDATA,31,0);
          end if;
        when others =>
      end case;
    end if;
  end process;

  process(io_mainClk)
  begin
    if rising_edge(io_mainClk) then
      case io_apb_PADDR is
        when "0000" =>
        when "0100" =>
          if ctrl_doWrite = '1' then
            io_gpio_write_driver <= pkg_extract(io_apb_PWDATA,31,0);
          end if;
        when "1000" =>
        when others =>
      end case;
    end if;
  end process;

end arch;


--Apb3Gpio_1 remplaced by Apb3Gpio


--Apb3Gpio_2 remplaced by Apb3Gpio


--Apb3Gpio_3 remplaced by Apb3Gpio

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity Apb3UartCtrl is
  port(
    io_apb_PADDR : in unsigned(4 downto 0);
    io_apb_PSEL : in std_logic_vector(0 downto 0);
    io_apb_PENABLE : in std_logic;
    io_apb_PREADY : out std_logic;
    io_apb_PWRITE : in std_logic;
    io_apb_PWDATA : in std_logic_vector(31 downto 0);
    io_apb_PRDATA : out std_logic_vector(31 downto 0);
    io_uart_txd : out std_logic;
    io_uart_rxd : in std_logic;
    io_interrupt : out std_logic;
    io_mainClk : in std_logic;
    resetCtrl_systemReset : in std_logic
  );
end Apb3UartCtrl;

architecture arch of Apb3UartCtrl is
  signal zz_7 : std_logic;
  signal zz_8 : std_logic;
  signal zz_9 : std_logic;
  signal zz_10 : std_logic;
  signal uartCtrl_1_io_write_ready : std_logic;
  signal uartCtrl_1_io_read_valid : std_logic;
  signal uartCtrl_1_io_read_payload : std_logic_vector(7 downto 0);
  signal uartCtrl_1_io_uart_txd : std_logic;
  signal uartCtrl_1_io_readError : std_logic;
  signal uartCtrl_1_io_readBreak : std_logic;
  signal bridge_write_streamUnbuffered_queueWithOccupancy_io_push_ready : std_logic;
  signal bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_valid : std_logic;
  signal bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_payload : std_logic_vector(7 downto 0);
  signal bridge_write_streamUnbuffered_queueWithOccupancy_io_occupancy : unsigned(4 downto 0);
  signal bridge_write_streamUnbuffered_queueWithOccupancy_io_availability : unsigned(4 downto 0);
  signal uartCtrl_1_io_read_queueWithOccupancy_io_push_ready : std_logic;
  signal uartCtrl_1_io_read_queueWithOccupancy_io_pop_valid : std_logic;
  signal uartCtrl_1_io_read_queueWithOccupancy_io_pop_payload : std_logic_vector(7 downto 0);
  signal uartCtrl_1_io_read_queueWithOccupancy_io_occupancy : unsigned(4 downto 0);
  signal uartCtrl_1_io_read_queueWithOccupancy_io_availability : unsigned(4 downto 0);

  signal busCtrl_askWrite : std_logic;
  signal busCtrl_askRead : std_logic;
  signal busCtrl_doWrite : std_logic;
  signal busCtrl_doRead : std_logic;
  signal bridge_uartConfigReg_frame_dataLength : unsigned(2 downto 0);
  signal bridge_uartConfigReg_frame_stop : UartStopType_defaultEncoding_type;
  signal bridge_uartConfigReg_frame_parity : UartParityType_defaultEncoding_type;
  signal bridge_uartConfigReg_clockDivider : unsigned(19 downto 0);
  signal zz_1 : std_logic;
  signal bridge_write_streamUnbuffered_valid : std_logic;
  signal bridge_write_streamUnbuffered_ready : std_logic;
  signal bridge_write_streamUnbuffered_payload : std_logic_vector(7 downto 0);
  signal bridge_read_streamBreaked_valid : std_logic;
  signal bridge_read_streamBreaked_ready : std_logic;
  signal bridge_read_streamBreaked_payload : std_logic_vector(7 downto 0);
  signal bridge_interruptCtrl_writeIntEnable : std_logic;
  signal bridge_interruptCtrl_readIntEnable : std_logic;
  signal bridge_interruptCtrl_readInt : std_logic;
  signal bridge_interruptCtrl_writeInt : std_logic;
  signal bridge_interruptCtrl_interrupt : std_logic;
  signal bridge_misc_readError : std_logic;
  signal zz_2 : std_logic;
  signal bridge_misc_readOverflowError : std_logic;
  signal zz_3 : std_logic;
  signal bridge_misc_breakDetected : std_logic;
  signal uartCtrl_1_io_readBreak_regNext : std_logic;
  signal zz_4 : std_logic;
  signal bridge_misc_doBreak : std_logic;
  signal zz_5 : std_logic;
  signal zz_6 : std_logic;
  function zz_bridge_uartConfigReg_clockDivider return unsigned is
    variable bridge_uartConfigReg_clockDivider : unsigned(19 downto 0);
  begin
    bridge_uartConfigReg_clockDivider := pkg_unsigned("00000000000000000000");
    bridge_uartConfigReg_clockDivider := pkg_unsigned("00000000000000010011");
    return bridge_uartConfigReg_clockDivider;
  end function;
begin
  io_apb_PREADY <= zz_10;
  uartCtrl_1 : entity work.UartCtrl
    port map ( 
      io_config_frame_dataLength => bridge_uartConfigReg_frame_dataLength,
      io_config_frame_stop => bridge_uartConfigReg_frame_stop,
      io_config_frame_parity => bridge_uartConfigReg_frame_parity,
      io_config_clockDivider => bridge_uartConfigReg_clockDivider,
      io_write_valid => bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_valid,
      io_write_ready => uartCtrl_1_io_write_ready,
      io_write_payload => bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_payload,
      io_read_valid => uartCtrl_1_io_read_valid,
      io_read_ready => uartCtrl_1_io_read_queueWithOccupancy_io_push_ready,
      io_read_payload => uartCtrl_1_io_read_payload,
      io_uart_txd => uartCtrl_1_io_uart_txd,
      io_uart_rxd => io_uart_rxd,
      io_readError => uartCtrl_1_io_readError,
      io_writeBreak => bridge_misc_doBreak,
      io_readBreak => uartCtrl_1_io_readBreak,
      io_mainClk => io_mainClk,
      resetCtrl_systemReset => resetCtrl_systemReset 
    );
  bridge_write_streamUnbuffered_queueWithOccupancy : entity work.StreamFifo
    port map ( 
      io_push_valid => bridge_write_streamUnbuffered_valid,
      io_push_ready => bridge_write_streamUnbuffered_queueWithOccupancy_io_push_ready,
      io_push_payload => bridge_write_streamUnbuffered_payload,
      io_pop_valid => bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_valid,
      io_pop_ready => uartCtrl_1_io_write_ready,
      io_pop_payload => bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_payload,
      io_flush => zz_7,
      io_occupancy => bridge_write_streamUnbuffered_queueWithOccupancy_io_occupancy,
      io_availability => bridge_write_streamUnbuffered_queueWithOccupancy_io_availability,
      io_mainClk => io_mainClk,
      resetCtrl_systemReset => resetCtrl_systemReset 
    );
  uartCtrl_1_io_read_queueWithOccupancy : entity work.StreamFifo
    port map ( 
      io_push_valid => uartCtrl_1_io_read_valid,
      io_push_ready => uartCtrl_1_io_read_queueWithOccupancy_io_push_ready,
      io_push_payload => uartCtrl_1_io_read_payload,
      io_pop_valid => uartCtrl_1_io_read_queueWithOccupancy_io_pop_valid,
      io_pop_ready => zz_8,
      io_pop_payload => uartCtrl_1_io_read_queueWithOccupancy_io_pop_payload,
      io_flush => zz_9,
      io_occupancy => uartCtrl_1_io_read_queueWithOccupancy_io_occupancy,
      io_availability => uartCtrl_1_io_read_queueWithOccupancy_io_availability,
      io_mainClk => io_mainClk,
      resetCtrl_systemReset => resetCtrl_systemReset 
    );
  io_uart_txd <= uartCtrl_1_io_uart_txd;
  zz_10 <= pkg_toStdLogic(true);
  process(io_apb_PADDR,bridge_read_streamBreaked_valid,bridge_read_streamBreaked_payload,bridge_write_streamUnbuffered_queueWithOccupancy_io_occupancy,bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_valid,uartCtrl_1_io_read_queueWithOccupancy_io_occupancy,bridge_interruptCtrl_writeIntEnable,bridge_interruptCtrl_readIntEnable,bridge_interruptCtrl_writeInt,bridge_interruptCtrl_readInt,bridge_misc_readError,bridge_misc_readOverflowError,uartCtrl_1_io_readBreak,bridge_misc_breakDetected)
  begin
    io_apb_PRDATA <= pkg_stdLogicVector("00000000000000000000000000000000");
    case io_apb_PADDR is
      when "00000" =>
        io_apb_PRDATA(16 downto 16) <= pkg_toStdLogicVector((bridge_read_streamBreaked_valid xor pkg_toStdLogic(false)));
        io_apb_PRDATA(7 downto 0) <= bridge_read_streamBreaked_payload;
      when "00100" =>
        io_apb_PRDATA(20 downto 16) <= std_logic_vector((pkg_unsigned("10000") - bridge_write_streamUnbuffered_queueWithOccupancy_io_occupancy));
        io_apb_PRDATA(15 downto 15) <= pkg_toStdLogicVector(bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_valid);
        io_apb_PRDATA(28 downto 24) <= std_logic_vector(uartCtrl_1_io_read_queueWithOccupancy_io_occupancy);
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(bridge_interruptCtrl_writeIntEnable);
        io_apb_PRDATA(1 downto 1) <= pkg_toStdLogicVector(bridge_interruptCtrl_readIntEnable);
        io_apb_PRDATA(8 downto 8) <= pkg_toStdLogicVector(bridge_interruptCtrl_writeInt);
        io_apb_PRDATA(9 downto 9) <= pkg_toStdLogicVector(bridge_interruptCtrl_readInt);
      when "10000" =>
        io_apb_PRDATA(0 downto 0) <= pkg_toStdLogicVector(bridge_misc_readError);
        io_apb_PRDATA(1 downto 1) <= pkg_toStdLogicVector(bridge_misc_readOverflowError);
        io_apb_PRDATA(8 downto 8) <= pkg_toStdLogicVector(uartCtrl_1_io_readBreak);
        io_apb_PRDATA(9 downto 9) <= pkg_toStdLogicVector(bridge_misc_breakDetected);
      when others =>
    end case;
  end process;

  busCtrl_askWrite <= ((pkg_extract(io_apb_PSEL,0) and io_apb_PENABLE) and io_apb_PWRITE);
  busCtrl_askRead <= ((pkg_extract(io_apb_PSEL,0) and io_apb_PENABLE) and (not io_apb_PWRITE));
  busCtrl_doWrite <= (((pkg_extract(io_apb_PSEL,0) and io_apb_PENABLE) and zz_10) and io_apb_PWRITE);
  busCtrl_doRead <= (((pkg_extract(io_apb_PSEL,0) and io_apb_PENABLE) and zz_10) and (not io_apb_PWRITE));
  bridge_uartConfigReg_clockDivider <= zz_bridge_uartConfigReg_clockDivider;
  bridge_uartConfigReg_frame_dataLength <= pkg_unsigned("111");
  bridge_uartConfigReg_frame_parity <= UartParityType_defaultEncoding_NONE;
  bridge_uartConfigReg_frame_stop <= UartStopType_defaultEncoding_ONE;
  process(io_apb_PADDR,busCtrl_doWrite)
  begin
    zz_1 <= pkg_toStdLogic(false);
    case io_apb_PADDR is
      when "00000" =>
        if busCtrl_doWrite = '1' then
          zz_1 <= pkg_toStdLogic(true);
        end if;
      when "00100" =>
      when "10000" =>
      when others =>
    end case;
  end process;

  bridge_write_streamUnbuffered_valid <= zz_1;
  bridge_write_streamUnbuffered_payload <= pkg_extract(io_apb_PWDATA,7,0);
  bridge_write_streamUnbuffered_ready <= bridge_write_streamUnbuffered_queueWithOccupancy_io_push_ready;
  process(uartCtrl_1_io_read_queueWithOccupancy_io_pop_valid,uartCtrl_1_io_readBreak)
  begin
    bridge_read_streamBreaked_valid <= uartCtrl_1_io_read_queueWithOccupancy_io_pop_valid;
    if uartCtrl_1_io_readBreak = '1' then
      bridge_read_streamBreaked_valid <= pkg_toStdLogic(false);
    end if;
  end process;

  process(bridge_read_streamBreaked_ready,uartCtrl_1_io_readBreak)
  begin
    zz_8 <= bridge_read_streamBreaked_ready;
    if uartCtrl_1_io_readBreak = '1' then
      zz_8 <= pkg_toStdLogic(true);
    end if;
  end process;

  bridge_read_streamBreaked_payload <= uartCtrl_1_io_read_queueWithOccupancy_io_pop_payload;
  process(io_apb_PADDR,busCtrl_doRead)
  begin
    bridge_read_streamBreaked_ready <= pkg_toStdLogic(false);
    case io_apb_PADDR is
      when "00000" =>
        if busCtrl_doRead = '1' then
          bridge_read_streamBreaked_ready <= pkg_toStdLogic(true);
        end if;
      when "00100" =>
      when "10000" =>
      when others =>
    end case;
  end process;

  bridge_interruptCtrl_readInt <= (bridge_interruptCtrl_readIntEnable and bridge_read_streamBreaked_valid);
  bridge_interruptCtrl_writeInt <= (bridge_interruptCtrl_writeIntEnable and (not bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_valid));
  bridge_interruptCtrl_interrupt <= (bridge_interruptCtrl_readInt or bridge_interruptCtrl_writeInt);
  process(io_apb_PADDR,busCtrl_doWrite)
  begin
    zz_2 <= pkg_toStdLogic(false);
    case io_apb_PADDR is
      when "00000" =>
      when "00100" =>
      when "10000" =>
        if busCtrl_doWrite = '1' then
          zz_2 <= pkg_toStdLogic(true);
        end if;
      when others =>
    end case;
  end process;

  process(io_apb_PADDR,busCtrl_doWrite)
  begin
    zz_3 <= pkg_toStdLogic(false);
    case io_apb_PADDR is
      when "00000" =>
      when "00100" =>
      when "10000" =>
        if busCtrl_doWrite = '1' then
          zz_3 <= pkg_toStdLogic(true);
        end if;
      when others =>
    end case;
  end process;

  process(io_apb_PADDR,busCtrl_doWrite)
  begin
    zz_4 <= pkg_toStdLogic(false);
    case io_apb_PADDR is
      when "00000" =>
      when "00100" =>
      when "10000" =>
        if busCtrl_doWrite = '1' then
          zz_4 <= pkg_toStdLogic(true);
        end if;
      when others =>
    end case;
  end process;

  process(io_apb_PADDR,busCtrl_doWrite)
  begin
    zz_5 <= pkg_toStdLogic(false);
    case io_apb_PADDR is
      when "00000" =>
      when "00100" =>
      when "10000" =>
        if busCtrl_doWrite = '1' then
          zz_5 <= pkg_toStdLogic(true);
        end if;
      when others =>
    end case;
  end process;

  process(io_apb_PADDR,busCtrl_doWrite)
  begin
    zz_6 <= pkg_toStdLogic(false);
    case io_apb_PADDR is
      when "00000" =>
      when "00100" =>
      when "10000" =>
        if busCtrl_doWrite = '1' then
          zz_6 <= pkg_toStdLogic(true);
        end if;
      when others =>
    end case;
  end process;

  io_interrupt <= bridge_interruptCtrl_interrupt;
  zz_7 <= pkg_toStdLogic(false);
  zz_9 <= pkg_toStdLogic(false);
  process(io_mainClk, resetCtrl_systemReset)
  begin
    if resetCtrl_systemReset = '1' then
      bridge_interruptCtrl_writeIntEnable <= pkg_toStdLogic(false);
      bridge_interruptCtrl_readIntEnable <= pkg_toStdLogic(false);
      bridge_misc_readError <= pkg_toStdLogic(false);
      bridge_misc_readOverflowError <= pkg_toStdLogic(false);
      bridge_misc_breakDetected <= pkg_toStdLogic(false);
      bridge_misc_doBreak <= pkg_toStdLogic(false);
    elsif rising_edge(io_mainClk) then
      if zz_2 = '1' then
        if pkg_extract(pkg_extract(io_apb_PWDATA,0,0),0) = '1' then
          bridge_misc_readError <= pkg_extract(pkg_stdLogicVector("0"),0);
        end if;
      end if;
      if uartCtrl_1_io_readError = '1' then
        bridge_misc_readError <= pkg_toStdLogic(true);
      end if;
      if zz_3 = '1' then
        if pkg_extract(pkg_extract(io_apb_PWDATA,1,1),0) = '1' then
          bridge_misc_readOverflowError <= pkg_extract(pkg_stdLogicVector("0"),0);
        end if;
      end if;
      if (uartCtrl_1_io_read_valid and (not uartCtrl_1_io_read_queueWithOccupancy_io_push_ready)) = '1' then
        bridge_misc_readOverflowError <= pkg_toStdLogic(true);
      end if;
      if (uartCtrl_1_io_readBreak and (not uartCtrl_1_io_readBreak_regNext)) = '1' then
        bridge_misc_breakDetected <= pkg_toStdLogic(true);
      end if;
      if zz_4 = '1' then
        if pkg_extract(pkg_extract(io_apb_PWDATA,9,9),0) = '1' then
          bridge_misc_breakDetected <= pkg_extract(pkg_stdLogicVector("0"),0);
        end if;
      end if;
      if zz_5 = '1' then
        if pkg_extract(pkg_extract(io_apb_PWDATA,10,10),0) = '1' then
          bridge_misc_doBreak <= pkg_extract(pkg_stdLogicVector("1"),0);
        end if;
      end if;
      if zz_6 = '1' then
        if pkg_extract(pkg_extract(io_apb_PWDATA,11,11),0) = '1' then
          bridge_misc_doBreak <= pkg_extract(pkg_stdLogicVector("0"),0);
        end if;
      end if;
      case io_apb_PADDR is
        when "00000" =>
        when "00100" =>
          if busCtrl_doWrite = '1' then
            bridge_interruptCtrl_writeIntEnable <= pkg_extract(pkg_extract(io_apb_PWDATA,0,0),0);
            bridge_interruptCtrl_readIntEnable <= pkg_extract(pkg_extract(io_apb_PWDATA,1,1),0);
          end if;
        when "10000" =>
        when others =>
      end case;
    end if;
  end process;

  process(io_mainClk)
  begin
    if rising_edge(io_mainClk) then
      uartCtrl_1_io_readBreak_regNext <= uartCtrl_1_io_readBreak;
    end if;
  end process;

end arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity MuraxApb3Timer is
  port(
    io_apb_PADDR : in unsigned(7 downto 0);
    io_apb_PSEL : in std_logic_vector(0 downto 0);
    io_apb_PENABLE : in std_logic;
    io_apb_PREADY : out std_logic;
    io_apb_PWRITE : in std_logic;
    io_apb_PWDATA : in std_logic_vector(31 downto 0);
    io_apb_PRDATA : out std_logic_vector(31 downto 0);
    io_apb_PSLVERROR : out std_logic;
    io_interrupt : out std_logic;
    io_mainClk : in std_logic;
    resetCtrl_systemReset : in std_logic
  );
end MuraxApb3Timer;

architecture arch of MuraxApb3Timer is
  signal zz_7 : std_logic;
  signal zz_8 : std_logic;
  signal zz_9 : std_logic;
  signal zz_10 : std_logic;
  signal zz_11 : std_logic_vector(1 downto 0);
  signal zz_12 : std_logic_vector(1 downto 0);
  signal zz_13 : std_logic;
  signal prescaler_1_io_overflow : std_logic;
  signal timerA_io_full : std_logic;
  signal timerA_io_value : unsigned(15 downto 0);
  signal timerB_io_full : std_logic;
  signal timerB_io_value : unsigned(15 downto 0);
  signal interruptCtrl_1_io_pendings : std_logic_vector(1 downto 0);

  signal busCtrl_askWrite : std_logic;
  signal busCtrl_askRead : std_logic;
  signal busCtrl_doWrite : std_logic;
  signal busCtrl_doRead : std_logic;
  signal zz_1 : unsigned(15 downto 0);
  signal zz_2 : std_logic;
  signal timerABridge_ticksEnable : std_logic_vector(1 downto 0);
  signal timerABridge_clearsEnable : std_logic_vector(0 downto 0);
  signal timerABridge_busClearing : std_logic;
  signal timerA_io_limit_driver : unsigned(15 downto 0);
  signal zz_3 : std_logic;
  signal zz_4 : std_logic;
  signal timerBBridge_ticksEnable : std_logic_vector(1 downto 0);
  signal timerBBridge_clearsEnable : std_logic_vector(0 downto 0);
  signal timerBBridge_busClearing : std_logic;
  signal timerB_io_limit_driver : unsigned(15 downto 0);
  signal zz_5 : std_logic;
  signal zz_6 : std_logic;
  signal interruptCtrl_1_io_masks_driver : std_logic_vector(1 downto 0);
begin
  io_apb_PREADY <= zz_13;
  prescaler_1 : entity work.Prescaler
    port map ( 
      io_clear => zz_2,
      io_limit => zz_1,
      io_overflow => prescaler_1_io_overflow,
      io_mainClk => io_mainClk,
      resetCtrl_systemReset => resetCtrl_systemReset 
    );
  timerA : entity work.Timer
    port map ( 
      io_tick => zz_7,
      io_clear => zz_8,
      io_limit => timerA_io_limit_driver,
      io_full => timerA_io_full,
      io_value => timerA_io_value,
      io_mainClk => io_mainClk,
      resetCtrl_systemReset => resetCtrl_systemReset 
    );
  timerB : entity work.Timer
    port map ( 
      io_tick => zz_9,
      io_clear => zz_10,
      io_limit => timerB_io_limit_driver,
      io_full => timerB_io_full,
      io_value => timerB_io_value,
      io_mainClk => io_mainClk,
      resetCtrl_systemReset => resetCtrl_systemReset 
    );
  interruptCtrl_1 : entity work.InterruptCtrl
    port map ( 
      io_inputs => zz_11,
      io_clears => zz_12,
      io_masks => interruptCtrl_1_io_masks_driver,
      io_pendings => interruptCtrl_1_io_pendings,
      io_mainClk => io_mainClk,
      resetCtrl_systemReset => resetCtrl_systemReset 
    );
  zz_13 <= pkg_toStdLogic(true);
  process(io_apb_PADDR,zz_1,timerABridge_ticksEnable,timerABridge_clearsEnable,timerA_io_limit_driver,timerA_io_value,timerBBridge_ticksEnable,timerBBridge_clearsEnable,timerB_io_limit_driver,timerB_io_value,interruptCtrl_1_io_pendings,interruptCtrl_1_io_masks_driver)
  begin
    io_apb_PRDATA <= pkg_stdLogicVector("00000000000000000000000000000000");
    case io_apb_PADDR is
      when "00000000" =>
        io_apb_PRDATA(15 downto 0) <= std_logic_vector(zz_1);
      when "01000000" =>
        io_apb_PRDATA(1 downto 0) <= timerABridge_ticksEnable;
        io_apb_PRDATA(16 downto 16) <= timerABridge_clearsEnable;
      when "01000100" =>
        io_apb_PRDATA(15 downto 0) <= std_logic_vector(timerA_io_limit_driver);
      when "01001000" =>
        io_apb_PRDATA(15 downto 0) <= std_logic_vector(timerA_io_value);
      when "01010000" =>
        io_apb_PRDATA(1 downto 0) <= timerBBridge_ticksEnable;
        io_apb_PRDATA(16 downto 16) <= timerBBridge_clearsEnable;
      when "01010100" =>
        io_apb_PRDATA(15 downto 0) <= std_logic_vector(timerB_io_limit_driver);
      when "01011000" =>
        io_apb_PRDATA(15 downto 0) <= std_logic_vector(timerB_io_value);
      when "00010000" =>
        io_apb_PRDATA(1 downto 0) <= interruptCtrl_1_io_pendings;
      when "00010100" =>
        io_apb_PRDATA(1 downto 0) <= interruptCtrl_1_io_masks_driver;
      when others =>
    end case;
  end process;

  io_apb_PSLVERROR <= pkg_toStdLogic(false);
  busCtrl_askWrite <= ((pkg_extract(io_apb_PSEL,0) and io_apb_PENABLE) and io_apb_PWRITE);
  busCtrl_askRead <= ((pkg_extract(io_apb_PSEL,0) and io_apb_PENABLE) and (not io_apb_PWRITE));
  busCtrl_doWrite <= (((pkg_extract(io_apb_PSEL,0) and io_apb_PENABLE) and zz_13) and io_apb_PWRITE);
  busCtrl_doRead <= (((pkg_extract(io_apb_PSEL,0) and io_apb_PENABLE) and zz_13) and (not io_apb_PWRITE));
  process(io_apb_PADDR,busCtrl_doWrite)
  begin
    zz_2 <= pkg_toStdLogic(false);
    case io_apb_PADDR is
      when "00000000" =>
        if busCtrl_doWrite = '1' then
          zz_2 <= pkg_toStdLogic(true);
        end if;
      when "01000000" =>
      when "01000100" =>
      when "01001000" =>
      when "01010000" =>
      when "01010100" =>
      when "01011000" =>
      when "00010000" =>
      when "00010100" =>
      when others =>
    end case;
  end process;

  process(zz_3,zz_4)
  begin
    timerABridge_busClearing <= pkg_toStdLogic(false);
    if zz_3 = '1' then
      timerABridge_busClearing <= pkg_toStdLogic(true);
    end if;
    if zz_4 = '1' then
      timerABridge_busClearing <= pkg_toStdLogic(true);
    end if;
  end process;

  process(io_apb_PADDR,busCtrl_doWrite)
  begin
    zz_3 <= pkg_toStdLogic(false);
    case io_apb_PADDR is
      when "00000000" =>
      when "01000000" =>
      when "01000100" =>
        if busCtrl_doWrite = '1' then
          zz_3 <= pkg_toStdLogic(true);
        end if;
      when "01001000" =>
      when "01010000" =>
      when "01010100" =>
      when "01011000" =>
      when "00010000" =>
      when "00010100" =>
      when others =>
    end case;
  end process;

  process(io_apb_PADDR,busCtrl_doWrite)
  begin
    zz_4 <= pkg_toStdLogic(false);
    case io_apb_PADDR is
      when "00000000" =>
      when "01000000" =>
      when "01000100" =>
      when "01001000" =>
        if busCtrl_doWrite = '1' then
          zz_4 <= pkg_toStdLogic(true);
        end if;
      when "01010000" =>
      when "01010100" =>
      when "01011000" =>
      when "00010000" =>
      when "00010100" =>
      when others =>
    end case;
  end process;

  zz_8 <= (pkg_toStdLogic((timerABridge_clearsEnable and pkg_toStdLogicVector(timerA_io_full)) /= pkg_stdLogicVector("0")) or timerABridge_busClearing);
  zz_7 <= pkg_toStdLogic((timerABridge_ticksEnable and pkg_cat(pkg_toStdLogicVector(prescaler_1_io_overflow),pkg_toStdLogicVector(pkg_toStdLogic(true)))) /= pkg_stdLogicVector("00"));
  process(zz_5,zz_6)
  begin
    timerBBridge_busClearing <= pkg_toStdLogic(false);
    if zz_5 = '1' then
      timerBBridge_busClearing <= pkg_toStdLogic(true);
    end if;
    if zz_6 = '1' then
      timerBBridge_busClearing <= pkg_toStdLogic(true);
    end if;
  end process;

  process(io_apb_PADDR,busCtrl_doWrite)
  begin
    zz_5 <= pkg_toStdLogic(false);
    case io_apb_PADDR is
      when "00000000" =>
      when "01000000" =>
      when "01000100" =>
      when "01001000" =>
      when "01010000" =>
      when "01010100" =>
        if busCtrl_doWrite = '1' then
          zz_5 <= pkg_toStdLogic(true);
        end if;
      when "01011000" =>
      when "00010000" =>
      when "00010100" =>
      when others =>
    end case;
  end process;

  process(io_apb_PADDR,busCtrl_doWrite)
  begin
    zz_6 <= pkg_toStdLogic(false);
    case io_apb_PADDR is
      when "00000000" =>
      when "01000000" =>
      when "01000100" =>
      when "01001000" =>
      when "01010000" =>
      when "01010100" =>
      when "01011000" =>
        if busCtrl_doWrite = '1' then
          zz_6 <= pkg_toStdLogic(true);
        end if;
      when "00010000" =>
      when "00010100" =>
      when others =>
    end case;
  end process;

  zz_10 <= (pkg_toStdLogic((timerBBridge_clearsEnable and pkg_toStdLogicVector(timerB_io_full)) /= pkg_stdLogicVector("0")) or timerBBridge_busClearing);
  zz_9 <= pkg_toStdLogic((timerBBridge_ticksEnable and pkg_cat(pkg_toStdLogicVector(prescaler_1_io_overflow),pkg_toStdLogicVector(pkg_toStdLogic(true)))) /= pkg_stdLogicVector("00"));
  process(io_apb_PADDR,busCtrl_doWrite,io_apb_PWDATA)
  begin
    zz_12 <= pkg_stdLogicVector("00");
    case io_apb_PADDR is
      when "00000000" =>
      when "01000000" =>
      when "01000100" =>
      when "01001000" =>
      when "01010000" =>
      when "01010100" =>
      when "01011000" =>
      when "00010000" =>
        if busCtrl_doWrite = '1' then
          zz_12 <= pkg_extract(io_apb_PWDATA,1,0);
        end if;
      when "00010100" =>
      when others =>
    end case;
  end process;

  process(timerA_io_full,timerB_io_full)
  begin
    zz_11(0) <= timerA_io_full;
    zz_11(1) <= timerB_io_full;
  end process;

  io_interrupt <= pkg_toStdLogic(interruptCtrl_1_io_pendings /= pkg_stdLogicVector("00"));
  process(io_mainClk, resetCtrl_systemReset)
  begin
    if resetCtrl_systemReset = '1' then
      timerABridge_ticksEnable <= pkg_stdLogicVector("00");
      timerABridge_clearsEnable <= pkg_stdLogicVector("0");
      timerBBridge_ticksEnable <= pkg_stdLogicVector("00");
      timerBBridge_clearsEnable <= pkg_stdLogicVector("0");
      interruptCtrl_1_io_masks_driver <= pkg_stdLogicVector("00");
    elsif rising_edge(io_mainClk) then
      case io_apb_PADDR is
        when "00000000" =>
        when "01000000" =>
          if busCtrl_doWrite = '1' then
            timerABridge_ticksEnable <= pkg_extract(io_apb_PWDATA,1,0);
            timerABridge_clearsEnable <= pkg_extract(io_apb_PWDATA,16,16);
          end if;
        when "01000100" =>
        when "01001000" =>
        when "01010000" =>
          if busCtrl_doWrite = '1' then
            timerBBridge_ticksEnable <= pkg_extract(io_apb_PWDATA,1,0);
            timerBBridge_clearsEnable <= pkg_extract(io_apb_PWDATA,16,16);
          end if;
        when "01010100" =>
        when "01011000" =>
        when "00010000" =>
        when "00010100" =>
          if busCtrl_doWrite = '1' then
            interruptCtrl_1_io_masks_driver <= pkg_extract(io_apb_PWDATA,1,0);
          end if;
        when others =>
      end case;
    end if;
  end process;

  process(io_mainClk)
  begin
    if rising_edge(io_mainClk) then
      case io_apb_PADDR is
        when "00000000" =>
          if busCtrl_doWrite = '1' then
            zz_1 <= unsigned(pkg_extract(io_apb_PWDATA,15,0));
          end if;
        when "01000000" =>
        when "01000100" =>
          if busCtrl_doWrite = '1' then
            timerA_io_limit_driver <= unsigned(pkg_extract(io_apb_PWDATA,15,0));
          end if;
        when "01001000" =>
        when "01010000" =>
        when "01010100" =>
          if busCtrl_doWrite = '1' then
            timerB_io_limit_driver <= unsigned(pkg_extract(io_apb_PWDATA,15,0));
          end if;
        when "01011000" =>
        when "00010000" =>
        when "00010100" =>
        when others =>
      end case;
    end if;
  end process;

end arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity Apb3Decoder is
  port(
    io_input_PADDR : in unsigned(19 downto 0);
    io_input_PSEL : in std_logic_vector(0 downto 0);
    io_input_PENABLE : in std_logic;
    io_input_PREADY : out std_logic;
    io_input_PWRITE : in std_logic;
    io_input_PWDATA : in std_logic_vector(31 downto 0);
    io_input_PRDATA : out std_logic_vector(31 downto 0);
    io_input_PSLVERROR : out std_logic;
    io_output_PADDR : out unsigned(19 downto 0);
    io_output_PSEL : out std_logic_vector(5 downto 0);
    io_output_PENABLE : out std_logic;
    io_output_PREADY : in std_logic;
    io_output_PWRITE : out std_logic;
    io_output_PWDATA : out std_logic_vector(31 downto 0);
    io_output_PRDATA : in std_logic_vector(31 downto 0);
    io_output_PSLVERROR : in std_logic
  );
end Apb3Decoder;

architecture arch of Apb3Decoder is
  signal zz_1 : std_logic_vector(5 downto 0);
  signal zz_2 : std_logic;

begin
  io_output_PSEL <= zz_1;
  zz_2 <= (pkg_extract(io_input_PSEL,0) and pkg_toStdLogic(zz_1 = pkg_stdLogicVector("000000")));
  io_output_PADDR <= io_input_PADDR;
  io_output_PENABLE <= io_input_PENABLE;
  io_output_PWRITE <= io_input_PWRITE;
  io_output_PWDATA <= io_input_PWDATA;
  process(io_input_PADDR,io_input_PSEL)
  begin
    zz_1(0) <= (pkg_toStdLogic((io_input_PADDR and pkg_not(pkg_unsigned("00000000111111111111"))) = pkg_unsigned("00000000000000000000")) and pkg_extract(io_input_PSEL,0));
    zz_1(1) <= (pkg_toStdLogic((io_input_PADDR and pkg_not(pkg_unsigned("00000000111111111111"))) = pkg_unsigned("00110000000000000000")) and pkg_extract(io_input_PSEL,0));
    zz_1(2) <= (pkg_toStdLogic((io_input_PADDR and pkg_not(pkg_unsigned("00000000111111111111"))) = pkg_unsigned("01000000000000000000")) and pkg_extract(io_input_PSEL,0));
    zz_1(3) <= (pkg_toStdLogic((io_input_PADDR and pkg_not(pkg_unsigned("00000000111111111111"))) = pkg_unsigned("01010000000000000000")) and pkg_extract(io_input_PSEL,0));
    zz_1(4) <= (pkg_toStdLogic((io_input_PADDR and pkg_not(pkg_unsigned("00000000111111111111"))) = pkg_unsigned("00010000000000000000")) and pkg_extract(io_input_PSEL,0));
    zz_1(5) <= (pkg_toStdLogic((io_input_PADDR and pkg_not(pkg_unsigned("00000000111111111111"))) = pkg_unsigned("00100000000000000000")) and pkg_extract(io_input_PSEL,0));
  end process;

  process(io_output_PREADY,zz_2)
  begin
    io_input_PREADY <= io_output_PREADY;
    if zz_2 = '1' then
      io_input_PREADY <= pkg_toStdLogic(true);
    end if;
  end process;

  io_input_PRDATA <= io_output_PRDATA;
  process(io_output_PSLVERROR,zz_2)
  begin
    io_input_PSLVERROR <= io_output_PSLVERROR;
    if zz_2 = '1' then
      io_input_PSLVERROR <= pkg_toStdLogic(true);
    end if;
  end process;

end arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity Apb3Router is
  port(
    io_input_PADDR : in unsigned(19 downto 0);
    io_input_PSEL : in std_logic_vector(5 downto 0);
    io_input_PENABLE : in std_logic;
    io_input_PREADY : out std_logic;
    io_input_PWRITE : in std_logic;
    io_input_PWDATA : in std_logic_vector(31 downto 0);
    io_input_PRDATA : out std_logic_vector(31 downto 0);
    io_input_PSLVERROR : out std_logic;
    io_outputs_0_PADDR : out unsigned(19 downto 0);
    io_outputs_0_PSEL : out std_logic_vector(0 downto 0);
    io_outputs_0_PENABLE : out std_logic;
    io_outputs_0_PREADY : in std_logic;
    io_outputs_0_PWRITE : out std_logic;
    io_outputs_0_PWDATA : out std_logic_vector(31 downto 0);
    io_outputs_0_PRDATA : in std_logic_vector(31 downto 0);
    io_outputs_0_PSLVERROR : in std_logic;
    io_outputs_1_PADDR : out unsigned(19 downto 0);
    io_outputs_1_PSEL : out std_logic_vector(0 downto 0);
    io_outputs_1_PENABLE : out std_logic;
    io_outputs_1_PREADY : in std_logic;
    io_outputs_1_PWRITE : out std_logic;
    io_outputs_1_PWDATA : out std_logic_vector(31 downto 0);
    io_outputs_1_PRDATA : in std_logic_vector(31 downto 0);
    io_outputs_1_PSLVERROR : in std_logic;
    io_outputs_2_PADDR : out unsigned(19 downto 0);
    io_outputs_2_PSEL : out std_logic_vector(0 downto 0);
    io_outputs_2_PENABLE : out std_logic;
    io_outputs_2_PREADY : in std_logic;
    io_outputs_2_PWRITE : out std_logic;
    io_outputs_2_PWDATA : out std_logic_vector(31 downto 0);
    io_outputs_2_PRDATA : in std_logic_vector(31 downto 0);
    io_outputs_2_PSLVERROR : in std_logic;
    io_outputs_3_PADDR : out unsigned(19 downto 0);
    io_outputs_3_PSEL : out std_logic_vector(0 downto 0);
    io_outputs_3_PENABLE : out std_logic;
    io_outputs_3_PREADY : in std_logic;
    io_outputs_3_PWRITE : out std_logic;
    io_outputs_3_PWDATA : out std_logic_vector(31 downto 0);
    io_outputs_3_PRDATA : in std_logic_vector(31 downto 0);
    io_outputs_3_PSLVERROR : in std_logic;
    io_outputs_4_PADDR : out unsigned(19 downto 0);
    io_outputs_4_PSEL : out std_logic_vector(0 downto 0);
    io_outputs_4_PENABLE : out std_logic;
    io_outputs_4_PREADY : in std_logic;
    io_outputs_4_PWRITE : out std_logic;
    io_outputs_4_PWDATA : out std_logic_vector(31 downto 0);
    io_outputs_4_PRDATA : in std_logic_vector(31 downto 0);
    io_outputs_4_PSLVERROR : in std_logic;
    io_outputs_5_PADDR : out unsigned(19 downto 0);
    io_outputs_5_PSEL : out std_logic_vector(0 downto 0);
    io_outputs_5_PENABLE : out std_logic;
    io_outputs_5_PREADY : in std_logic;
    io_outputs_5_PWRITE : out std_logic;
    io_outputs_5_PWDATA : out std_logic_vector(31 downto 0);
    io_outputs_5_PRDATA : in std_logic_vector(31 downto 0);
    io_outputs_5_PSLVERROR : in std_logic;
    io_mainClk : in std_logic;
    resetCtrl_systemReset : in std_logic
  );
end Apb3Router;

architecture arch of Apb3Router is
  signal zz_6 : std_logic;
  signal zz_7 : std_logic_vector(31 downto 0);
  signal zz_8 : std_logic;

  signal zz_1 : std_logic;
  signal zz_2 : std_logic;
  signal zz_3 : std_logic;
  signal zz_4 : std_logic;
  signal zz_5 : std_logic;
  signal selIndex : unsigned(2 downto 0);
begin
  process(selIndex,io_outputs_0_PREADY,io_outputs_0_PRDATA,io_outputs_0_PSLVERROR,io_outputs_1_PREADY,io_outputs_1_PRDATA,io_outputs_1_PSLVERROR,io_outputs_2_PREADY,io_outputs_2_PRDATA,io_outputs_2_PSLVERROR,io_outputs_3_PREADY,io_outputs_3_PRDATA,io_outputs_3_PSLVERROR,io_outputs_4_PREADY,io_outputs_4_PRDATA,io_outputs_4_PSLVERROR,io_outputs_5_PREADY,io_outputs_5_PRDATA,io_outputs_5_PSLVERROR)
  begin
    case selIndex is
      when "000" =>
        zz_6 <= io_outputs_0_PREADY;
        zz_7 <= io_outputs_0_PRDATA;
        zz_8 <= io_outputs_0_PSLVERROR;
      when "001" =>
        zz_6 <= io_outputs_1_PREADY;
        zz_7 <= io_outputs_1_PRDATA;
        zz_8 <= io_outputs_1_PSLVERROR;
      when "010" =>
        zz_6 <= io_outputs_2_PREADY;
        zz_7 <= io_outputs_2_PRDATA;
        zz_8 <= io_outputs_2_PSLVERROR;
      when "011" =>
        zz_6 <= io_outputs_3_PREADY;
        zz_7 <= io_outputs_3_PRDATA;
        zz_8 <= io_outputs_3_PSLVERROR;
      when "100" =>
        zz_6 <= io_outputs_4_PREADY;
        zz_7 <= io_outputs_4_PRDATA;
        zz_8 <= io_outputs_4_PSLVERROR;
      when others =>
        zz_6 <= io_outputs_5_PREADY;
        zz_7 <= io_outputs_5_PRDATA;
        zz_8 <= io_outputs_5_PSLVERROR;
    end case;
  end process;

  io_outputs_0_PADDR <= io_input_PADDR;
  io_outputs_0_PENABLE <= io_input_PENABLE;
  io_outputs_0_PSEL(0) <= pkg_extract(io_input_PSEL,0);
  io_outputs_0_PWRITE <= io_input_PWRITE;
  io_outputs_0_PWDATA <= io_input_PWDATA;
  io_outputs_1_PADDR <= io_input_PADDR;
  io_outputs_1_PENABLE <= io_input_PENABLE;
  io_outputs_1_PSEL(0) <= pkg_extract(io_input_PSEL,1);
  io_outputs_1_PWRITE <= io_input_PWRITE;
  io_outputs_1_PWDATA <= io_input_PWDATA;
  io_outputs_2_PADDR <= io_input_PADDR;
  io_outputs_2_PENABLE <= io_input_PENABLE;
  io_outputs_2_PSEL(0) <= pkg_extract(io_input_PSEL,2);
  io_outputs_2_PWRITE <= io_input_PWRITE;
  io_outputs_2_PWDATA <= io_input_PWDATA;
  io_outputs_3_PADDR <= io_input_PADDR;
  io_outputs_3_PENABLE <= io_input_PENABLE;
  io_outputs_3_PSEL(0) <= pkg_extract(io_input_PSEL,3);
  io_outputs_3_PWRITE <= io_input_PWRITE;
  io_outputs_3_PWDATA <= io_input_PWDATA;
  io_outputs_4_PADDR <= io_input_PADDR;
  io_outputs_4_PENABLE <= io_input_PENABLE;
  io_outputs_4_PSEL(0) <= pkg_extract(io_input_PSEL,4);
  io_outputs_4_PWRITE <= io_input_PWRITE;
  io_outputs_4_PWDATA <= io_input_PWDATA;
  io_outputs_5_PADDR <= io_input_PADDR;
  io_outputs_5_PENABLE <= io_input_PENABLE;
  io_outputs_5_PSEL(0) <= pkg_extract(io_input_PSEL,5);
  io_outputs_5_PWRITE <= io_input_PWRITE;
  io_outputs_5_PWDATA <= io_input_PWDATA;
  zz_1 <= pkg_extract(io_input_PSEL,3);
  zz_2 <= pkg_extract(io_input_PSEL,5);
  zz_3 <= ((pkg_extract(io_input_PSEL,1) or zz_1) or zz_2);
  zz_4 <= (pkg_extract(io_input_PSEL,2) or zz_1);
  zz_5 <= (pkg_extract(io_input_PSEL,4) or zz_2);
  io_input_PREADY <= zz_6;
  io_input_PRDATA <= zz_7;
  io_input_PSLVERROR <= zz_8;
  process(io_mainClk)
  begin
    if rising_edge(io_mainClk) then
      selIndex <= unsigned(pkg_cat(pkg_toStdLogicVector(zz_5),pkg_cat(pkg_toStdLogicVector(zz_4),pkg_toStdLogicVector(zz_3))));
    end if;
  end process;

end arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.pkg_scala2hdl.all;
use work.all;
use work.pkg_enum.all;


entity Murax is
  port(
    io_asyncReset : in std_logic;
    io_mainClk : in std_logic;
    io_jtag_tms : in std_logic;
    io_jtag_tdi : in std_logic;
    io_jtag_tdo : out std_logic;
    io_jtag_tck : in std_logic;
    io_gpioA_read : in std_logic_vector(31 downto 0);
    io_gpioA_write : out std_logic_vector(31 downto 0);
    io_gpioA_writeEnable : out std_logic_vector(31 downto 0);
    io_gpioB_read : in std_logic_vector(31 downto 0);
    io_gpioB_write : out std_logic_vector(31 downto 0);
    io_gpioB_writeEnable : out std_logic_vector(31 downto 0);
    io_gpioC_read : in std_logic_vector(31 downto 0);
    io_gpioC_write : out std_logic_vector(31 downto 0);
    io_gpioC_writeEnable : out std_logic_vector(31 downto 0);
    io_gpioD_read : in std_logic_vector(31 downto 0);
    io_gpioD_write : out std_logic_vector(31 downto 0);
    io_gpioD_writeEnable : out std_logic_vector(31 downto 0);
    io_uart_txd : out std_logic;
    io_uart_rxd : in std_logic
  );
end Murax;

architecture arch of Murax is
  signal zz_5 : std_logic;
  signal zz_6 : unsigned(7 downto 0);
  signal zz_7 : std_logic;
  signal zz_8 : std_logic;
  signal zz_9 : unsigned(3 downto 0);
  signal zz_10 : unsigned(3 downto 0);
  signal zz_11 : unsigned(3 downto 0);
  signal zz_12 : unsigned(3 downto 0);
  signal zz_13 : unsigned(4 downto 0);
  signal zz_14 : unsigned(7 downto 0);
  signal zz_15 : std_logic;
  signal zz_16 : std_logic_vector(31 downto 0);
  signal io_asyncReset_buffercc_io_dataOut : std_logic;
  signal system_mainBusArbiter_io_iBus_cmd_ready : std_logic;
  signal system_mainBusArbiter_io_iBus_rsp_valid : std_logic;
  signal system_mainBusArbiter_io_iBus_rsp_payload_error : std_logic;
  signal system_mainBusArbiter_io_iBus_rsp_payload_inst : std_logic_vector(31 downto 0);
  signal system_mainBusArbiter_io_dBus_cmd_ready : std_logic;
  signal system_mainBusArbiter_io_dBus_rsp_ready : std_logic;
  signal system_mainBusArbiter_io_dBus_rsp_error : std_logic;
  signal system_mainBusArbiter_io_dBus_rsp_data : std_logic_vector(31 downto 0);
  signal system_mainBusArbiter_io_masterBus_cmd_valid : std_logic;
  signal system_mainBusArbiter_io_masterBus_cmd_payload_write : std_logic;
  signal system_mainBusArbiter_io_masterBus_cmd_payload_address : unsigned(31 downto 0);
  signal system_mainBusArbiter_io_masterBus_cmd_payload_data : std_logic_vector(31 downto 0);
  signal system_mainBusArbiter_io_masterBus_cmd_payload_mask : std_logic_vector(3 downto 0);
  signal system_cpu_iBus_cmd_valid : std_logic;
  signal system_cpu_iBus_cmd_payload_pc : unsigned(31 downto 0);
  signal system_cpu_debug_bus_cmd_ready : std_logic;
  signal system_cpu_debug_bus_rsp_data : std_logic_vector(31 downto 0);
  signal system_cpu_debug_resetOut : std_logic;
  signal system_cpu_dBus_cmd_valid : std_logic;
  signal system_cpu_dBus_cmd_payload_wr : std_logic;
  signal system_cpu_dBus_cmd_payload_address : unsigned(31 downto 0);
  signal system_cpu_dBus_cmd_payload_data : std_logic_vector(31 downto 0);
  signal system_cpu_dBus_cmd_payload_size : unsigned(1 downto 0);
  signal jtagBridge_1_io_jtag_tdo : std_logic;
  signal jtagBridge_1_io_remote_cmd_valid : std_logic;
  signal jtagBridge_1_io_remote_cmd_payload_last : std_logic;
  signal jtagBridge_1_io_remote_cmd_payload_fragment : std_logic_vector(0 downto 0);
  signal jtagBridge_1_io_remote_rsp_ready : std_logic;
  signal systemDebugger_1_io_remote_cmd_ready : std_logic;
  signal systemDebugger_1_io_remote_rsp_valid : std_logic;
  signal systemDebugger_1_io_remote_rsp_payload_error : std_logic;
  signal systemDebugger_1_io_remote_rsp_payload_data : std_logic_vector(31 downto 0);
  signal systemDebugger_1_io_mem_cmd_valid : std_logic;
  signal systemDebugger_1_io_mem_cmd_payload_address : unsigned(31 downto 0);
  signal systemDebugger_1_io_mem_cmd_payload_data : std_logic_vector(31 downto 0);
  signal systemDebugger_1_io_mem_cmd_payload_wr : std_logic;
  signal systemDebugger_1_io_mem_cmd_payload_size : unsigned(1 downto 0);
  signal system_ram_io_bus_cmd_ready : std_logic;
  signal system_ram_io_bus_rsp_valid : std_logic;
  signal system_ram_io_bus_rsp_payload_data : std_logic_vector(31 downto 0);
  signal system_apbBridge_io_pipelinedMemoryBus_cmd_ready : std_logic;
  signal system_apbBridge_io_pipelinedMemoryBus_rsp_valid : std_logic;
  signal system_apbBridge_io_pipelinedMemoryBus_rsp_payload_data : std_logic_vector(31 downto 0);
  signal system_apbBridge_io_apb_PADDR : unsigned(19 downto 0);
  signal system_apbBridge_io_apb_PSEL : std_logic_vector(0 downto 0);
  signal system_apbBridge_io_apb_PENABLE : std_logic;
  signal system_apbBridge_io_apb_PWRITE : std_logic;
  signal system_apbBridge_io_apb_PWDATA : std_logic_vector(31 downto 0);
  signal system_gpioACtrl_io_apb_PREADY : std_logic;
  signal system_gpioACtrl_io_apb_PRDATA : std_logic_vector(31 downto 0);
  signal system_gpioACtrl_io_apb_PSLVERROR : std_logic;
  signal system_gpioACtrl_io_gpio_write : std_logic_vector(31 downto 0);
  signal system_gpioACtrl_io_gpio_writeEnable : std_logic_vector(31 downto 0);
  signal system_gpioACtrl_io_value : std_logic_vector(31 downto 0);
  signal system_gpioBCtrl_io_apb_PREADY : std_logic;
  signal system_gpioBCtrl_io_apb_PRDATA : std_logic_vector(31 downto 0);
  signal system_gpioBCtrl_io_apb_PSLVERROR : std_logic;
  signal system_gpioBCtrl_io_gpio_write : std_logic_vector(31 downto 0);
  signal system_gpioBCtrl_io_gpio_writeEnable : std_logic_vector(31 downto 0);
  signal system_gpioBCtrl_io_value : std_logic_vector(31 downto 0);
  signal system_gpioCCtrl_io_apb_PREADY : std_logic;
  signal system_gpioCCtrl_io_apb_PRDATA : std_logic_vector(31 downto 0);
  signal system_gpioCCtrl_io_apb_PSLVERROR : std_logic;
  signal system_gpioCCtrl_io_gpio_write : std_logic_vector(31 downto 0);
  signal system_gpioCCtrl_io_gpio_writeEnable : std_logic_vector(31 downto 0);
  signal system_gpioCCtrl_io_value : std_logic_vector(31 downto 0);
  signal system_gpioDCtrl_io_apb_PREADY : std_logic;
  signal system_gpioDCtrl_io_apb_PRDATA : std_logic_vector(31 downto 0);
  signal system_gpioDCtrl_io_apb_PSLVERROR : std_logic;
  signal system_gpioDCtrl_io_gpio_write : std_logic_vector(31 downto 0);
  signal system_gpioDCtrl_io_gpio_writeEnable : std_logic_vector(31 downto 0);
  signal system_gpioDCtrl_io_value : std_logic_vector(31 downto 0);
  signal system_uartCtrl_io_apb_PREADY : std_logic;
  signal system_uartCtrl_io_apb_PRDATA : std_logic_vector(31 downto 0);
  signal system_uartCtrl_io_uart_txd : std_logic;
  signal system_uartCtrl_io_interrupt : std_logic;
  signal system_timer_io_apb_PREADY : std_logic;
  signal system_timer_io_apb_PRDATA : std_logic_vector(31 downto 0);
  signal system_timer_io_apb_PSLVERROR : std_logic;
  signal system_timer_io_interrupt : std_logic;
  signal io_apb_decoder_io_input_PREADY : std_logic;
  signal io_apb_decoder_io_input_PRDATA : std_logic_vector(31 downto 0);
  signal io_apb_decoder_io_input_PSLVERROR : std_logic;
  signal io_apb_decoder_io_output_PADDR : unsigned(19 downto 0);
  signal io_apb_decoder_io_output_PSEL : std_logic_vector(5 downto 0);
  signal io_apb_decoder_io_output_PENABLE : std_logic;
  signal io_apb_decoder_io_output_PWRITE : std_logic;
  signal io_apb_decoder_io_output_PWDATA : std_logic_vector(31 downto 0);
  signal apb3Router_1_io_input_PREADY : std_logic;
  signal apb3Router_1_io_input_PRDATA : std_logic_vector(31 downto 0);
  signal apb3Router_1_io_input_PSLVERROR : std_logic;
  signal apb3Router_1_io_outputs_0_PADDR : unsigned(19 downto 0);
  signal apb3Router_1_io_outputs_0_PSEL : std_logic_vector(0 downto 0);
  signal apb3Router_1_io_outputs_0_PENABLE : std_logic;
  signal apb3Router_1_io_outputs_0_PWRITE : std_logic;
  signal apb3Router_1_io_outputs_0_PWDATA : std_logic_vector(31 downto 0);
  signal apb3Router_1_io_outputs_1_PADDR : unsigned(19 downto 0);
  signal apb3Router_1_io_outputs_1_PSEL : std_logic_vector(0 downto 0);
  signal apb3Router_1_io_outputs_1_PENABLE : std_logic;
  signal apb3Router_1_io_outputs_1_PWRITE : std_logic;
  signal apb3Router_1_io_outputs_1_PWDATA : std_logic_vector(31 downto 0);
  signal apb3Router_1_io_outputs_2_PADDR : unsigned(19 downto 0);
  signal apb3Router_1_io_outputs_2_PSEL : std_logic_vector(0 downto 0);
  signal apb3Router_1_io_outputs_2_PENABLE : std_logic;
  signal apb3Router_1_io_outputs_2_PWRITE : std_logic;
  signal apb3Router_1_io_outputs_2_PWDATA : std_logic_vector(31 downto 0);
  signal apb3Router_1_io_outputs_3_PADDR : unsigned(19 downto 0);
  signal apb3Router_1_io_outputs_3_PSEL : std_logic_vector(0 downto 0);
  signal apb3Router_1_io_outputs_3_PENABLE : std_logic;
  signal apb3Router_1_io_outputs_3_PWRITE : std_logic;
  signal apb3Router_1_io_outputs_3_PWDATA : std_logic_vector(31 downto 0);
  signal apb3Router_1_io_outputs_4_PADDR : unsigned(19 downto 0);
  signal apb3Router_1_io_outputs_4_PSEL : std_logic_vector(0 downto 0);
  signal apb3Router_1_io_outputs_4_PENABLE : std_logic;
  signal apb3Router_1_io_outputs_4_PWRITE : std_logic;
  signal apb3Router_1_io_outputs_4_PWDATA : std_logic_vector(31 downto 0);
  signal apb3Router_1_io_outputs_5_PADDR : unsigned(19 downto 0);
  signal apb3Router_1_io_outputs_5_PSEL : std_logic_vector(0 downto 0);
  signal apb3Router_1_io_outputs_5_PENABLE : std_logic;
  signal apb3Router_1_io_outputs_5_PWRITE : std_logic;
  signal apb3Router_1_io_outputs_5_PWDATA : std_logic_vector(31 downto 0);
  signal zz_17 : std_logic;
  signal zz_18 : std_logic;
  signal zz_19 : std_logic;

  signal resetCtrl_mainClkResetUnbuffered : std_logic;
  signal resetCtrl_systemClkResetCounter : unsigned(5 downto 0) := pkg_unsigned("000000");
  signal zz_1 : unsigned(5 downto 0);
  signal resetCtrl_mainClkReset : std_logic;
  signal resetCtrl_systemReset : std_logic;
  signal system_timerInterrupt : std_logic;
  signal system_externalInterrupt : std_logic;
  signal system_cpu_dBus_cmd_halfPipe_valid : std_logic;
  signal system_cpu_dBus_cmd_halfPipe_ready : std_logic;
  signal system_cpu_dBus_cmd_halfPipe_payload_wr : std_logic;
  signal system_cpu_dBus_cmd_halfPipe_payload_address : unsigned(31 downto 0);
  signal system_cpu_dBus_cmd_halfPipe_payload_data : std_logic_vector(31 downto 0);
  signal system_cpu_dBus_cmd_halfPipe_payload_size : unsigned(1 downto 0);
  signal system_cpu_dBus_cmd_halfPipe_regs_valid : std_logic;
  signal system_cpu_dBus_cmd_halfPipe_regs_ready : std_logic;
  signal system_cpu_dBus_cmd_halfPipe_regs_payload_wr : std_logic;
  signal system_cpu_dBus_cmd_halfPipe_regs_payload_address : unsigned(31 downto 0);
  signal system_cpu_dBus_cmd_halfPipe_regs_payload_data : std_logic_vector(31 downto 0);
  signal system_cpu_dBus_cmd_halfPipe_regs_payload_size : unsigned(1 downto 0);
  signal system_cpu_debug_resetOut_regNext : std_logic;
  signal zz_2 : std_logic;
  signal system_mainBusDecoder_logic_masterPipelined_cmd_valid : std_logic;
  signal system_mainBusDecoder_logic_masterPipelined_cmd_ready : std_logic;
  signal system_mainBusDecoder_logic_masterPipelined_cmd_payload_write : std_logic;
  signal system_mainBusDecoder_logic_masterPipelined_cmd_payload_address : unsigned(31 downto 0);
  signal system_mainBusDecoder_logic_masterPipelined_cmd_payload_data : std_logic_vector(31 downto 0);
  signal system_mainBusDecoder_logic_masterPipelined_cmd_payload_mask : std_logic_vector(3 downto 0);
  signal system_mainBusDecoder_logic_masterPipelined_rsp_valid : std_logic;
  signal system_mainBusDecoder_logic_masterPipelined_rsp_payload_data : std_logic_vector(31 downto 0);
  signal system_mainBusDecoder_logic_hits_0 : std_logic;
  signal zz_3 : std_logic;
  signal system_mainBusDecoder_logic_hits_1 : std_logic;
  signal zz_4 : std_logic;
  signal system_mainBusDecoder_logic_noHit : std_logic;
  signal system_mainBusDecoder_logic_rspPending : std_logic;
  signal system_mainBusDecoder_logic_rspNoHit : std_logic;
  signal system_mainBusDecoder_logic_rspSourceId : unsigned(0 downto 0);
begin
  zz_17 <= pkg_toStdLogic(resetCtrl_systemClkResetCounter /= zz_1);
  zz_18 <= (system_mainBusDecoder_logic_rspPending and (not system_mainBusDecoder_logic_masterPipelined_rsp_valid));
  zz_19 <= (not system_cpu_dBus_cmd_halfPipe_regs_valid);
  io_asyncReset_buffercc : entity work.BufferCC_6
    port map ( 
      io_dataIn => io_asyncReset,
      io_dataOut => io_asyncReset_buffercc_io_dataOut,
      io_mainClk => io_mainClk 
    );
  system_mainBusArbiter : entity work.MuraxMasterArbiter
    port map ( 
      io_iBus_cmd_valid => system_cpu_iBus_cmd_valid,
      io_iBus_cmd_ready => system_mainBusArbiter_io_iBus_cmd_ready,
      io_iBus_cmd_payload_pc => system_cpu_iBus_cmd_payload_pc,
      io_iBus_rsp_valid => system_mainBusArbiter_io_iBus_rsp_valid,
      io_iBus_rsp_payload_error => system_mainBusArbiter_io_iBus_rsp_payload_error,
      io_iBus_rsp_payload_inst => system_mainBusArbiter_io_iBus_rsp_payload_inst,
      io_dBus_cmd_valid => system_cpu_dBus_cmd_halfPipe_valid,
      io_dBus_cmd_ready => system_mainBusArbiter_io_dBus_cmd_ready,
      io_dBus_cmd_payload_wr => system_cpu_dBus_cmd_halfPipe_payload_wr,
      io_dBus_cmd_payload_address => system_cpu_dBus_cmd_halfPipe_payload_address,
      io_dBus_cmd_payload_data => system_cpu_dBus_cmd_halfPipe_payload_data,
      io_dBus_cmd_payload_size => system_cpu_dBus_cmd_halfPipe_payload_size,
      io_dBus_rsp_ready => system_mainBusArbiter_io_dBus_rsp_ready,
      io_dBus_rsp_error => system_mainBusArbiter_io_dBus_rsp_error,
      io_dBus_rsp_data => system_mainBusArbiter_io_dBus_rsp_data,
      io_masterBus_cmd_valid => system_mainBusArbiter_io_masterBus_cmd_valid,
      io_masterBus_cmd_ready => system_mainBusDecoder_logic_masterPipelined_cmd_ready,
      io_masterBus_cmd_payload_write => system_mainBusArbiter_io_masterBus_cmd_payload_write,
      io_masterBus_cmd_payload_address => system_mainBusArbiter_io_masterBus_cmd_payload_address,
      io_masterBus_cmd_payload_data => system_mainBusArbiter_io_masterBus_cmd_payload_data,
      io_masterBus_cmd_payload_mask => system_mainBusArbiter_io_masterBus_cmd_payload_mask,
      io_masterBus_rsp_valid => system_mainBusDecoder_logic_masterPipelined_rsp_valid,
      io_masterBus_rsp_payload_data => system_mainBusDecoder_logic_masterPipelined_rsp_payload_data,
      io_mainClk => io_mainClk,
      resetCtrl_systemReset => resetCtrl_systemReset 
    );
  system_cpu : entity work.VexRiscv
    port map ( 
      iBus_cmd_valid => system_cpu_iBus_cmd_valid,
      iBus_cmd_ready => system_mainBusArbiter_io_iBus_cmd_ready,
      iBus_cmd_payload_pc => system_cpu_iBus_cmd_payload_pc,
      iBus_rsp_valid => system_mainBusArbiter_io_iBus_rsp_valid,
      iBus_rsp_payload_error => system_mainBusArbiter_io_iBus_rsp_payload_error,
      iBus_rsp_payload_inst => system_mainBusArbiter_io_iBus_rsp_payload_inst,
      timerInterrupt => system_timerInterrupt,
      externalInterrupt => system_externalInterrupt,
      softwareInterrupt => zz_5,
      debug_bus_cmd_valid => systemDebugger_1_io_mem_cmd_valid,
      debug_bus_cmd_ready => system_cpu_debug_bus_cmd_ready,
      debug_bus_cmd_payload_wr => systemDebugger_1_io_mem_cmd_payload_wr,
      debug_bus_cmd_payload_address => zz_6,
      debug_bus_cmd_payload_data => systemDebugger_1_io_mem_cmd_payload_data,
      debug_bus_rsp_data => system_cpu_debug_bus_rsp_data,
      debug_resetOut => system_cpu_debug_resetOut,
      dBus_cmd_valid => system_cpu_dBus_cmd_valid,
      dBus_cmd_ready => system_cpu_dBus_cmd_halfPipe_regs_ready,
      dBus_cmd_payload_wr => system_cpu_dBus_cmd_payload_wr,
      dBus_cmd_payload_address => system_cpu_dBus_cmd_payload_address,
      dBus_cmd_payload_data => system_cpu_dBus_cmd_payload_data,
      dBus_cmd_payload_size => system_cpu_dBus_cmd_payload_size,
      dBus_rsp_ready => system_mainBusArbiter_io_dBus_rsp_ready,
      dBus_rsp_error => system_mainBusArbiter_io_dBus_rsp_error,
      dBus_rsp_data => system_mainBusArbiter_io_dBus_rsp_data,
      io_mainClk => io_mainClk,
      resetCtrl_systemReset => resetCtrl_systemReset,
      resetCtrl_mainClkReset => resetCtrl_mainClkReset 
    );
  jtagBridge_1 : entity work.JtagBridge
    port map ( 
      io_jtag_tms => io_jtag_tms,
      io_jtag_tdi => io_jtag_tdi,
      io_jtag_tdo => jtagBridge_1_io_jtag_tdo,
      io_jtag_tck => io_jtag_tck,
      io_remote_cmd_valid => jtagBridge_1_io_remote_cmd_valid,
      io_remote_cmd_ready => systemDebugger_1_io_remote_cmd_ready,
      io_remote_cmd_payload_last => jtagBridge_1_io_remote_cmd_payload_last,
      io_remote_cmd_payload_fragment => jtagBridge_1_io_remote_cmd_payload_fragment,
      io_remote_rsp_valid => systemDebugger_1_io_remote_rsp_valid,
      io_remote_rsp_ready => jtagBridge_1_io_remote_rsp_ready,
      io_remote_rsp_payload_error => systemDebugger_1_io_remote_rsp_payload_error,
      io_remote_rsp_payload_data => systemDebugger_1_io_remote_rsp_payload_data,
      io_mainClk => io_mainClk,
      resetCtrl_mainClkReset => resetCtrl_mainClkReset 
    );
  systemDebugger_1 : entity work.SystemDebugger
    port map ( 
      io_remote_cmd_valid => jtagBridge_1_io_remote_cmd_valid,
      io_remote_cmd_ready => systemDebugger_1_io_remote_cmd_ready,
      io_remote_cmd_payload_last => jtagBridge_1_io_remote_cmd_payload_last,
      io_remote_cmd_payload_fragment => jtagBridge_1_io_remote_cmd_payload_fragment,
      io_remote_rsp_valid => systemDebugger_1_io_remote_rsp_valid,
      io_remote_rsp_ready => jtagBridge_1_io_remote_rsp_ready,
      io_remote_rsp_payload_error => systemDebugger_1_io_remote_rsp_payload_error,
      io_remote_rsp_payload_data => systemDebugger_1_io_remote_rsp_payload_data,
      io_mem_cmd_valid => systemDebugger_1_io_mem_cmd_valid,
      io_mem_cmd_ready => system_cpu_debug_bus_cmd_ready,
      io_mem_cmd_payload_address => systemDebugger_1_io_mem_cmd_payload_address,
      io_mem_cmd_payload_data => systemDebugger_1_io_mem_cmd_payload_data,
      io_mem_cmd_payload_wr => systemDebugger_1_io_mem_cmd_payload_wr,
      io_mem_cmd_payload_size => systemDebugger_1_io_mem_cmd_payload_size,
      io_mem_rsp_valid => zz_2,
      io_mem_rsp_payload => system_cpu_debug_bus_rsp_data,
      io_mainClk => io_mainClk,
      resetCtrl_mainClkReset => resetCtrl_mainClkReset 
    );
  system_ram : entity work.MuraxPipelinedMemoryBusRam
    port map ( 
      io_bus_cmd_valid => zz_7,
      io_bus_cmd_ready => system_ram_io_bus_cmd_ready,
      io_bus_cmd_payload_write => zz_3,
      io_bus_cmd_payload_address => system_mainBusDecoder_logic_masterPipelined_cmd_payload_address,
      io_bus_cmd_payload_data => system_mainBusDecoder_logic_masterPipelined_cmd_payload_data,
      io_bus_cmd_payload_mask => system_mainBusDecoder_logic_masterPipelined_cmd_payload_mask,
      io_bus_rsp_valid => system_ram_io_bus_rsp_valid,
      io_bus_rsp_payload_data => system_ram_io_bus_rsp_payload_data,
      io_mainClk => io_mainClk,
      resetCtrl_systemReset => resetCtrl_systemReset 
    );
  system_apbBridge : entity work.PipelinedMemoryBusToApbBridge
    port map ( 
      io_pipelinedMemoryBus_cmd_valid => zz_8,
      io_pipelinedMemoryBus_cmd_ready => system_apbBridge_io_pipelinedMemoryBus_cmd_ready,
      io_pipelinedMemoryBus_cmd_payload_write => zz_4,
      io_pipelinedMemoryBus_cmd_payload_address => system_mainBusDecoder_logic_masterPipelined_cmd_payload_address,
      io_pipelinedMemoryBus_cmd_payload_data => system_mainBusDecoder_logic_masterPipelined_cmd_payload_data,
      io_pipelinedMemoryBus_cmd_payload_mask => system_mainBusDecoder_logic_masterPipelined_cmd_payload_mask,
      io_pipelinedMemoryBus_rsp_valid => system_apbBridge_io_pipelinedMemoryBus_rsp_valid,
      io_pipelinedMemoryBus_rsp_payload_data => system_apbBridge_io_pipelinedMemoryBus_rsp_payload_data,
      io_apb_PADDR => system_apbBridge_io_apb_PADDR,
      io_apb_PSEL => system_apbBridge_io_apb_PSEL,
      io_apb_PENABLE => system_apbBridge_io_apb_PENABLE,
      io_apb_PREADY => io_apb_decoder_io_input_PREADY,
      io_apb_PWRITE => system_apbBridge_io_apb_PWRITE,
      io_apb_PWDATA => system_apbBridge_io_apb_PWDATA,
      io_apb_PRDATA => io_apb_decoder_io_input_PRDATA,
      io_apb_PSLVERROR => io_apb_decoder_io_input_PSLVERROR,
      io_mainClk => io_mainClk,
      resetCtrl_systemReset => resetCtrl_systemReset 
    );
  system_gpioACtrl : entity work.Apb3Gpio
    port map ( 
      io_apb_PADDR => zz_9,
      io_apb_PSEL => apb3Router_1_io_outputs_0_PSEL,
      io_apb_PENABLE => apb3Router_1_io_outputs_0_PENABLE,
      io_apb_PREADY => system_gpioACtrl_io_apb_PREADY,
      io_apb_PWRITE => apb3Router_1_io_outputs_0_PWRITE,
      io_apb_PWDATA => apb3Router_1_io_outputs_0_PWDATA,
      io_apb_PRDATA => system_gpioACtrl_io_apb_PRDATA,
      io_apb_PSLVERROR => system_gpioACtrl_io_apb_PSLVERROR,
      io_gpio_read => io_gpioA_read,
      io_gpio_write => system_gpioACtrl_io_gpio_write,
      io_gpio_writeEnable => system_gpioACtrl_io_gpio_writeEnable,
      io_value => system_gpioACtrl_io_value,
      io_mainClk => io_mainClk,
      resetCtrl_systemReset => resetCtrl_systemReset 
    );
  system_gpioBCtrl : entity work.Apb3Gpio
    port map ( 
      io_apb_PADDR => zz_10,
      io_apb_PSEL => apb3Router_1_io_outputs_1_PSEL,
      io_apb_PENABLE => apb3Router_1_io_outputs_1_PENABLE,
      io_apb_PREADY => system_gpioBCtrl_io_apb_PREADY,
      io_apb_PWRITE => apb3Router_1_io_outputs_1_PWRITE,
      io_apb_PWDATA => apb3Router_1_io_outputs_1_PWDATA,
      io_apb_PRDATA => system_gpioBCtrl_io_apb_PRDATA,
      io_apb_PSLVERROR => system_gpioBCtrl_io_apb_PSLVERROR,
      io_gpio_read => io_gpioB_read,
      io_gpio_write => system_gpioBCtrl_io_gpio_write,
      io_gpio_writeEnable => system_gpioBCtrl_io_gpio_writeEnable,
      io_value => system_gpioBCtrl_io_value,
      io_mainClk => io_mainClk,
      resetCtrl_systemReset => resetCtrl_systemReset 
    );
  system_gpioCCtrl : entity work.Apb3Gpio
    port map ( 
      io_apb_PADDR => zz_11,
      io_apb_PSEL => apb3Router_1_io_outputs_2_PSEL,
      io_apb_PENABLE => apb3Router_1_io_outputs_2_PENABLE,
      io_apb_PREADY => system_gpioCCtrl_io_apb_PREADY,
      io_apb_PWRITE => apb3Router_1_io_outputs_2_PWRITE,
      io_apb_PWDATA => apb3Router_1_io_outputs_2_PWDATA,
      io_apb_PRDATA => system_gpioCCtrl_io_apb_PRDATA,
      io_apb_PSLVERROR => system_gpioCCtrl_io_apb_PSLVERROR,
      io_gpio_read => io_gpioC_read,
      io_gpio_write => system_gpioCCtrl_io_gpio_write,
      io_gpio_writeEnable => system_gpioCCtrl_io_gpio_writeEnable,
      io_value => system_gpioCCtrl_io_value,
      io_mainClk => io_mainClk,
      resetCtrl_systemReset => resetCtrl_systemReset 
    );
  system_gpioDCtrl : entity work.Apb3Gpio
    port map ( 
      io_apb_PADDR => zz_12,
      io_apb_PSEL => apb3Router_1_io_outputs_3_PSEL,
      io_apb_PENABLE => apb3Router_1_io_outputs_3_PENABLE,
      io_apb_PREADY => system_gpioDCtrl_io_apb_PREADY,
      io_apb_PWRITE => apb3Router_1_io_outputs_3_PWRITE,
      io_apb_PWDATA => apb3Router_1_io_outputs_3_PWDATA,
      io_apb_PRDATA => system_gpioDCtrl_io_apb_PRDATA,
      io_apb_PSLVERROR => system_gpioDCtrl_io_apb_PSLVERROR,
      io_gpio_read => io_gpioD_read,
      io_gpio_write => system_gpioDCtrl_io_gpio_write,
      io_gpio_writeEnable => system_gpioDCtrl_io_gpio_writeEnable,
      io_value => system_gpioDCtrl_io_value,
      io_mainClk => io_mainClk,
      resetCtrl_systemReset => resetCtrl_systemReset 
    );
  system_uartCtrl : entity work.Apb3UartCtrl
    port map ( 
      io_apb_PADDR => zz_13,
      io_apb_PSEL => apb3Router_1_io_outputs_4_PSEL,
      io_apb_PENABLE => apb3Router_1_io_outputs_4_PENABLE,
      io_apb_PREADY => system_uartCtrl_io_apb_PREADY,
      io_apb_PWRITE => apb3Router_1_io_outputs_4_PWRITE,
      io_apb_PWDATA => apb3Router_1_io_outputs_4_PWDATA,
      io_apb_PRDATA => system_uartCtrl_io_apb_PRDATA,
      io_uart_txd => system_uartCtrl_io_uart_txd,
      io_uart_rxd => io_uart_rxd,
      io_interrupt => system_uartCtrl_io_interrupt,
      io_mainClk => io_mainClk,
      resetCtrl_systemReset => resetCtrl_systemReset 
    );
  system_timer : entity work.MuraxApb3Timer
    port map ( 
      io_apb_PADDR => zz_14,
      io_apb_PSEL => apb3Router_1_io_outputs_5_PSEL,
      io_apb_PENABLE => apb3Router_1_io_outputs_5_PENABLE,
      io_apb_PREADY => system_timer_io_apb_PREADY,
      io_apb_PWRITE => apb3Router_1_io_outputs_5_PWRITE,
      io_apb_PWDATA => apb3Router_1_io_outputs_5_PWDATA,
      io_apb_PRDATA => system_timer_io_apb_PRDATA,
      io_apb_PSLVERROR => system_timer_io_apb_PSLVERROR,
      io_interrupt => system_timer_io_interrupt,
      io_mainClk => io_mainClk,
      resetCtrl_systemReset => resetCtrl_systemReset 
    );
  io_apb_decoder : entity work.Apb3Decoder
    port map ( 
      io_input_PADDR => system_apbBridge_io_apb_PADDR,
      io_input_PSEL => system_apbBridge_io_apb_PSEL,
      io_input_PENABLE => system_apbBridge_io_apb_PENABLE,
      io_input_PREADY => io_apb_decoder_io_input_PREADY,
      io_input_PWRITE => system_apbBridge_io_apb_PWRITE,
      io_input_PWDATA => system_apbBridge_io_apb_PWDATA,
      io_input_PRDATA => io_apb_decoder_io_input_PRDATA,
      io_input_PSLVERROR => io_apb_decoder_io_input_PSLVERROR,
      io_output_PADDR => io_apb_decoder_io_output_PADDR,
      io_output_PSEL => io_apb_decoder_io_output_PSEL,
      io_output_PENABLE => io_apb_decoder_io_output_PENABLE,
      io_output_PREADY => apb3Router_1_io_input_PREADY,
      io_output_PWRITE => io_apb_decoder_io_output_PWRITE,
      io_output_PWDATA => io_apb_decoder_io_output_PWDATA,
      io_output_PRDATA => apb3Router_1_io_input_PRDATA,
      io_output_PSLVERROR => apb3Router_1_io_input_PSLVERROR 
    );
  apb3Router_1 : entity work.Apb3Router
    port map ( 
      io_input_PADDR => io_apb_decoder_io_output_PADDR,
      io_input_PSEL => io_apb_decoder_io_output_PSEL,
      io_input_PENABLE => io_apb_decoder_io_output_PENABLE,
      io_input_PREADY => apb3Router_1_io_input_PREADY,
      io_input_PWRITE => io_apb_decoder_io_output_PWRITE,
      io_input_PWDATA => io_apb_decoder_io_output_PWDATA,
      io_input_PRDATA => apb3Router_1_io_input_PRDATA,
      io_input_PSLVERROR => apb3Router_1_io_input_PSLVERROR,
      io_outputs_0_PADDR => apb3Router_1_io_outputs_0_PADDR,
      io_outputs_0_PSEL => apb3Router_1_io_outputs_0_PSEL,
      io_outputs_0_PENABLE => apb3Router_1_io_outputs_0_PENABLE,
      io_outputs_0_PREADY => system_gpioACtrl_io_apb_PREADY,
      io_outputs_0_PWRITE => apb3Router_1_io_outputs_0_PWRITE,
      io_outputs_0_PWDATA => apb3Router_1_io_outputs_0_PWDATA,
      io_outputs_0_PRDATA => system_gpioACtrl_io_apb_PRDATA,
      io_outputs_0_PSLVERROR => system_gpioACtrl_io_apb_PSLVERROR,
      io_outputs_1_PADDR => apb3Router_1_io_outputs_1_PADDR,
      io_outputs_1_PSEL => apb3Router_1_io_outputs_1_PSEL,
      io_outputs_1_PENABLE => apb3Router_1_io_outputs_1_PENABLE,
      io_outputs_1_PREADY => system_gpioBCtrl_io_apb_PREADY,
      io_outputs_1_PWRITE => apb3Router_1_io_outputs_1_PWRITE,
      io_outputs_1_PWDATA => apb3Router_1_io_outputs_1_PWDATA,
      io_outputs_1_PRDATA => system_gpioBCtrl_io_apb_PRDATA,
      io_outputs_1_PSLVERROR => system_gpioBCtrl_io_apb_PSLVERROR,
      io_outputs_2_PADDR => apb3Router_1_io_outputs_2_PADDR,
      io_outputs_2_PSEL => apb3Router_1_io_outputs_2_PSEL,
      io_outputs_2_PENABLE => apb3Router_1_io_outputs_2_PENABLE,
      io_outputs_2_PREADY => system_gpioCCtrl_io_apb_PREADY,
      io_outputs_2_PWRITE => apb3Router_1_io_outputs_2_PWRITE,
      io_outputs_2_PWDATA => apb3Router_1_io_outputs_2_PWDATA,
      io_outputs_2_PRDATA => system_gpioCCtrl_io_apb_PRDATA,
      io_outputs_2_PSLVERROR => system_gpioCCtrl_io_apb_PSLVERROR,
      io_outputs_3_PADDR => apb3Router_1_io_outputs_3_PADDR,
      io_outputs_3_PSEL => apb3Router_1_io_outputs_3_PSEL,
      io_outputs_3_PENABLE => apb3Router_1_io_outputs_3_PENABLE,
      io_outputs_3_PREADY => system_gpioDCtrl_io_apb_PREADY,
      io_outputs_3_PWRITE => apb3Router_1_io_outputs_3_PWRITE,
      io_outputs_3_PWDATA => apb3Router_1_io_outputs_3_PWDATA,
      io_outputs_3_PRDATA => system_gpioDCtrl_io_apb_PRDATA,
      io_outputs_3_PSLVERROR => system_gpioDCtrl_io_apb_PSLVERROR,
      io_outputs_4_PADDR => apb3Router_1_io_outputs_4_PADDR,
      io_outputs_4_PSEL => apb3Router_1_io_outputs_4_PSEL,
      io_outputs_4_PENABLE => apb3Router_1_io_outputs_4_PENABLE,
      io_outputs_4_PREADY => system_uartCtrl_io_apb_PREADY,
      io_outputs_4_PWRITE => apb3Router_1_io_outputs_4_PWRITE,
      io_outputs_4_PWDATA => apb3Router_1_io_outputs_4_PWDATA,
      io_outputs_4_PRDATA => system_uartCtrl_io_apb_PRDATA,
      io_outputs_4_PSLVERROR => zz_15,
      io_outputs_5_PADDR => apb3Router_1_io_outputs_5_PADDR,
      io_outputs_5_PSEL => apb3Router_1_io_outputs_5_PSEL,
      io_outputs_5_PENABLE => apb3Router_1_io_outputs_5_PENABLE,
      io_outputs_5_PREADY => system_timer_io_apb_PREADY,
      io_outputs_5_PWRITE => apb3Router_1_io_outputs_5_PWRITE,
      io_outputs_5_PWDATA => apb3Router_1_io_outputs_5_PWDATA,
      io_outputs_5_PRDATA => system_timer_io_apb_PRDATA,
      io_outputs_5_PSLVERROR => system_timer_io_apb_PSLVERROR,
      io_mainClk => io_mainClk,
      resetCtrl_systemReset => resetCtrl_systemReset 
    );
  process(system_mainBusDecoder_logic_rspSourceId,system_ram_io_bus_rsp_payload_data,system_apbBridge_io_pipelinedMemoryBus_rsp_payload_data)
  begin
    case system_mainBusDecoder_logic_rspSourceId is
      when "0" =>
        zz_16 <= system_ram_io_bus_rsp_payload_data;
      when others =>
        zz_16 <= system_apbBridge_io_pipelinedMemoryBus_rsp_payload_data;
    end case;
  end process;

  process(zz_17)
  begin
    resetCtrl_mainClkResetUnbuffered <= pkg_toStdLogic(false);
    if zz_17 = '1' then
      resetCtrl_mainClkResetUnbuffered <= pkg_toStdLogic(true);
    end if;
  end process;

  zz_1(5 downto 0) <= pkg_unsigned("111111");
  process(system_timer_io_interrupt)
  begin
    system_timerInterrupt <= pkg_toStdLogic(false);
    if system_timer_io_interrupt = '1' then
      system_timerInterrupt <= pkg_toStdLogic(true);
    end if;
  end process;

  process(system_uartCtrl_io_interrupt)
  begin
    system_externalInterrupt <= pkg_toStdLogic(false);
    if system_uartCtrl_io_interrupt = '1' then
      system_externalInterrupt <= pkg_toStdLogic(true);
    end if;
  end process;

  system_cpu_dBus_cmd_halfPipe_valid <= system_cpu_dBus_cmd_halfPipe_regs_valid;
  system_cpu_dBus_cmd_halfPipe_payload_wr <= system_cpu_dBus_cmd_halfPipe_regs_payload_wr;
  system_cpu_dBus_cmd_halfPipe_payload_address <= system_cpu_dBus_cmd_halfPipe_regs_payload_address;
  system_cpu_dBus_cmd_halfPipe_payload_data <= system_cpu_dBus_cmd_halfPipe_regs_payload_data;
  system_cpu_dBus_cmd_halfPipe_payload_size <= system_cpu_dBus_cmd_halfPipe_regs_payload_size;
  system_cpu_dBus_cmd_halfPipe_ready <= system_mainBusArbiter_io_dBus_cmd_ready;
  zz_6 <= pkg_resize(systemDebugger_1_io_mem_cmd_payload_address,8);
  io_jtag_tdo <= jtagBridge_1_io_jtag_tdo;
  io_gpioA_write <= system_gpioACtrl_io_gpio_write;
  io_gpioA_writeEnable <= system_gpioACtrl_io_gpio_writeEnable;
  io_gpioB_write <= system_gpioBCtrl_io_gpio_write;
  io_gpioB_writeEnable <= system_gpioBCtrl_io_gpio_writeEnable;
  io_gpioC_write <= system_gpioCCtrl_io_gpio_write;
  io_gpioC_writeEnable <= system_gpioCCtrl_io_gpio_writeEnable;
  io_gpioD_write <= system_gpioDCtrl_io_gpio_write;
  io_gpioD_writeEnable <= system_gpioDCtrl_io_gpio_writeEnable;
  io_uart_txd <= system_uartCtrl_io_uart_txd;
  zz_9 <= pkg_resize(apb3Router_1_io_outputs_0_PADDR,4);
  zz_10 <= pkg_resize(apb3Router_1_io_outputs_1_PADDR,4);
  zz_11 <= pkg_resize(apb3Router_1_io_outputs_2_PADDR,4);
  zz_12 <= pkg_resize(apb3Router_1_io_outputs_3_PADDR,4);
  zz_13 <= pkg_resize(apb3Router_1_io_outputs_4_PADDR,5);
  zz_15 <= pkg_toStdLogic(false);
  zz_14 <= pkg_resize(apb3Router_1_io_outputs_5_PADDR,8);
  system_mainBusDecoder_logic_masterPipelined_cmd_valid <= system_mainBusArbiter_io_masterBus_cmd_valid;
  system_mainBusDecoder_logic_masterPipelined_cmd_payload_write <= system_mainBusArbiter_io_masterBus_cmd_payload_write;
  system_mainBusDecoder_logic_masterPipelined_cmd_payload_address <= system_mainBusArbiter_io_masterBus_cmd_payload_address;
  system_mainBusDecoder_logic_masterPipelined_cmd_payload_data <= system_mainBusArbiter_io_masterBus_cmd_payload_data;
  system_mainBusDecoder_logic_masterPipelined_cmd_payload_mask <= system_mainBusArbiter_io_masterBus_cmd_payload_mask;
  system_mainBusDecoder_logic_hits_0 <= pkg_toStdLogic((system_mainBusDecoder_logic_masterPipelined_cmd_payload_address and pkg_not(pkg_unsigned("00000000000000000001111111111111"))) = pkg_unsigned("10000000000000000000000000000000"));
  process(system_mainBusDecoder_logic_masterPipelined_cmd_valid,system_mainBusDecoder_logic_hits_0,zz_18)
  begin
    zz_7 <= (system_mainBusDecoder_logic_masterPipelined_cmd_valid and system_mainBusDecoder_logic_hits_0);
    if zz_18 = '1' then
      zz_7 <= pkg_toStdLogic(false);
    end if;
  end process;

  zz_3 <= system_mainBusDecoder_logic_masterPipelined_cmd_payload_write;
  system_mainBusDecoder_logic_hits_1 <= pkg_toStdLogic((system_mainBusDecoder_logic_masterPipelined_cmd_payload_address and pkg_not(pkg_unsigned("00000000000011111111111111111111"))) = pkg_unsigned("11110000000000000000000000000000"));
  process(system_mainBusDecoder_logic_masterPipelined_cmd_valid,system_mainBusDecoder_logic_hits_1,zz_18)
  begin
    zz_8 <= (system_mainBusDecoder_logic_masterPipelined_cmd_valid and system_mainBusDecoder_logic_hits_1);
    if zz_18 = '1' then
      zz_8 <= pkg_toStdLogic(false);
    end if;
  end process;

  zz_4 <= system_mainBusDecoder_logic_masterPipelined_cmd_payload_write;
  system_mainBusDecoder_logic_noHit <= (not pkg_toStdLogic(pkg_cat(pkg_toStdLogicVector(system_mainBusDecoder_logic_hits_1),pkg_toStdLogicVector(system_mainBusDecoder_logic_hits_0)) /= pkg_stdLogicVector("00")));
  process(system_mainBusDecoder_logic_hits_1,system_apbBridge_io_pipelinedMemoryBus_cmd_ready,system_mainBusDecoder_logic_hits_0,system_ram_io_bus_cmd_ready,system_mainBusDecoder_logic_noHit,zz_18)
  begin
    system_mainBusDecoder_logic_masterPipelined_cmd_ready <= (pkg_toStdLogic(pkg_cat(pkg_toStdLogicVector((system_mainBusDecoder_logic_hits_1 and system_apbBridge_io_pipelinedMemoryBus_cmd_ready)),pkg_toStdLogicVector((system_mainBusDecoder_logic_hits_0 and system_ram_io_bus_cmd_ready))) /= pkg_stdLogicVector("00")) or system_mainBusDecoder_logic_noHit);
    if zz_18 = '1' then
      system_mainBusDecoder_logic_masterPipelined_cmd_ready <= pkg_toStdLogic(false);
    end if;
  end process;

  system_mainBusDecoder_logic_masterPipelined_rsp_valid <= (pkg_toStdLogic(pkg_cat(pkg_toStdLogicVector(system_apbBridge_io_pipelinedMemoryBus_rsp_valid),pkg_toStdLogicVector(system_ram_io_bus_rsp_valid)) /= pkg_stdLogicVector("00")) or (system_mainBusDecoder_logic_rspPending and system_mainBusDecoder_logic_rspNoHit));
  system_mainBusDecoder_logic_masterPipelined_rsp_payload_data <= zz_16;
  zz_5 <= pkg_toStdLogic(false);
  process(io_mainClk)
  begin
    if rising_edge(io_mainClk) then
      if zz_17 = '1' then
        resetCtrl_systemClkResetCounter <= (resetCtrl_systemClkResetCounter + pkg_unsigned("000001"));
      end if;
      if io_asyncReset_buffercc_io_dataOut = '1' then
        resetCtrl_systemClkResetCounter <= pkg_unsigned("000000");
      end if;
    end if;
  end process;

  process(io_mainClk)
  begin
    if rising_edge(io_mainClk) then
      resetCtrl_mainClkReset <= resetCtrl_mainClkResetUnbuffered;
      resetCtrl_systemReset <= resetCtrl_mainClkResetUnbuffered;
      if system_cpu_debug_resetOut_regNext = '1' then
        resetCtrl_systemReset <= pkg_toStdLogic(true);
      end if;
    end if;
  end process;

  process(io_mainClk, resetCtrl_systemReset)
  begin
    if resetCtrl_systemReset = '1' then
      system_cpu_dBus_cmd_halfPipe_regs_valid <= pkg_toStdLogic(false);
      system_cpu_dBus_cmd_halfPipe_regs_ready <= pkg_toStdLogic(true);
      system_mainBusDecoder_logic_rspPending <= pkg_toStdLogic(false);
      system_mainBusDecoder_logic_rspNoHit <= pkg_toStdLogic(false);
    elsif rising_edge(io_mainClk) then
      if zz_19 = '1' then
        system_cpu_dBus_cmd_halfPipe_regs_valid <= system_cpu_dBus_cmd_valid;
        system_cpu_dBus_cmd_halfPipe_regs_ready <= (not system_cpu_dBus_cmd_valid);
      else
        system_cpu_dBus_cmd_halfPipe_regs_valid <= (not system_cpu_dBus_cmd_halfPipe_ready);
        system_cpu_dBus_cmd_halfPipe_regs_ready <= system_cpu_dBus_cmd_halfPipe_ready;
      end if;
      if system_mainBusDecoder_logic_masterPipelined_rsp_valid = '1' then
        system_mainBusDecoder_logic_rspPending <= pkg_toStdLogic(false);
      end if;
      if ((system_mainBusDecoder_logic_masterPipelined_cmd_valid and system_mainBusDecoder_logic_masterPipelined_cmd_ready) and (not system_mainBusDecoder_logic_masterPipelined_cmd_payload_write)) = '1' then
        system_mainBusDecoder_logic_rspPending <= pkg_toStdLogic(true);
      end if;
      system_mainBusDecoder_logic_rspNoHit <= pkg_toStdLogic(false);
      if system_mainBusDecoder_logic_noHit = '1' then
        system_mainBusDecoder_logic_rspNoHit <= pkg_toStdLogic(true);
      end if;
    end if;
  end process;

  process(io_mainClk)
  begin
    if rising_edge(io_mainClk) then
      if zz_19 = '1' then
        system_cpu_dBus_cmd_halfPipe_regs_payload_wr <= system_cpu_dBus_cmd_payload_wr;
        system_cpu_dBus_cmd_halfPipe_regs_payload_address <= system_cpu_dBus_cmd_payload_address;
        system_cpu_dBus_cmd_halfPipe_regs_payload_data <= system_cpu_dBus_cmd_payload_data;
        system_cpu_dBus_cmd_halfPipe_regs_payload_size <= system_cpu_dBus_cmd_payload_size;
      end if;
      if (system_mainBusDecoder_logic_masterPipelined_cmd_valid and system_mainBusDecoder_logic_masterPipelined_cmd_ready) = '1' then
        system_mainBusDecoder_logic_rspSourceId <= unsigned(pkg_toStdLogicVector(system_mainBusDecoder_logic_hits_1));
      end if;
    end if;
  end process;

  process(io_mainClk)
  begin
    if rising_edge(io_mainClk) then
      system_cpu_debug_resetOut_regNext <= system_cpu_debug_resetOut;
    end if;
  end process;

  process(io_mainClk, resetCtrl_mainClkReset)
  begin
    if resetCtrl_mainClkReset = '1' then
      zz_2 <= pkg_toStdLogic(false);
    elsif rising_edge(io_mainClk) then
      zz_2 <= (systemDebugger_1_io_mem_cmd_valid and system_cpu_debug_bus_cmd_ready);
    end if;
  end process;

end arch;

