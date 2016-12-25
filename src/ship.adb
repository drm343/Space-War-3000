package body ship is
  --------------------------------------
  -- Build Ship
  --------------------------------------
  function is_Colony return Ship_Data is
    result: Ship_Data := (Colony, 1, 2, 0, 0);
  begin
    return result;
  end is_Colony;

  --------------------------------------
  function is_StarShip return Ship_Data is
    result: Ship_Data := (StarShip, 1, 0, 1, 1);
  begin
    return result;
  end is_StarShip;

  --------------------------------------
  function is_Station return Ship_Data is
    result: Ship_Data := (Station, 2, 0, 2, 2);
  begin
    return result;
  end is_Station;

  --------------------------------------
  -- ShipData Operator
  --------------------------------------
  function show_me_ship_type (ship: in Ship_Data) return String is
  begin
    return Ship_Type'Image (ship.name);
  end show_me_ship_type;

  function show_me_ship_data (ship: in Ship_Data; modify: in Ship_Modify) return Integer is
  begin
    case modify is
      when colony => return ship.colony;
      when grid => return ship.grid;
      when max => return ship.max;
      when others => return ship.build;
    end case;
  end show_me_ship_data;

  procedure modify_ship_data (ship: in out Ship_Data; modify: in Ship_Modify; num: Integer) is
  begin
    case modify is
      when colony => ship.colony := ship.colony + num;
      when grid => ship.grid := ship.grid + num;
      when max => ship.max := ship.max + num;
      when others => ship.build := ship.build + num;
    end case;
  end modify_ship_data;
end ship;
