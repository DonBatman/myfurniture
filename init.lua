
myfurniture = {}
local my_door_wood = core.settings:get_bool("myfurniture.my_door_wood", true)
local moretrees = core.settings:get_bool("myfurniture.moretrees", true)
local ethereal = core.settings:get_bool("myfurniture.ethereal", true)

dofile(core.get_modpath("myfurniture").."/machine.lua")

if my_door_wood then
	if core.get_modpath("my_door_wood") then
		dofile(core.get_modpath("myfurniture").."/my_door_wood.lua")
	end
end
if moretrees then
	if core.get_modpath("moretrees") then
		dofile(core.get_modpath("myfurniture").."/moretrees.lua")
	end
end
if ethereal then
	if core.get_modpath("ethereal") then
		dofile(core.get_modpath("myfurniture").."/ethereal.lua")
	end
end

local wood_mat = {
				{"default:wood","default_wood","wood","Apple Wood"},
				{"default:acacia_wood","default_acacia_wood","acacia_wood","Acacia Wood"},
				{"default:aspen_wood","default_aspen_wood","aspen_wood","Aspen Wood"},
				{"default:pine_wood","default_pine_wood","pine_wood","Pine Wood"},
				{"default:junglewood","default_junglewood","junglewood","Jungle Wood"},
				}

for i in ipairs(wood_mat) do
	local wmat = wood_mat[i][1]
	local wimg = wood_mat[i][2]
	local wtype = wood_mat[i][3]
	local wdesc = wood_mat[i][4]

function core.get_myfurniture_formspec1(pos)
    local spos = pos.x .. "," .. pos.y .. "," ..pos.z
    local formspec =
        "size[9,7]"..
		"background[-0.15,-0.25;9.3,7.75;myfurniture_background.png]"..
        "list[nodemeta:".. spos .. ";main;0.5,0.5;8,2;]"..
        "list[current_player;main;0.5,3;8,4;]"
    return formspec
end
function core.get_myfurniture_formspec2(pos)
    local spos = pos.x .. "," .. pos.y .. "," ..pos.z
    local formspec =
        "size[9,7]"..
		"background[-0.15,-0.25;9.3,7.75;myfurniture_background.png]"..
        "list[nodemeta:".. spos .. ";main;0.5,0.5;8,1;]"..
        "list[current_player;main;0.5,3;8,4;]"
    return formspec
end
function core.get_myfurniture_formspec3(pos)
    local spos = pos.x .. "," .. pos.y .. "," ..pos.z
    local formspec =
        "size[9,7]"..
		"background[-0.15,-0.25;9.3,7.75;myfurniture_background.png]"..
        "list[nodemeta:".. spos .. ";main;0.5,0.5;8,1;]"..
        "list[current_player;main;0.5,3;8,4;]"
    return formspec
end
function core.get_myfurniture_formspec4(pos)
    local spos = pos.x .. "," .. pos.y .. "," ..pos.z
    local formspec =
        "size[9,7]"..
		"background[-0.15,-0.25;9.3,7.75;myfurniture_background.png]"..
        "list[nodemeta:".. spos .. ";main;0.5,0.5;8,1;]"..
        "list[current_player;main;0.5,3;8,4;]"
    return formspec
end

