package body Planet is
   function Build (colony: Integer; starship: Integer; station: Integer)
                   return Object
   is
      result: Object(False);
      add_error: exception;
   begin
      if (colony + starship + station) = 5 then
         result.Colony := colony;
         result.Starship := starship;
         result.Station := station;
         result.damage := false;
         return result;
      else
         raise add_error;
      end if;
   end Build;

   function Build (race: String; victory_condition: Victory; colony: Integer;
                   starship: Integer; station: Integer; good_ability: Good_Type;
                   bad_ability: Bad_Type)
                      return Object is
      result: Object(True);
      add_error: exception;
   begin
      if (colony + starship + station) = 5 then
         result.race := SU.To_Unbounded_String (race);
         result.victory_condition := victory_condition;
         result.colony := colony;
         result.starship := starship;
         result.station := station;
         result.good_ability := good_ability;
         result.bad_ability := bad_ability;
         result.damage := false;
         return result;
      else
         raise add_error;
      end if;
   end Build;


   -----------------------
   -- Operator
   -----------------------
   function show (planet: in Object) return String is
   begin
      case planet.is_homeworld is
         when True =>
            return "Homeworld";
         when others =>
            return "Planet";
      end case;
   end show;

   procedure attack (planet: in out Object) is
   begin
      planet.damage := true;
   end attack;
end Planet;
