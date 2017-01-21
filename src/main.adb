with Ada.Text_IO;
with ship;
with Planet;-- ucdse planet;
with Rule;

procedure main is
   my_ship: ship.Ship_Data := ship.is_StarShip;

   my_planet: Planet.Object := Planet.build ("human", Rule.military, 1,
                                                 3, 1, Rule.starship_power,
                                                 Rule.less_resource);
   your_planet: Planet.Object := Planet.build ("enemy", Rule.colony, 1,
                                                3, 1, Rule.easy_colony,
                                                Rule.hard_build);
begin
   Ada.Text_IO.Put_Line ("my ship: " & ship.show_me_ship_type (my_ship));
   Ada.Text_IO.Put_Line ("my ship before build: " & Integer'Image (ship.show_me_ship_data (my_ship, ship.build)));
   ship.modify_ship_data (my_ship, ship.build, 1);
   Ada.Text_IO.Put_Line ("my ship after build: " & Integer'Image (ship.show_me_ship_data (my_ship, ship.build)));

   Ada.Text_IO.Put_Line (my_planet.show);
   Ada.Text_IO.Put_Line (your_planet.show);
end main;
