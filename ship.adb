package body ship is
  --------------------------------------
  -- Build Ship
  --------------------------------------
  function is_Colony return ShipData is
    result: ShipData := (Colony, 1, 2, 0, 0);
  begin
    return result;
  end is_Colony;

  --------------------------------------
  function is_StarShip return ShipData is
    result: ShipData := (StarShip, 1, 0, 1, 1);
  begin
    return result;
  end is_StarShip;

  --------------------------------------
  function is_Station return ShipData is
    result: ShipData := (Station, 2, 0, 2, 2);
  begin
    return result;
  end is_Station;

  --------------------------------------
  -- ShipData Operator
  --------------------------------------
  function show_me_shiptype (ship: in ShipData) return String is
  begin
    return ShipType'Image (ship.name);
  end show_me_shiptype;

  function show_me_shipdata (ship: in ShipData; modify: in ShipModify) return Integer is
  begin
    case modify is
      when colony => return ship.colony;
      when grid => return ship.grid;
      when max => return ship.max;
      when others => return ship.build;
    end case;
  end show_me_shipdata;

  procedure modify_shipdata (ship: in out ShipData; modify: in ShipModify; num: Integer) is
  begin
    case modify is
      when colony => ship.colony := ship.colony + num;
      when grid => ship.grid := ship.grid + num;
      when max => ship.max := ship.max + num;
      when others => ship.build := ship.build + num;
    end case;
  end modify_shipdata;
end ship;