--Table
core.register_node("myfurniture:"..wtype.."_dinning_table", {
	description = wdesc.." Dinning Table",
	tiles = {wimg..".png"},
	drawtype = "mesh",
	mesh = "myfurniture_table.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.375, -0.5, 0.5, 0.5, 0.5},
			{-0.5, -0.5, 0.375, -0.375, 0.375, 0.5},
			{0.375, -0.5, -0.5, 0.5, 0.5, -0.375},
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			}
		},
})
--Chair
core.register_node("myfurniture:"..wtype.."_chair", {
	description = wdesc.." Chair",
	tiles = {wimg..".png"},
	drawtype = "mesh",
	mesh = "myfurniture_chair.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.125, -0.375, 0.375, 0, 0.375},
			{-0.375, -0.5, 0.25, -0.25, 0.5, 0.375},
			{0.25, -0.5, -0.375, 0.375, -0.125, -0.25},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, -0.125, -0.25},
			{-0.375, 0.375, 0.25, 0.375, 0.5, 0.375},
			}
		},
})
--Arm Chair
core.register_node("myfurniture:armchair", {
	description = "Arm Chair",
	tiles = {"wool_dark_grey.png"},
	drawtype = "mesh",
	mesh = "myfurniture_armchair.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.25, 0.5},
			{0.375, -0.5, -0.5, 0.5, 0.25, 0.5},
			{-0.5, 0, 0.375, 0.5, 0.5, 0.5},
			}
		},
})
--Bookshelf
core.register_node("myfurniture:"..wtype.."_bookshelf", {
	description = wdesc.." Bookshelf",
	tiles = {wimg..".png"},
	drawtype = "mesh",
	mesh = "myfurniture_bookshelf.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0, -0.4375, 0.5, 0.5},
			{-0.5, -0.5, 0.4375, 0.5, 0.5, 0.5},
			{0.4375, -0.5, 0, 0.5, 0.5, 0.5},
			{-0.5, 0.4375, 0, 0.5, 0.5, 0.5},
			{-0.5, 0, 0, 0.5, 0.0625, 0.5},
			{-0.5, -0.4375, 0, 0.5, -0.375, 0.5},
			}
		},
})
--Bookshelf Top
core.register_node("myfurniture:"..wtype.."_bookshelf_top", {
	description = wdesc.." Bookshelf Top",
	tiles = {wimg..".png"},
	drawtype = "mesh",
	mesh = "myfurniture_bookshelf_top.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0, -0.4375, 0.5, 0.5},
			{-0.5, -0.5, 0.4375, 0.5, 0.5, 0.5},
			{0.4375, -0.5, 0, 0.5, 0.5, 0.5},
			{-0.5, 0.4375, 0, 0.5, 0.5, 0.5},
			{-0.5, 0, 0, 0.5, 0.0625, 0.5},
			}
		},
})
--Cabinet
core.register_node("myfurniture:"..wtype.."_cabinet", {
	description = wdesc.." Cabinet",
	tiles = {wimg..".png"},
	drawtype = "mesh",
	mesh = "myfurniture_cabinet.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
			}
		},
})
--Desk
core.register_node("myfurniture:"..wtype.."_desk", {
	description = wdesc.." Desk",
	tiles = {wimg..".png"},
	drawtype = "mesh",
	mesh = "myfurniture_desk.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, -0.4375, 0.5, 0.5},
			{-0.5, 0.25, 0.4375, 0.5, 0.5, 0.5},
			{0.4375, -0.5, -0.5, 0.5, 0.5, 0.5},
			{-0.5, 0.4375, -0.5, 0.5, 0.5, 0.5},
			{-0.5, 0.25, -0.5, 0.5, 0.3125, 0.5},
			}
		},
})
--End Table
core.register_node("myfurniture:"..wtype.."_end_table", {
	description = wdesc.." End Table",
	tiles = {wimg..".png"},
	drawtype = "mesh",
	mesh = "myfurniture_coffee_table.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.125, -0.5, 0.5, 0, 0.5},
			{-0.5, -0.5, 0.375, -0.375, -0.125, 0.5},
			{0.375, -0.5, -0.5, 0.5, -0.125, -0.375},
			{0.375, -0.5, 0.375, 0.5, -0.125, 0.5},
			{-0.5, -0.5, -0.5, -0.375, -0.125, -0.375},
			}
		},
})
--Sofa Right
core.register_node("myfurniture:sofa_right", {
	description = "Sofa - Right",
	tiles = {"wool_dark_grey.png"},
	drawtype = "mesh",
	mesh = "myfurniture_sofa_right.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			{-0.5, 0, 0.375, 0.5, 0.5, 0.5},
			{0.375, -0.5, -0.5, 0.5, 0.25, 0.5},
			}
		},
})
--Sofa Left
core.register_node("myfurniture:sofa_left", {
	description = "Sofa - Left",
	tiles = {"wool_dark_grey.png"},
	drawtype = "mesh",
	mesh = "myfurniture_sofa_left.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.25, 0.5},
			{-0.5, 0, 0.375, 0.5, 0.5, 0.5},
			}
		},
})
--Sofa Middle
core.register_node("myfurniture:sofa_middle", {
	description = "Sofa - Middle",
	tiles = {"wool_dark_grey.png"},
	drawtype = "mesh",
	mesh = "myfurniture_sofa_middle.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			{-0.5, 0, 0.375, 0.5, 0.5, 0.5},
			}
		},
})
--Sofa Corner
core.register_node("myfurniture:sofa_corner", {
	description = "Sofa - Middle",
	tiles = {"wool_dark_grey.png"},
	drawtype = "mesh",
	mesh = "myfurniture_sofa_corner.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			{-0.5, 0, 0.375, 0.5, 0.5, 0.5},
			}
		},
})
--Stool
core.register_node("myfurniture:"..wtype.."_stool", {
	description = wdesc.." Stool",
	tiles = {wimg..".png"},
	drawtype = "mesh",
	mesh = "myfurniture_stool.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.375, 0.375, -0.375, 0.375, 0.5, 0.375},
			{-0.375, -0.5, 0.25, -0.25, 0.375, 0.375},
			{0.25, -0.5, -0.375, 0.375, 0.375, -0.25},
			{0.25, -0.5, 0.25, 0.375, 0.375, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.375, -0.25},
			}
		},
})
--TV Stand
core.register_node("myfurniture:"..wtype.."_tv_stand", {
	description = wdesc.." TV Stand",
	tiles = {wimg..".png"},
	drawtype = "mesh",
	mesh = "myfurniture_tv_stand.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0, -0.4375, 0, 0.5},
			{0.4375, -0.5, 0, 0.5, 0.0625, 0.5},
			{-0.5, -0.375, 0, 0.5, -0.3125, 0.5},
			{-0.5, 0, 0, 0.5, 0.0625, 0.5},
			}
		},
})

