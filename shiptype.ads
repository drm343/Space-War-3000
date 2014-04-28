package shiptype is
  type ShipType is (Colony, StarShip, Station);

  function show_my_shiptype (ship: in ShipType) return String;
end shiptype;
