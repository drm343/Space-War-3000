package ship is
  type Ship_Type is Private;
  type Ship_Data is Private;
  type Ship_Modify is (build, colony, grid, max);

  function is_Colony return Ship_Data;
  function is_StarShip return Ship_Data;
  function is_Station return Ship_Data;

  function show_me_ship_type (ship: in Ship_Data) return String;
  function show_me_ship_data (ship: in Ship_Data; modify: in Ship_Modify) return Integer;
  procedure modify_ship_data (ship: in out Ship_Data; modify: in Ship_Modify; num: Integer);

  Private
  type Ship_Type is (Colony, StarShip, Station);

  type Ship_Data is
    record
      name: Ship_Type;
      build: Integer;
      colony: Integer;
      grid: Integer;
      max: Integer;
    end record;
end ship;
