package ship is
  type ShipType is Private;
  type ShipData is Private;
  type ShipModify is (build, colony, grid, max);

  function is_Colony return ShipData;
  function is_StarShip return ShipData;
  function is_Station return ShipData;

  function show_me_shiptype (ship: in ShipData) return String;
  function show_me_shipdata (ship: in ShipData; modify: in ShipModify) return Integer;
  procedure modify_shipdata (ship: in out ShipData; modify: in ShipModify; num: Integer);

  Private
  type ShipType is (Colony, StarShip, Station);

  type ShipData is
    record
      name: ShipType;
      build: Integer;
      colony: Integer;
      grid: Integer;
      max: Integer;
    end record;
end ship;
