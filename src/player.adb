package body Player is
   function Build (Race              : String;
                   Good_Ability      : Good_Type;
                   Bad_Ability       : Bad_Type;
                   Victory_Condition : Victory;
                   Homeworld         : Planet.Object)
                   return Object
   is
      player : Object;
   begin
      player.Race := SU.To_Unbounded_String (Race);
      player.Good_Ability := Good_Ability;
      player.Bad_Ability := Bad_Ability;
      player.Victory_Condition := Victory_Condition;
      player.Homeworld := Homeworld;
      player.Owner_Planets.Append(Homeworld);
      return player;
   end Build;
end Player;
