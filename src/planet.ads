with Ada.Strings.Unbounded;

with Rule; use Rule;

package Planet is
   package SU renames Ada.Strings.Unbounded;

   type Object (build_homeworld : Boolean) is tagged private;

   function Build (colony: Integer; starship: Integer; station: Integer)
                   return Object;

   function Build (race: String; victory_condition: Victory; colony: Integer;
                   starship: Integer; station: Integer; good_ability: Good_Type;
                   bad_ability: Bad_Type)
                   return Object;


   function show (planet: in Object) return String;
   procedure attack (planet: in out Object);
private
   type Object (build_homeworld : Boolean) is tagged
      record
         Damage: Boolean;
         Colony: Integer;
         Starship: Integer;
         Station: Integer;
         is_homeworld : Boolean := build_homeworld;

         case build_homeworld is
            when true =>
               Race: SU.Unbounded_String;
               Good_Ability: Good_Type;
               Bad_Ability: Bad_Type;
               Victory_Condition: Victory;
            when others =>
               null;
         end case;
      end record;
end planet;