--Kitchen Cabinet
core.register_node("myfurniture:"..wtype.."_kitchen_cabinet", {
	description = wdesc.." Kitchen Cabinet",
	tiles = {
			"myfurniture_kitchen_cabinet_top_"..wimg..".png",
			wimg..".png",
			wimg..".png",
			wimg..".png",
			wimg..".png",
			wimg..".png^[transformR90^myfurniture_kitchen_cabinet_tint.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.3125, -0.5, -0.0625, 0.375, -0.4375},
			{0.0625, -0.3125, -0.5, 0.4375, 0.375, -0.4375},
			{-0.5, -0.5, -0.4375, 0.5, 0.5, 0.5},
		}
	},
	on_construct = function(pos)
        local meta = core.get_meta(pos)
        meta:set_string("infotext", "Kitchen Cabinet")
        meta:set_string("owner", "")
        local inv = meta:get_inventory()
        inv:set_size("main", 9*7)
    end,

    can_dig = function(pos,player)

		local meta = core.env:get_meta({x=pos.x,y=pos.y+1,z=pos.z});
		local inv = meta:get_inventory()
		if not inv:is_empty("ingot") then
			return false
		elseif not inv:is_empty("res") then
			return false
		end
        local meta = core.get_meta(pos);
        local inv = meta:get_inventory()

        return inv:is_empty("main")
    end,
    allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
        local meta = core.get_meta(pos)

        return count
    end,
    allow_metadata_inventory_put = function(pos, listname, index, stack, player)
        local meta = core.get_meta(pos)
        return stack:get_count()
    end,
    allow_metadata_inventory_take = function(pos, listname, index, stack, player)
        local meta = core.get_meta(pos)
        return stack:get_count()
    end,

    on_rightclick = function(pos, node, clicker)
        local meta = core.get_meta(pos)
            core.show_formspec(
                clicker:get_player_name(),
                "myfurniture:"..wtype.."_kitchen_cabinet",
                core.get_myfurniture_formspec1(pos)
            )
    end,
})
--Kitchen Upper Cabinet
core.register_node("myfurniture:"..wtype.."_kitchen_upper_cabinet", {
	description = wdesc.." Kitchen Upper Cabinet",
	tiles = {
			wimg..".png",
			wimg..".png",
			wimg..".png",
			wimg..".png",
			wimg..".png",
			wimg..".png^[transformR90^myfurniture_kitchen_cabinet_tint.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.3125, 0, -0.0625, 0.375, 0.0625},
			{0.0625, -0.3125, 0, 0.4375, 0.375, 0.0625},
			{-0.5, -0.5, 0.0625, 0.5, 0.5, 0.5},
		}
	},
		on_construct = function(pos)
        local meta = core.get_meta(pos)
        meta:set_string("infotext", "Kitchen Cabinet")
        meta:set_string("owner", "")
        local inv = meta:get_inventory()
        inv:set_size("main", 9*7)
    end,

    can_dig = function(pos,player)

	local meta = core.get_meta({x=pos.x,y=pos.y+1,z=pos.z});
	local inv = meta:get_inventory()
	if not inv:is_empty("ingot") then
		return false
	elseif not inv:is_empty("res") then
		return false
	end
	


        local meta = core.get_meta(pos);
        local inv = meta:get_inventory()

        return inv:is_empty("main")
	


    end,
    allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
        local meta = core.get_meta(pos)

        return count
    end,
    allow_metadata_inventory_put = function(pos, listname, index, stack, player)
        local meta = core.get_meta(pos)
        return stack:get_count()
    end,
    allow_metadata_inventory_take = function(pos, listname, index, stack, player)
        local meta = core.get_meta(pos)
        return stack:get_count()
    end,

    on_rightclick = function(pos, node, clicker)
        local meta = core.get_meta(pos)
            core.show_formspec(
                clicker:get_player_name(),
                "myfurniture:"..wtype.."_kitchen_cabinet",
                core.get_myfurniture_formspec2(pos)
            )
    end,
})
--Kitchen Corner Cabinet
core.register_node("myfurniture:"..wtype.."_kitchen_corner_cabinet", {
	description = wdesc.." Kitchen Upper Corner Cabinet",
	tiles = {
			"myfurniture_dishwasher_top.png",
			wimg..".png",
			wimg..".png",
			wimg..".png",
			wimg..".png",
			wimg..".png",
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
})
--Kitchen Upper Corner Cabinet
core.register_node("myfurniture:"..wtype.."_kitchen_upper_corner_cabinet", {
	description = wdesc.." Kitchen Upper Corner Cabinet",
	tiles = {
			wimg..".png",
			wimg..".png",
			wimg..".png^[transformR90^myfurniture_kitchen_cabinet_tint.png",
			wimg..".png",
			wimg..".png",
			wimg..".png^[transformR90^myfurniture_kitchen_cabinet_tint.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.3125, -0.4375, 0, 0.375, -0.0625},
			{0.0625, -0.3125, 0, 0.4375, 0.375, 0.0625},
			{-0.5, -0.5, 0.0625, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.0625, 0.5, 0.5},
		}
	},
		on_construct = function(pos)
        local meta = core.get_meta(pos)
        meta:set_string("infotext", "Kitchen Cabinet")
        meta:set_string("owner", "")
        local inv = meta:get_inventory()
        inv:set_size("main", 9*7)
    end,

    can_dig = function(pos,player)

	local meta = core.env:get_meta({x=pos.x,y=pos.y+1,z=pos.z});
	local inv = meta:get_inventory()
	if not inv:is_empty("ingot") then
		return false
	elseif not inv:is_empty("res") then
		return false
	end
        local meta = core.get_meta(pos);
        local inv = meta:get_inventory()
        return inv:is_empty("main")
    end,
    allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
        local meta = core.get_meta(pos)

        return count
    end,
    allow_metadata_inventory_put = function(pos, listname, index, stack, player)
        local meta = core.get_meta(pos)
        return stack:get_count()
    end,
    allow_metadata_inventory_take = function(pos, listname, index, stack, player)
        local meta = core.get_meta(pos)
        return stack:get_count()
    end,

    on_rightclick = function(pos, node, clicker)
        local meta = core.get_meta(pos)
            core.show_formspec(
                clicker:get_player_name(),
                "myfurniture:"..wtype.."_kitchen_cabinet",
                core.get_myfurniture_formspec3(pos)
            )
    end,

})

