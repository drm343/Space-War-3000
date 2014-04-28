package ship is
  type ShipType is (Colony, StarShip, Station);
  function show_me_shiptype (ship: in ShipType) return String;

--  type ShipData is Private;

--  Private
  type ShipData (input: ShipType := StarShip) is
    record
      name: ShipType := input;
      case input is
        when Colony =>
          colony: Integer := 2;
        when others =>
          grid: Integer := 1;
          max: Integer := 1;
      end case;
    end record;
end ship;
