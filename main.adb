with Ada.Text_IO;
with Ada.Integer_Text_IO;
with ship;

procedure main is
  my_ship: ship.ShipData (ship.StarShip);
  your_ship: ship.ShipData (ship.Colony);
begin
  Ada.Text_IO.Put_Line (ship.show_me_shiptype (my_ship.name));
  Ada.Text_IO.Put_Line (ship.show_me_shiptype (your_ship.name));
end main;