--Pictures
core.register_node("myfurniture:picture1", {
	description = "Picture",
	tiles = {
			"myfurniture_pictures.png",
			"myfurniture_pictures.png",
			"myfurniture_pictures.png",
			"myfurniture_pictures.png",
			"myfurniture_pictures.png",
			"myfurniture_picture1.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.4375, 0.5, 0.5, 0.5},
			{0.4375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, 0.375, -0.4375, 0.5, 0.5},
			{-0.5, -0.5, 0.375, 0.5, -0.4375, 0.5},
			{-0.5, 0.4375, 0.375, 0.5, 0.5, 0.5},
		}
	}
})
core.register_node("myfurniture:picture2", {
	description = "Picture",
	tiles = {
			"myfurniture_pictures.png",
			"myfurniture_pictures.png",
			"myfurniture_pictures.png",
			"myfurniture_pictures.png",
			"myfurniture_pictures.png",
			"myfurniture_picture2.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.4375, 0.5, 0.125, 0.5},
			{0.4375, -0.5, 0.375, 0.5, 0.125, 0.5},
			{-0.5, -0.5, 0.375, -0.4375, 0.125, 0.5},
			{-0.5, -0.5, 0.375, 0.5, -0.4375, 0.5},
			{-0.5, 0.0625, 0.375, 0.5, 0.125, 0.5},
		}
	}
})
core.register_node("myfurniture:picture3", {
	description = "Picture",
	tiles = {
			"myfurniture_pictures.png",
			"myfurniture_pictures.png",
			"myfurniture_pictures.png",
			"myfurniture_pictures.png",
			"myfurniture_pictures.png",
			"myfurniture_picture3.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, 0.4375, 0.5, 0.5, 0.5},
			{0.4375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.0625, -0.5, 0.375, 0, 0.5, 0.5},
			{-0.0625, -0.5, 0.375, 0.5, -0.4375, 0.5},
			{-0.0625, 0.4375, 0.375, 0.5, 0.5, 0.5},
		}
	}
})
core.register_node("myfurniture:picture4", {
	description = "Picture",
	tiles = {
			"myfurniture_pictures.png",
			"myfurniture_pictures.png",
			"myfurniture_pictures.png",
			"myfurniture_pictures.png",
			"myfurniture_pictures.png",
			"myfurniture_picture4.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, 0.4375, 0.25, 0.0625, 0.5},
			{0.1875, -0.5, 0.375, 0.25, 0, 0.5},
			{-0.25, -0.5, 0.375, -0.1875, 0.0625, 0.5},
			{-0.25, -0.5, 0.375, 0.25, -0.4375, 0.5},
			{-0.25, 0, 0.375, 0.25, 0.0625, 0.5},
		}
	}
})
--Chest Of Drawers
core.register_node("myfurniture:"..wtype.."_chest_of_drawers", {
	description = wdesc.." Chest of Drawers",
	tiles = {
			wimg..".png",
			},
	drawtype = "mesh",
	mesh = "myfurniture_chest_of_drawers.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, 0, -0.25, 0.125, 0.5},
			{-0.375, -0.375, -0.125, 0.375, -0.125, -0.0625},
			{-0.5, -0.5, -0.0625, 0.5, 0.5, 0.5},
			{-0.375, -0.0625, -0.125, 0.375, 0.1875, -0.0625},
			{-0.375, 0.25, -0.125, 0.375, 0.4375, -0.0625},
		}
	},
		on_construct = function(pos)
        local meta = core.get_meta(pos)
        meta:set_string("infotext", "Chest Of Drawers")
        meta:set_string("owner", "")
        local inv = meta:get_inventory()
        inv:set_size("main", 9*7)
    end,

    can_dig = function(pos,player)

	local meta = core.get_meta({x=pos.x,y=pos.y+1,z=pos.z});
	local inv = meta:get_inventory()
	if not inv:is_empty("ingot") then
		return false
	elseif not inv:is_empty("res") then
		return false
	end
	


        local meta = core.get_meta(pos);
        local inv = meta:get_inventory()

        return inv:is_empty("main")
	


    end,
    allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
        local meta = core.get_meta(pos)

        return count
    end,
    allow_metadata_inventory_put = function(pos, listname, index, stack, player)
        local meta = core.get_meta(pos)
        return stack:get_count()
    end,
    allow_metadata_inventory_take = function(pos, listname, index, stack, player)
        local meta = core.get_meta(pos)
        return stack:get_count()
    end,

    on_rightclick = function(pos, node, clicker)
        local meta = core.get_meta(pos)
            core.show_formspec(
                clicker:get_player_name(),
                "myfurniture:"..wtype.."_chest_of_drawers",
                core.get_myfurniture_formspec4(pos)
            )
    end,
})
--Bench
core.register_node("myfurniture:"..wtype.."_bench", {
	description = wdesc.." Bench",
	tiles = {
			wimg..".png",
			},
	drawtype = "mesh",
	mesh = "myfurniture_bench.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, 0, -0.25, -0.125, 0.5},
			{0.25, -0.5, 0, 0.375, -0.125, 0.5},
			{-0.5, 0, 0, 0.5, -0.125, 0.5},
		}
	}
})
--Bench
core.register_node("myfurniture:"..wtype.."_shelf", {
	description = wdesc.." Shelf",
	tiles = {
			wimg..".png",
			},
	drawtype = "mesh",
	mesh = "myfurniture_shelf.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.375, 0, 0.5, 0.5, 0.5},
			{0.25, 0.25, 0.125, 0.375, 0.375, 0.5},
			{0.25, 0.125, 0.25, 0.375, 0.375, 0.5},
			{0.25, 0, 0.375, 0.375, 0.25, 0.5},
			{-0.375, 0.25, 0.125, -0.25, 0.375, 0.5},
			{-0.375, 0.125, 0.25, -0.25, 0.375, 0.5},
			{-0.375, 0, 0.375, -0.25, 0.25, 0.5},
		}
	}
})
end
--Vase
core.register_node("myfurniture:vase", {
	description = "Vase",
	tiles = {
			"myfurniture_vase.png",
			},
	drawtype = "mesh",
	mesh = "myfurniture_vase.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1,falling_node = 1},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, 0.125, 0.125, 0.0625, 0.375},
		}
	}
})
--Toilet
core.register_node("myfurniture:toilet", {
	description = "toilet",
	tiles = {
			"myfurniture_toilet.png",
			},
	drawtype = "mesh",
	mesh = "myfurniture_toilet_closed.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.35, -0.5, -0.5, 0.35, 0, 0.5},
			{-0.35, -0.5, 0.125, 0.35, 0.5, 0.5},
		}
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.35, -0.5, -0.5, 0.35, 0, 0.5},
			{-0.35, -0.5, 0.125, 0.35, 0.5, 0.5},
		}
	},
	on_punch = function(pos, node, puncher, pointed_thing)
		core.set_node(pos, {name = "myfurniture:toilet_open", param2 = node.param2})
	end
})
core.register_node("myfurniture:toilet_open", {
	description = "toilet",
	tiles = {
			"myfurniture_toilet.png",
			},
	drawtype = "mesh",
	mesh = "myfurniture_toilet_open.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.35, -0.5, -0.5, 0.35, 0, 0.5},
			{-0.35, -0.5, 0.125, 0.35, 0.5, 0.5},
		}
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.35, -0.5, -0.5, 0.35, 0, 0.5},
			{-0.35, -0.5, 0.125, 0.35, 0.5, 0.5},
		}
	},
	on_punch = function(pos, node, puncher, pointed_thing)
		core.set_node(pos, {name = "myfurniture:toilet", param2 = node.param2})
	end
})

