minetest.register_privilege("build", "Can place and dig nodes/blocks")

local oldProtect = minetest.is_protected;
function minetest.is_protected(pos, playerName)
   return not minetest.get_player_privs(playerName).build or
          oldProtect(pos, playerName);
end;
