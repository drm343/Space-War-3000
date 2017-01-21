with Ada.Containers.Vectors;
with Ada.Strings.Unbounded;

with Rule; use Rule;

package Planet is
   package SU renames Ada.Strings.Unbounded;

   package Origin_Define is
      type Object is tagged private;

      function Build (name     : String;
                      colony   : Integer;
                      starship : Integer;
                      station  : Integer)
                   return Object;

      function "=" (Left, Right : Object) return Boolean;

      function show (planet: in Object) return String;
      procedure attack (planet: in out Object);
   private
      type Object is tagged
         record
            Name : SU.Unbounded_String;
            Damage: Boolean;
            Colony: Integer;
            Starship: Integer;
            Station: Integer;
         end record;
   end Origin_Define;

   subtype Object is Origin_Define.Object;
   function Build (name     : String;
                   colony   : Integer;
                   starship : Integer;
                   station  : Integer)
                   return Object
   renames Origin_Define.Build;

   subtype Planet_Range is Positive range 1 .. 10;
   package Vectors is new Ada.Containers.Vectors
     (Element_Type => Origin_Define.Object,
      Index_Type => Planet_Range,
      "=" => Origin_Define."=");

   subtype Vector is Vectors.Vector;
end Planet;
