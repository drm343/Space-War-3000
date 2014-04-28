package body ship is
  function show_me_shiptype (ship: in ShipType) return String is
  begin
    return ShipType'Image (ship);
  end show_me_shiptype;
end ship;