--Bathroom Sink
core.register_node("myfurniture:bathroom_sink", {
	description = "Bathroom Sink",
	tiles = {
			"myfurniture_bathroom_sink.png",
			},
	drawtype = "mesh",
	mesh = "myfurniture_bathroom_sink.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.25, 0.5, 0.4, 0.5},
		}
	},
	on_punch = function(pos, node, puncher, pointed_thing)
		core.set_node(pos,{name = "myfurniture:bathroom_sink_running", param2 = node.param2})
	end,

})
--Bathroom Sink
core.register_node("myfurniture:bathroom_sink_running", {
	description = "Bathroom Sink",
	tiles = {
			"myfurniture_bathroom_sink_running.png",
			},
	drawtype = "mesh",
	mesh = "myfurniture_bathroom_sink_running.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.25, 0.5, 0.4, 0.5},
		}
	},
	on_punch = function(pos, node, puncher, pointed_thing)
		core.set_node(pos,{name = "myfurniture:bathroom_sink", param2 = node.param2})
	end,

})

-- Tub
core.register_node("myfurniture:tub", {
	description = "Tub",
	tiles = {
			"myfurniture_tub_full.png",
			},
	drawtype = "mesh",
	mesh = "myfurniture_tub.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.5, -0.45, 0.3, 0.5},
			{0.45, -0.5, 0.5, 0.5, 0.3, 0.5},
			{-0.5, -0.5, -0.5, 1.5, 0.3, -0.45},
			{-0.5, -0.5, 0.45, 1.5, 0.3, 0.5},
			{-0.5, -0.5, 0.5, 1.5, -0.49, 0.5},
		}
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.5, -0.45, 0.3, 0.5},
			{0.45, -0.5, 0.5, 0.5, 0.3, 0.5},
			{-0.5, -0.5, -0.5, 1.5, 0.3, -0.45},
			{-0.5, -0.5, 0.45, 1.5, 0.3, 0.5},
			{-0.5, -0.5, 0.5, 1.5, -0.49, 0.5},
		}
	},
	
	after_place_node = function(pos, placer)
		local dir = placer:get_look_dir()
		local right_pos = vector.new(pos)
		if math.abs(dir.x) < math.abs(dir.z) then
			right_pos.x = right_pos.x+dir.z/math.abs(dir.z)
		else
			right_pos.z = right_pos.z-dir.x/math.abs(dir.x)
		end
		local right_node = core.get_node(right_pos)
		if right_node.name ~= "air" then
    		core.chat_send_player(placer:get_player_name(),"Not enough room")
    		core.remove_node(pos)
    		return
		end
	end,
	on_punch = function(pos, node, puncher, pointed_thing)
		core.set_node(pos,{name = "myfurniture:tub_full", param2 = node.param2})
	end,
})
core.register_node("myfurniture:tub_full", {
	description = "Tub",
	tiles = {
			"myfurniture_tub_full.png",
			},
	drawtype = "mesh",
	mesh = "myfurniture_tub_full.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.5, -0.45, 0.3, 0.5},
			{0.45, -0.5, 0.5, 0.5, 0.3, 0.5},
			{-0.5, -0.5, -0.5, 1.5, 0.3, -0.45},
			{-0.5, -0.5, 0.45, 1.5, 0.3, 0.5},
			{-0.5, -0.5, 0.5, 1.5, -0.49, 0.5},
		}
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.5, -0.45, 0.3, 0.5},
			{0.45, -0.5, 0.5, 0.5, 0.3, 0.5},
			{-0.5, -0.5, -0.5, 1.5, 0.3, -0.45},
			{-0.5, -0.5, 0.45, 1.5, 0.3, 0.5},
			{-0.5, -0.5, 0.5, 1.5, -0.49, 0.5},
		}
	},
	on_punch = function(pos, node, puncher, pointed_thing)
		core.set_node(pos,{name = "myfurniture:tub", param2 = node.param2})
	end,
})

