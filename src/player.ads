with Ada.Strings.Unbounded;

with Planet;
with Rule; use Rule;

package Player is
   type Object is tagged private;

   function Build (Race              : String;
                   Good_Ability      : Good_Type;
                   Bad_Ability       : Bad_Type;
                   Victory_Condition : Victory;
                   Homeworld         : Planet.Object)
                   return Object;
private
   package SU renames Ada.Strings.Unbounded;

   type Object is tagged
      record
         Race              : SU.Unbounded_String;
         Good_Ability      : Good_Type;
         Bad_Ability       : Bad_Type;
         Victory_Condition : Victory;
         Owner_Planets     : Planet.Vector;
         Homeworld         : Planet.Object;
      end record;
end Player;
