package body planet is
  -----------------------
  -- Build
  -----------------------
  -- homeworld
  function build_planet (race: String; victory_condition: Victory; colony: Integer; starship: Integer; station: Integer; good_ability: Good_Type; bad_ability: Bad_Type) return Planet_Data is
    result: Planet_Data (false);
    add_error: exception;

    function fix_string (input: String) return String is
      result: String (1 .. 20);
    begin
      if (input'length > 20) then
        result := input (input'first .. (input'first + 19));
      else
        result := input & (input'last .. 19 => ' ');
      end if;
      return result;
    end fix_string;
  begin
    if (colony + starship + station) = 5 then 
      result.race := fix_string (race);
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
  end build_planet;

  -- colony
  function build_planet (race: String; good_ability: Good_Type) return Planet_Data is
    result: Planet_Data;

    function fix_string (input: String) return String is
      result: String (1 .. 20);
    begin
      if (input'length > 20) then
        result := input (input'first .. (input'first + 19));
      else
        result := input & (input'last .. 19 => ' ');
      end if;
      return result;
    end fix_string;
  begin
    result.race := fix_string (race);
    result.good_ability := good_ability;
    result.damage := false;
    return result;
  end build_planet;

  -----------------------
  -- Operator
  -----------------------
  function show_me_planet_data (planet: in Planet_Data; modify: in Planet_Modify) return String is
  begin
    case modify is
      when victory_condition =>
        return Victory'Image (planet.victory_condition);
      when good_ability =>
        return Good_Type'Image (planet.good_ability);
      when bad_ability =>
        return Bad_Type'Image (planet.bad_ability);
      when damage =>
        return Boolean'Image (planet.damage);
      when ship =>
        return ("colony" & Integer'Image (planet.colony) & "starship" & Integer'Image (planet.starship) & "station" & Integer'Image (planet.station));
      when is_colony =>
        if (planet.is_colony) then
          return "colony";
        else
          return "homeworld";
        end if;
      when others =>
        return planet.race;
    end case;
  end show_me_planet_data;

  -----------------------
  procedure attack_planet (planet: in out Planet_Data) is
  begin
    planet.damage := true;
  end attack_planet;

  -----------------------
  -- fix Data
  -----------------------
end planet;