-- Med Cabinet
core.register_node("myfurniture:med_cabinet", {
	description = "Medicine Cabinet",
	tiles = {
			"myfurniture_medicine_cabinet.png",
			},
	drawtype = "mesh",
	mesh = "myfurniture_medicine_cabinet.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 0},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.3125, 0.5, 0.5, 0.5},
		}
	},
})
-- Shower Taps
core.register_node("myfurniture:shower_taps", {
	description = "Shower Taps",
	tiles = {
			"myfurniture_shower_taps_on.png",
			},
	drawtype = "mesh",
	walkable = false,
	mesh = "myfurniture_shower_taps.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 0},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.3125, 0.5, 0.5, 0.5},
		}
	},
	on_punch = function(pos, node, puncher, pointed_thing)
		core.set_node(pos,{name = "myfurniture:shower_taps_on", param2 = node.param2})
	end,
})
core.register_node("myfurniture:shower_taps_on", {
	description = "Shower Taps",
	tiles = {
			"myfurniture_shower_taps_on.png",
			},
	drawtype = "mesh",
	walkable = false,
	mesh = "myfurniture_shower_taps_on.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 0},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.3125, 0.5, 0.5, 0.5},
		}
	},
	on_punch = function(pos, node, puncher, pointed_thing)
		core.set_node(pos,{name = "myfurniture:shower_taps", param2 = node.param2})
	end,
})
-- Floor Lamp
core.register_node("myfurniture:floor_lamp", {
	description = "Floor Lamp",
	tiles = {
			"myfurniture_floor_lamp.png",
			},
	drawtype = "mesh",
	mesh = "myfurniture_floor_lamp.obj",
	light_source = 12,
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 0},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.3, -0.5, -0.3, 0.3, 1.5, 0.3},
		}
	},
})
-- Table Lamp
core.register_node("myfurniture:table_lamp", {
	description = "Table Lamp",
	tiles = {
			"myfurniture_floor_lamp.png",
			},
	drawtype = "mesh",
	mesh = "myfurniture_table_lamp.obj",
	light_source = 12,
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 0},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.3, -0.5, -0.3, 0.3, 1.5, 0.3},
		}
	},
})
-- Computer Chair
core.register_node("myfurniture:computer_chair", {
	description = "Computer Chair",
	tiles = {
			"myfurniture_computer_chair.png",
			},
	drawtype = "mesh",
	mesh = "myfurniture_computer_chair.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 0},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.3, -0.5, -0.3, 0.3, 0.5, 0.3},
		}
	},
})

