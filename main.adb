with Ada.Text_IO;
with ship;

procedure main is
  my_ship: ship.ShipData := ship.is_StarShip;
  your_ship: ship.ShipData := ship.is_Colony;
  his_ship: ship.ShipData := ship.is_Station;
begin
  Ada.Text_IO.Put_Line ("my ship: " & ship.show_me_shiptype (my_ship));
  Ada.Text_IO.Put_Line ("my ship before build: " & Integer'Image (ship.show_me_shipdata (my_ship, ship.build)));
  ship.modify_shipdata (my_ship, ship.build, 1);
  Ada.Text_IO.Put_Line ("my ship after build: " & Integer'Image (ship.show_me_shipdata (my_ship, ship.build)));
  Ada.Text_IO.Put_Line (ship.show_me_shiptype (your_ship));
  Ada.Text_IO.Put_Line (ship.show_me_shiptype (his_ship));
end main;
