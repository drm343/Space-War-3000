package body Planet is
   package body Origin_Define is
      function Build (name : String;
                      colony: Integer;
                      starship: Integer;
                      station: Integer)
                   return Object
      is
         planet: Object;
         add_error: exception;
      begin
         if (colony + starship + station) = 5 then
            planet.Name := SU.To_Unbounded_String (name);
            planet.Colony := colony;
            planet.Starship := starship;
            planet.Station := station;
            planet.Damage := false;
            return planet;
         else
            raise add_error;
         end if;
      end Build;

      -----------------------
      -- Operator
      -----------------------
      function show (planet: in Object) return String is
      begin
         return SU.To_String (planet.Name);
      end show;

      procedure attack (planet: in out Object) is
      begin
         planet.damage := true;
      end attack;

      function "=" (Left, Right : Object) return Boolean is
      begin
         if SU."=" (Left.Name, Right.Name) then
            return True;
         else
            return False;
         end if;
      end "=";
   end Origin_Define;
end Planet;