function core.get_myfurniture_formspec_mail(pos)
    local spos = pos.x .. "," .. pos.y .. "," ..pos.z
    local formspec =
        "size[9,7]"..
        "list[nodemeta:".. spos .. ";main;0.5,0.5;8,2;]"..
        "list[current_player;main;0.5,3;8,4;]"
    return formspec
end
-- Mailbox
core.register_node("myfurniture:mailbox", {
	description = "Mailbox",
	tiles = {"myfurniture_mailbox.png"},
	drawtype = "mesh",
	mesh = "myfurniture_mailbox.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.25, 0.25, 0.5, 0.25},
		}
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.25, 0.25, 0.5, 0.25},
		}
	},
	on_construct = function(pos)
        local meta = core.get_meta(pos)
        meta:set_string("infotext", "Mailbox")
        meta:set_string("owner", "")
        local inv = meta:get_inventory()
        inv:set_size("main", 9*7)
    end,
    can_dig = function(pos,player)
	local meta = core.get_meta({x=pos.x,y=pos.y+1,z=pos.z});
	local inv = meta:get_inventory()
	if not inv:is_empty("ingot") then
		return false
	elseif not inv:is_empty("res") then
		return false
	end
        local meta = core.get_meta(pos);
        local inv = meta:get_inventory()
        return inv:is_empty("main")
    end,
    allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
        local meta = core.get_meta(pos)
        return count
    end,
    allow_metadata_inventory_put = function(pos, listname, index, stack, player)
        local meta = core.get_meta(pos)
        return stack:get_count()
    end,
    allow_metadata_inventory_take = function(pos, listname, index, stack, player)
        local meta = core.get_meta(pos)
        return stack:get_count()
    end,
    on_rightclick = function(pos, node, clicker)
        local meta = core.get_meta(pos)
        local timer = minetest.get_node_timer(pos)
		timer:start(7)
		minetest.swap_node(pos,{name = "myfurniture:mailbox_open", param2 = node.param2})
            core.show_formspec(
                clicker:get_player_name(),
                "myfurniture:mailbox_open",
                core.get_myfurniture_formspec_mail(pos)
            )
    end,
	on_punch = function(pos, node, puncher, pointed_thing)
	end,
})
-- Mailbox open
core.register_node("myfurniture:mailbox_open", {
	description = "Mailbox",
	tiles = {"myfurniture_mailbox.png"},
	drawtype = "mesh",
	mesh = "myfurniture_mailbox_open.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.25, 0.25, 0.5, 0.25},
		}
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.25, 0.25, 0.5, 0.25},
		}
	},
    can_dig = function(pos,player)
	local meta = core.get_meta({x=pos.x,y=pos.y+1,z=pos.z});
	local inv = meta:get_inventory()
	if not inv:is_empty("ingot") then
		return false
	elseif not inv:is_empty("res") then
		return false
	end
        local meta = core.get_meta(pos);
        local inv = meta:get_inventory()
        return inv:is_empty("main")
    end,
	on_timer = function(pos, elapsed)
		local node = core.get_node(pos)
		minetest.swap_node(pos,{name = "myfurniture:mailbox", param2 = node.param2})
	end,
})

