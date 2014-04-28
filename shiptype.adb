package body shiptype is
  function show_my_shiptype (ship: in ShipType) return String is
  begin
    return ShipType'Image (ship);
  end show_my_shiptype;
end shiptype;
