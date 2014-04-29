with Ada.Text_IO;
with ship;
with planet;-- use planet;

procedure main is
  my_ship: ship.Ship_Data := ship.is_StarShip;

  my_planet: planet.Planet_Data (false) := planet.build_planet ("human", planet.military, 1, 3, 1, planet.starship_power, planet.less_resource);
  your_planet: planet.Planet_Data := planet.build_planet ("homeworldthisfilethie", planet.starship_power);
begin
  Ada.Text_IO.Put_Line ("my ship: " & ship.show_me_ship_type (my_ship));
  Ada.Text_IO.Put_Line ("my ship before build: " & Integer'Image (ship.show_me_ship_data (my_ship, ship.build)));
  ship.modify_ship_data (my_ship, ship.build, 1);
  Ada.Text_IO.Put_Line ("my ship after build: " & Integer'Image (ship.show_me_ship_data (my_ship, ship.build)));

  Ada.Text_IO.Put_Line (planet.show_me_planet_data (my_planet, planet.race));
  Ada.Text_IO.Put_Line (planet.show_me_planet_data (your_planet, planet.is_colony));
end main;
