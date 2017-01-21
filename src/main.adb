with Ada.Text_IO;
with ship;
with Planet;
with Player;
with Rule;

procedure main is
   my_ship: ship.Ship_Data := ship.is_StarShip;

   my_homeworld   : Planet.Object := Planet.Build ("Earth", 1, 3, 1);
   your_homeworld : Planet.Object := Planet.Build ("Moon", 1, 3, 1);

   player1 : Player.Object := Player.Build ("human",
                                            Rule.starship_power,
                                            Rule.hard_build,
                                            Rule.military,
                                            my_homeworld);
begin
   Ada.Text_IO.Put_Line ("my ship: " & ship.show_me_ship_type (my_ship));
   Ada.Text_IO.Put_Line ("my ship before build: " & Integer'Image (ship.show_me_ship_data (my_ship, ship.build)));
   ship.modify_ship_data (my_ship, ship.build, 1);
   Ada.Text_IO.Put_Line ("my ship after build: " & Integer'Image (ship.show_me_ship_data (my_ship, ship.build)));

   Ada.Text_IO.Put_Line (my_homeworld.show);
   Ada.Text_IO.Put_Line (your_homeworld.show);
end main;
