library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package cellular_types is
  type array_of_signed_64 is array (integer range <>) of std_logic_vector(63 downto 0);
  type array_of_std_logic_vector_1 is array (integer range <>) of std_logic_vector(0 downto 0);
  type tup2_0 is record
    tup2_0_sel0 : cellular_types.array_of_signed_64(0 to 2);
    tup2_0_sel1 : cellular_types.array_of_signed_64(0 to 12);
  end record;
  type array_of_std_logic_vector_3 is array (integer range <>) of std_logic_vector(2 downto 0);
  type tup2 is record
    tup2_sel0 : std_logic_vector(15 downto 0);
    tup2_sel1 : std_logic_vector(15 downto 0);
  end record;
  type array_of_array_of_3_signed_64 is array (integer range <>) of std_logic_vector(191 downto 0);
  function toSLV (s : in signed) return std_logic_vector;
  function toSLV (value :  cellular_types.array_of_signed_64) return std_logic_vector;
  function toSLV (slv : in std_logic_vector) return std_logic_vector;
  function toSLV (u : in unsigned) return std_logic_vector;
  function toSLV (value :  cellular_types.array_of_std_logic_vector_1) return std_logic_vector;
  function toSLV (p : cellular_types.tup2_0) return std_logic_vector;
  function toSLV (value :  cellular_types.array_of_std_logic_vector_3) return std_logic_vector;
  function toSLV (b : in boolean) return std_logic_vector;
  function fromSLV (sl : in std_logic_vector) return boolean;
  function tagToEnum (s : in signed) return boolean;
  function dataToTag (b : in boolean) return signed;
  function toSLV (p : cellular_types.tup2) return std_logic_vector;
  function toSLV (value :  cellular_types.array_of_array_of_3_signed_64) return std_logic_vector;
end;

package body cellular_types is
  function toSLV (s : in signed) return std_logic_vector is
  begin
    return std_logic_vector(s);
  end;
  function toSLV (value :  cellular_types.array_of_signed_64) return std_logic_vector is
    alias ivalue    : cellular_types.array_of_signed_64(1 to value'length) is value;
    variable result : std_logic_vector(1 to value'length * 64);
  begin
    for i in ivalue'range loop
      result(((i - 1) * 64) + 1 to i*64) := ivalue(i);
    end loop;
    return result;
  end;
  function toSLV (slv : in std_logic_vector) return std_logic_vector is
  begin
    return slv;
  end;
  function toSLV (u : in unsigned) return std_logic_vector is
  begin
    return std_logic_vector(u);
  end;
  function toSLV (value :  cellular_types.array_of_std_logic_vector_1) return std_logic_vector is
    alias ivalue    : cellular_types.array_of_std_logic_vector_1(1 to value'length) is value;
    variable result : std_logic_vector(1 to value'length * 1);
  begin
    for i in ivalue'range loop
      result(((i - 1) * 1) + 1 to i*1) := ivalue(i);
    end loop;
    return result;
  end;
  function toSLV (p : cellular_types.tup2_0) return std_logic_vector is
  begin
    return (toSLV(p.tup2_0_sel0) & toSLV(p.tup2_0_sel1));
  end;
  function toSLV (value :  cellular_types.array_of_std_logic_vector_3) return std_logic_vector is
    alias ivalue    : cellular_types.array_of_std_logic_vector_3(1 to value'length) is value;
    variable result : std_logic_vector(1 to value'length * 3);
  begin
    for i in ivalue'range loop
      result(((i - 1) * 3) + 1 to i*3) := ivalue(i);
    end loop;
    return result;
  end;
  function toSLV (b : in boolean) return std_logic_vector is
  begin
    if b then
      return "1";
    else
      return "0";
    end if;
  end;
  function fromSLV (sl : in std_logic_vector) return boolean is
  begin
    if sl = "1" then
      return true;
    else
      return false;
    end if;
  end;
  function tagToEnum (s : in signed) return boolean is
  begin
    if s = to_signed(0,64) then
      return false;
    else
      return true;
    end if;
  end;
  function dataToTag (b : in boolean) return signed is
  begin
    if b then
      return to_signed(1,64);
    else
      return to_signed(0,64);
    end if;
  end;
  function toSLV (p : cellular_types.tup2) return std_logic_vector is
  begin
    return (toSLV(p.tup2_sel0) & toSLV(p.tup2_sel1));
  end;
  function toSLV (value :  cellular_types.array_of_array_of_3_signed_64) return std_logic_vector is
    alias ivalue    : cellular_types.array_of_array_of_3_signed_64(1 to value'length) is value;
    variable result : std_logic_vector(1 to value'length * 192);
  begin
    for i in ivalue'range loop
      result(((i - 1) * 192) + 1 to i*192) := ivalue(i);
    end loop;
    return result;
  end;
end;
