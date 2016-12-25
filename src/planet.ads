package Planet is
  type Planet_Data (is_colony: Boolean := true) is Private;

  type Victory is (military, colony, economy, peace);
  type Good_Type is (starship_power, station_build, more_resource, easy_colony);
  type Bad_Type is (less_resource, hard_build, hard_colony);

  type Planet_Modify is (race, victory_condition, good_ability, bad_ability, damage, ship, is_colony);

--  type Victory is Private;
--  type Good_Type is Private;
--  type Bad_Type is Private;
--
--  type Planet_Modify is Private;

  function build_planet (race: String; victory_condition: Victory; colony: Integer;
                          starship: Integer; station: Integer; good_ability: Good_Type; bad_ability: Bad_Type) return Planet_Data;
  function build_planet (race: String; good_ability: Good_Type) return Planet_Data;

  function show_me_planet_data (planet: in Planet_Data; modify: in Planet_Modify) return String;
  procedure attack_planet (planet: in out Planet_Data);

  Private
  type Planet_Data (is_colony: Boolean := true) is
    record
      race: String (1 .. 20);
      good_ability: Good_Type;
      damage: Boolean;
      case is_colony is
        when false =>
          victory_condition: Victory;
          colony: Integer;
          starship: Integer;
          station: Integer;
          bad_ability: Bad_Type;
        when others => null;
      end case;
    end record;
end planet;
